; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.h_buf_safe_bidir.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.h_buf_safe_bidir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, i32)* @buf_safe_bidir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_safe_bidir(%struct.buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.buffer* %0, %struct.buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.buffer*, %struct.buffer** %4, align 8
  %8 = call i64 @buf_valid(%struct.buffer* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @buf_size_valid_signed(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.buffer*, %struct.buffer** %4, align 8
  %16 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.buffer*, %struct.buffer** %4, align 8
  %24 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load %struct.buffer*, %struct.buffer** %4, align 8
  %30 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %28, %31
  br label %33

33:                                               ; preds = %22, %14
  %34 = phi i1 [ false, %14 ], [ %32, %22 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @buf_valid(%struct.buffer*) #1

declare dso_local i64 @buf_size_valid_signed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
