; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_list_push.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_list_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_list = type { i32 }
%struct.buffer_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_list_push(%struct.buffer_list* %0, i8* %1) #0 {
  %3 = alloca %struct.buffer_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_entry*, align 8
  store %struct.buffer_list* %0, %struct.buffer_list** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.buffer_list*, %struct.buffer_list** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, 1
  %16 = call %struct.buffer_entry* @buffer_list_push_data(%struct.buffer_list* %12, i8* %13, i64 %15)
  store %struct.buffer_entry* %16, %struct.buffer_entry** %6, align 8
  %17 = load %struct.buffer_entry*, %struct.buffer_entry** %6, align 8
  %18 = icmp ne %struct.buffer_entry* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.buffer_entry*, %struct.buffer_entry** %6, align 8
  %22 = getelementptr inbounds %struct.buffer_entry, %struct.buffer_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %9
  br label %25

25:                                               ; preds = %24, %2
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.buffer_entry* @buffer_list_push_data(%struct.buffer_list*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
