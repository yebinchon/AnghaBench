; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_HWB_Diff.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_HWB_Diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, float, float }

@HWB_UNDEFINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, i32, i32, i32, i32, i32)* @HWB_Diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @HWB_Diff(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 8
  %16 = alloca %struct.TYPE_3__, align 8
  %17 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @SETUP_RGB(i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @SETUP_RGB(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @RGB_to_HWB(i32 %28, %struct.TYPE_3__* %15)
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @RGB_to_HWB(i32 %30, %struct.TYPE_3__* %16)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HWB_UNDEFINED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HWB_UNDEFINED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %6
  store float 0.000000e+00, float* %17, align 4
  br label %55

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %44, %46
  %48 = call float @fabsf(i64 %47)
  store float %48, float* %17, align 4
  %49 = load float, float* %17, align 4
  %50 = fcmp ogt float %49, 3.000000e+00
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load float, float* %17, align 4
  %53 = fsub float 6.000000e+00, %52
  store float %53, float* %17, align 4
  br label %54

54:                                               ; preds = %51, %42
  br label %55

55:                                               ; preds = %54, %41
  %56 = load float, float* %17, align 4
  %57 = load float, float* %17, align 4
  %58 = fmul float %56, %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %60 = load float, float* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %62 = load float, float* %61, align 8
  %63 = fsub float %60, %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %65 = load float, float* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %67 = load float, float* %66, align 8
  %68 = fsub float %65, %67
  %69 = fmul float %63, %68
  %70 = fadd float %58, %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %72 = load float, float* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %74 = load float, float* %73, align 4
  %75 = fsub float %72, %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %77 = load float, float* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %79 = load float, float* %78, align 4
  %80 = fsub float %77, %79
  %81 = fmul float %75, %80
  %82 = fadd float %70, %81
  store float %82, float* %17, align 4
  %83 = load float, float* %17, align 4
  ret float %83
}

declare dso_local i32 @SETUP_RGB(i32, i32, i32, i32) #1

declare dso_local i32 @RGB_to_HWB(i32, %struct.TYPE_3__*) #1

declare dso_local float @fabsf(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
