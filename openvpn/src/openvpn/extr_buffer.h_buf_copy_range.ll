; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.h_buf_copy_range.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.h_buf_copy_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, i32, %struct.buffer*, i32, i32)* @buf_copy_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_copy_range(%struct.buffer* %0, i32 %1, %struct.buffer* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.buffer* %0, %struct.buffer** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.buffer* %2, %struct.buffer** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %18, %19
  %21 = load %struct.buffer*, %struct.buffer** %9, align 8
  %22 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %42, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %25
  %29 = load %struct.buffer*, %struct.buffer** %7, align 8
  %30 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load %struct.buffer*, %struct.buffer** %7, align 8
  %39 = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %28, %25, %17, %14, %5
  store i32 0, i32* %6, align 4
  br label %80

43:                                               ; preds = %28
  %44 = load %struct.buffer*, %struct.buffer** %7, align 8
  %45 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.buffer*, %struct.buffer** %7, align 8
  %48 = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load %struct.buffer*, %struct.buffer** %9, align 8
  %55 = getelementptr inbounds %struct.buffer, %struct.buffer* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.buffer*, %struct.buffer** %9, align 8
  %58 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @memcpy(i64 %53, i64 %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %66, %67
  %69 = load %struct.buffer*, %struct.buffer** %7, align 8
  %70 = getelementptr inbounds %struct.buffer, %struct.buffer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %43
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %74, %75
  %77 = load %struct.buffer*, %struct.buffer** %7, align 8
  %78 = getelementptr inbounds %struct.buffer, %struct.buffer* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %73, %43
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %42
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
