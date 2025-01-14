; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.h_buf_safe.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.h_buf_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, i32)* @buf_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_safe(%struct.buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.buffer*, %struct.buffer** %3, align 8
  %6 = call i64 @buf_valid(%struct.buffer* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @buf_size_valid(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.buffer*, %struct.buffer** %3, align 8
  %14 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.buffer*, %struct.buffer** %3, align 8
  %17 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load %struct.buffer*, %struct.buffer** %3, align 8
  %24 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %22, %25
  br label %27

27:                                               ; preds = %12, %8, %2
  %28 = phi i1 [ false, %8 ], [ false, %2 ], [ %26, %12 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i64 @buf_valid(%struct.buffer*) #1

declare dso_local i64 @buf_size_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
