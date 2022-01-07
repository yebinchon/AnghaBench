; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_convert.c_convert_ieee_32_to_24.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_convert.c_convert_ieee_32_to_24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i64, i32, i32)* @convert_ieee_32_to_24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_ieee_32_to_24(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  br label %18

18:                                               ; preds = %84, %7
  %19 = load i64, i64* %12, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %92

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32(i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = bitcast i32* %15 to float*
  %27 = load float, float* %26, align 4
  store float %27, float* %16, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to float*
  store float* %29, float** %17, align 8
  %30 = load float, float* %16, align 4
  %31 = fcmp olt float %30, -1.000000e+00
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load float*, float** %17, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  store float 0.000000e+00, float* %34, align 4
  %35 = load float*, float** %17, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  store float 0.000000e+00, float* %36, align 4
  %37 = load float*, float** %17, align 8
  %38 = getelementptr inbounds float, float* %37, i64 2
  store float 1.280000e+02, float* %38, align 4
  br label %84

39:                                               ; preds = %21
  %40 = load float, float* %16, align 4
  %41 = fcmp ogt float %40, 1.000000e+00
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load float*, float** %17, align 8
  %44 = getelementptr inbounds float, float* %43, i64 0
  store float 2.550000e+02, float* %44, align 4
  %45 = load float*, float** %17, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  store float 2.550000e+02, float* %46, align 4
  %47 = load float*, float** %17, align 8
  %48 = getelementptr inbounds float, float* %47, i64 2
  store float 1.270000e+02, float* %48, align 4
  br label %83

49:                                               ; preds = %39
  %50 = load float, float* %16, align 4
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load float, float* %16, align 4
  %54 = fmul float %53, 0x4160000000000000
  %55 = load float*, float** %17, align 8
  %56 = getelementptr inbounds float, float* %55, i64 0
  store float %54, float* %56, align 4
  %57 = load float, float* %16, align 4
  %58 = fmul float %57, 3.276800e+04
  %59 = load float*, float** %17, align 8
  %60 = getelementptr inbounds float, float* %59, i64 1
  store float %58, float* %60, align 4
  %61 = load float, float* %16, align 4
  %62 = fmul float %61, 1.280000e+02
  %63 = load float*, float** %17, align 8
  %64 = getelementptr inbounds float, float* %63, i64 2
  store float %62, float* %64, align 4
  br label %82

65:                                               ; preds = %49
  %66 = load float, float* %16, align 4
  %67 = fcmp oge float %66, 0.000000e+00
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load float, float* %16, align 4
  %70 = fmul float %69, 0x4160000000000000
  %71 = load float*, float** %17, align 8
  %72 = getelementptr inbounds float, float* %71, i64 0
  store float %70, float* %72, align 4
  %73 = load float, float* %16, align 4
  %74 = fmul float %73, 3.276800e+04
  %75 = load float*, float** %17, align 8
  %76 = getelementptr inbounds float, float* %75, i64 1
  store float %74, float* %76, align 4
  %77 = load float, float* %16, align 4
  %78 = fmul float %77, 1.270000e+02
  %79 = load float*, float** %17, align 8
  %80 = getelementptr inbounds float, float* %79, i64 2
  store float %78, float* %80, align 4
  br label %81

81:                                               ; preds = %68, %65
  br label %82

82:                                               ; preds = %81, %52
  br label %83

83:                                               ; preds = %82, %42
  br label %84

84:                                               ; preds = %83, %32
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8* %88, i8** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @src_advance(i8** %8, i32 %89, i64* %12, i32* %13, i32 %90)
  br label %18

92:                                               ; preds = %18
  ret void
}

declare dso_local i32 @le32(i32) #1

declare dso_local i32 @src_advance(i8**, i32, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
