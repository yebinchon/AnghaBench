; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_r32g32_float.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_r32g32_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32, i32, i32)* @convert_r32g32_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_r32g32_float(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %26

26:                                               ; preds = %89, %9
  %27 = load i32, i32* %21, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %26
  store i32 0, i32* %20, align 4
  br label %31

31:                                               ; preds = %85, %30
  %32 = load i32, i32* %20, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %31
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %21, align 4
  %38 = load i32, i32* %13, align 4
  %39 = mul i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %12, align 4
  %44 = mul i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = bitcast i32* %46 to float*
  store float* %47, float** %22, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %15, align 4
  %51 = mul i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %14, align 4
  %56 = mul i32 %54, %55
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = bitcast i32* %58 to float*
  store float* %59, float** %23, align 8
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %81, %35
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load float*, float** %22, align 8
  %66 = getelementptr inbounds float, float* %65, i32 1
  store float* %66, float** %22, align 8
  %67 = load float, float* %65, align 4
  store float %67, float* %24, align 4
  %68 = load float*, float** %22, align 8
  %69 = getelementptr inbounds float, float* %68, i32 1
  store float* %69, float** %22, align 8
  %70 = load float, float* %68, align 4
  store float %70, float* %25, align 4
  %71 = load float, float* %24, align 4
  %72 = load float*, float** %23, align 8
  %73 = getelementptr inbounds float, float* %72, i64 0
  store float %71, float* %73, align 4
  %74 = load float, float* %25, align 4
  %75 = load float*, float** %23, align 8
  %76 = getelementptr inbounds float, float* %75, i64 1
  store float %74, float* %76, align 4
  %77 = load float*, float** %23, align 8
  %78 = getelementptr inbounds float, float* %77, i64 2
  store float 1.000000e+00, float* %78, align 4
  %79 = load float*, float** %23, align 8
  %80 = getelementptr inbounds float, float* %79, i64 3
  store float* %80, float** %23, align 8
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %19, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %19, align 4
  br label %60

84:                                               ; preds = %60
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %20, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %20, align 4
  br label %31

88:                                               ; preds = %31
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %21, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %21, align 4
  br label %26

92:                                               ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
