; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_map_fixp_color.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_map_fixp_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmat = type { double*, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_map_fixp_color(%struct.mp_cmat* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.mp_cmat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mp_cmat* %0, %struct.mp_cmat** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %74, %5
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %77

18:                                               ; preds = %15
  %19 = load %struct.mp_cmat*, %struct.mp_cmat** %6, align 8
  %20 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %19, i32 0, i32 0
  %21 = load double*, double** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  store double %25, double* %12, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %54, %18
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load %struct.mp_cmat*, %struct.mp_cmat** %6, align 8
  %31 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %40, %45
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 1, %47
  %49 = sub nsw i32 %48, 1
  %50 = sdiv i32 %46, %49
  %51 = sitofp i32 %50 to double
  %52 = load double, double* %12, align 8
  %53 = fadd double %52, %51
  store double %53, double* %12, align 8
  br label %54

54:                                               ; preds = %29
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %26

57:                                               ; preds = %26
  %58 = load double, double* %12, align 8
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 1, %59
  %61 = sub nsw i32 %60, 1
  %62 = sitofp i32 %61 to double
  %63 = fmul double %58, %62
  %64 = call i32 @lrint(double %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 1, %66
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @av_clip(i32 %65, i32 0, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %57
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %15

77:                                               ; preds = %15
  ret void
}

declare dso_local i32 @lrint(double) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
