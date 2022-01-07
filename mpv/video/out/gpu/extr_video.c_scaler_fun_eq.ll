; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_scaler_fun_eq.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_scaler_fun_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_fun = type { i64, i64, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scaler_fun*, %struct.scaler_fun*)* @scaler_fun_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scaler_fun_eq(%struct.scaler_fun* byval(%struct.scaler_fun) align 8 %0, %struct.scaler_fun* byval(%struct.scaler_fun) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %0, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %1, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %1, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %0, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %7
  store i32 0, i32* %3, align 4
  br label %72

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %0, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %1, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %0, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %1, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @strcmp(i64 %30, i64 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %28, %24
  %36 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %0, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %1, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @double_seq(i32 %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %0, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %1, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @double_seq(i32 %50, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %0, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %1, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %0, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.scaler_fun, %struct.scaler_fun* %1, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %65, %67
  br label %69

69:                                               ; preds = %63, %57, %46, %35, %28
  %70 = phi i1 [ false, %57 ], [ false, %46 ], [ false, %35 ], [ false, %28 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i64 @double_seq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
