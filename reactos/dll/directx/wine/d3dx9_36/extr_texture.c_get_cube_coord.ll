; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_texture.c_get_cube_coord.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_texture.c_get_cube_coord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Unexpected coordinate value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, i32, i32, i32)* @get_cube_coord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @get_cube_coord(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %35 [
    i32 132, label %11
    i32 131, label %15
    i32 130, label %21
    i32 129, label %25
    i32 128, label %31
    i32 133, label %32
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = uitofp i32 %12 to float
  %14 = fadd float %13, 5.000000e-01
  store float %14, float* %5, align 4
  br label %37

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub i32 %16, %17
  %19 = uitofp i32 %18 to float
  %20 = fsub float %19, 5.000000e-01
  store float %20, float* %5, align 4
  br label %37

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = uitofp i32 %22 to float
  %24 = fadd float %23, 5.000000e-01
  store float %24, float* %5, align 4
  br label %37

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub i32 %26, %27
  %29 = uitofp i32 %28 to float
  %30 = fsub float %29, 5.000000e-01
  store float %30, float* %5, align 4
  br label %37

31:                                               ; preds = %4
  store float 0.000000e+00, float* %5, align 4
  br label %37

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = uitofp i32 %33 to float
  store float %34, float* %5, align 4
  br label %37

35:                                               ; preds = %4
  %36 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store float 0.000000e+00, float* %5, align 4
  br label %37

37:                                               ; preds = %35, %32, %31, %25, %21, %15, %11
  %38 = load float, float* %5, align 4
  ret float %38
}

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
