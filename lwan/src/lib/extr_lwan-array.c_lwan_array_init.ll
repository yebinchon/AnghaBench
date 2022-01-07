; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-array.c_lwan_array_init.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-array.c_lwan_array_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_array = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwan_array_init(%struct.lwan_array* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lwan_array*, align 8
  store %struct.lwan_array* %0, %struct.lwan_array** %3, align 8
  %4 = load %struct.lwan_array*, %struct.lwan_array** %3, align 8
  %5 = icmp ne %struct.lwan_array* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @UNLIKELY(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.lwan_array*, %struct.lwan_array** %3, align 8
  %15 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.lwan_array*, %struct.lwan_array** %3, align 8
  %17 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @UNLIKELY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
