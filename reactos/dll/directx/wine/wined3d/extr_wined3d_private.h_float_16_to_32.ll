; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_float_16_to_32.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_float_16_to_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global float 0.000000e+00, align 4
@NAN = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i16*)* @float_16_to_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @float_16_to_32(i16* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca float, align 4
  store i16* %0, i16** %3, align 8
  %8 = load i16*, i16** %3, align 8
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 32768
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %4, align 2
  %13 = load i16*, i16** %3, align 8
  %14 = load i16, i16* %13, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 31744
  %17 = lshr i32 %16, 10
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %5, align 2
  %19 = load i16*, i16** %3, align 8
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 1023
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %6, align 2
  %24 = load i16, i16* %4, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, float -1.000000e+00, float 1.000000e+00
  store float %28, float* %7, align 4
  %29 = load i16, i16* %5, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %1
  %33 = load i16, i16* %6, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load float, float* %7, align 4
  %38 = fmul float %37, 0.000000e+00
  store float %38, float* %2, align 4
  br label %73

39:                                               ; preds = %32
  %40 = load float, float* %7, align 4
  %41 = call float @powf(i32 2, float -1.400000e+01)
  %42 = fmul float %40, %41
  %43 = load i16, i16* %6, align 2
  %44 = uitofp i16 %43 to float
  %45 = fdiv float %44, 1.024000e+03
  %46 = fmul float %42, %45
  store float %46, float* %2, align 4
  br label %73

47:                                               ; preds = %1
  %48 = load i16, i16* %5, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp slt i32 %49, 31
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load float, float* %7, align 4
  %53 = load i16, i16* %5, align 2
  %54 = uitofp i16 %53 to float
  %55 = fsub float %54, 1.500000e+01
  %56 = call float @powf(i32 2, float %55)
  %57 = fmul float %52, %56
  %58 = load i16, i16* %6, align 2
  %59 = uitofp i16 %58 to float
  %60 = fdiv float %59, 1.024000e+03
  %61 = fadd float 1.000000e+00, %60
  %62 = fmul float %57, %61
  store float %62, float* %2, align 4
  br label %73

63:                                               ; preds = %47
  %64 = load i16, i16* %6, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load float, float* %7, align 4
  %69 = load float, float* @INFINITY, align 4
  %70 = fmul float %68, %69
  store float %70, float* %2, align 4
  br label %73

71:                                               ; preds = %63
  %72 = load float, float* @NAN, align 4
  store float %72, float* %2, align 4
  br label %73

73:                                               ; preds = %71, %67, %51, %39, %36
  %74 = load float, float* %2, align 4
  ret float %74
}

declare dso_local float @powf(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
