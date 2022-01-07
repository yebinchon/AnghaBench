; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_drivemap.c_DriveMapIsValidDriveString.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_drivemap.c_DriveMapIsValidDriveString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DriveMapIsValidDriveString(float* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float*, align 8
  %4 = alloca i64, align 8
  store float* %0, float** %3, align 8
  %5 = load float*, float** %3, align 8
  %6 = call i64 @strlen(float* %5)
  %7 = icmp ult i64 %6, 3
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = load float*, float** %3, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = fcmp une float %11, 1.020000e+02
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load float*, float** %3, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  %16 = load float, float* %15, align 4
  %17 = fcmp une float %16, 7.000000e+01
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load float*, float** %3, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  %21 = load float, float* %20, align 4
  %22 = fcmp une float %21, 1.040000e+02
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load float*, float** %3, align 8
  %25 = getelementptr inbounds float, float* %24, i64 0
  %26 = load float, float* %25, align 4
  %27 = fcmp une float %26, 7.200000e+01
  br i1 %27, label %38, label %28

28:                                               ; preds = %23, %18, %13, %8
  %29 = load float*, float** %3, align 8
  %30 = getelementptr inbounds float, float* %29, i64 1
  %31 = load float, float* %30, align 4
  %32 = fcmp une float %31, 1.000000e+02
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load float*, float** %3, align 8
  %35 = getelementptr inbounds float, float* %34, i64 1
  %36 = load float, float* %35, align 4
  %37 = fcmp une float %36, 6.800000e+01
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %23, %1
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %2, align 4
  br label %78

40:                                               ; preds = %33, %28
  store i64 2, i64* %4, align 8
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i64, i64* %4, align 8
  %43 = load float*, float** %3, align 8
  %44 = call i64 @strlen(float* %43)
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load float*, float** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds float, float* %47, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fcmp olt float %50, 4.800000e+01
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load float*, float** %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds float, float* %53, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fcmp ogt float %56, 5.700000e+01
  br i1 %57, label %58, label %60

58:                                               ; preds = %52, %46
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %2, align 4
  br label %78

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %4, align 8
  br label %41

64:                                               ; preds = %41
  %65 = load float*, float** %3, align 8
  %66 = getelementptr inbounds float, float* %65, i64 2
  %67 = call i32 @atoi(float* %66)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load float*, float** %3, align 8
  %71 = getelementptr inbounds float, float* %70, i64 2
  %72 = call i32 @atoi(float* %71)
  %73 = icmp sgt i32 %72, 255
  br i1 %73, label %74, label %76

74:                                               ; preds = %69, %64
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %2, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %74, %58, %38
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @strlen(float*) #1

declare dso_local i32 @atoi(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
