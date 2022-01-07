; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_float_24_to_32.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_float_24_to_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global float 0.000000e+00, align 4
@NAN = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32)* @float_24_to_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @float_24_to_32(i32 %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 8388608
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, float -1.000000e+00, float 1.000000e+00
  store float %11, float* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 7864320
  %14 = lshr i32 %13, 19
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %5, align 2
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 524287
  store i32 %17, i32* %6, align 4
  %18 = load i16, i16* %5, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load float, float* %4, align 4
  %26 = fmul float %25, 0.000000e+00
  store float %26, float* %2, align 4
  br label %60

27:                                               ; preds = %21
  %28 = load float, float* %4, align 4
  %29 = call float @powf(i32 2, float -6.000000e+00)
  %30 = fmul float %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = uitofp i32 %31 to float
  %33 = fdiv float %32, 5.242880e+05
  %34 = fmul float %30, %33
  store float %34, float* %2, align 4
  br label %60

35:                                               ; preds = %1
  %36 = load i16, i16* %5, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp slt i32 %37, 15
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load float, float* %4, align 4
  %41 = load i16, i16* %5, align 2
  %42 = uitofp i16 %41 to float
  %43 = fsub float %42, 7.000000e+00
  %44 = call float @powf(i32 2, float %43)
  %45 = fmul float %40, %44
  %46 = load i32, i32* %6, align 4
  %47 = uitofp i32 %46 to float
  %48 = fdiv float %47, 5.242880e+05
  %49 = fadd float 1.000000e+00, %48
  %50 = fmul float %45, %49
  store float %50, float* %2, align 4
  br label %60

51:                                               ; preds = %35
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load float, float* %4, align 4
  %56 = load float, float* @INFINITY, align 4
  %57 = fmul float %55, %56
  store float %57, float* %2, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load float, float* @NAN, align 4
  store float %59, float* %2, align 4
  br label %60

60:                                               ; preds = %58, %54, %39, %27, %24
  %61 = load float, float* %2, align 4
  ret float %61
}

declare dso_local float @powf(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
