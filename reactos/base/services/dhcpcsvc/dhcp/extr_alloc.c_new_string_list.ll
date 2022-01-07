; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_alloc.c_new_string_list.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_alloc.c_new_string_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @new_string_list(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.string_list*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = add i64 8, %4
  %6 = trunc i64 %5 to i32
  %7 = call %struct.string_list* @calloc(i32 1, i32 %6)
  store %struct.string_list* %7, %struct.string_list** %3, align 8
  %8 = load %struct.string_list*, %struct.string_list** %3, align 8
  %9 = icmp ne %struct.string_list* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.string_list*, %struct.string_list** %3, align 8
  %12 = bitcast %struct.string_list* %11 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 8
  %14 = load %struct.string_list*, %struct.string_list** %3, align 8
  %15 = getelementptr inbounds %struct.string_list, %struct.string_list* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.string_list*, %struct.string_list** %3, align 8
  ret %struct.string_list* %17
}

declare dso_local %struct.string_list* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
