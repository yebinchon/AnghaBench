; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_color.c_TIFFCIELabToXYZ.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_color.c_TIFFCIELabToXYZ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIFFCIELabToXYZ(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3, float* %4, float* %5, float* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store float* %6, float** %14, align 8
  %18 = load i64, i64* %9, align 8
  %19 = sitofp i64 %18 to float
  %20 = fmul float %19, 1.000000e+02
  %21 = fdiv float %20, 2.550000e+02
  store float %21, float* %15, align 4
  %22 = load float, float* %15, align 4
  %23 = fcmp olt float %22, 0x4021B645A0000000
  br i1 %23, label %24, label %40

24:                                               ; preds = %7
  %25 = load float, float* %15, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = fmul float %25, %28
  %30 = fdiv float %29, 0x408C3A5600000000
  %31 = load float*, float** %13, align 8
  store float %30, float* %31, align 4
  %32 = load float*, float** %13, align 8
  %33 = load float, float* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = fdiv float %33, %36
  %38 = fmul float 0x401F25E360000000, %37
  %39 = fadd float %38, 0x3FC1A7B960000000
  store float %39, float* %16, align 4
  br label %54

40:                                               ; preds = %7
  %41 = load float, float* %15, align 4
  %42 = fadd float %41, 1.600000e+01
  %43 = fdiv float %42, 1.160000e+02
  store float %43, float* %16, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 4
  %47 = load float, float* %16, align 4
  %48 = fmul float %46, %47
  %49 = load float, float* %16, align 4
  %50 = fmul float %48, %49
  %51 = load float, float* %16, align 4
  %52 = fmul float %50, %51
  %53 = load float*, float** %13, align 8
  store float %52, float* %53, align 4
  br label %54

54:                                               ; preds = %40, %24
  %55 = load i64, i64* %10, align 8
  %56 = sitofp i64 %55 to float
  %57 = fdiv float %56, 5.000000e+02
  %58 = load float, float* %16, align 4
  %59 = fadd float %57, %58
  store float %59, float* %17, align 4
  %60 = load float, float* %17, align 4
  %61 = fcmp olt float %60, 0x3FCA7BB300000000
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load float, float* %64, align 4
  %66 = load float, float* %17, align 4
  %67 = fsub float %66, 0x3FC1A7B0C0000000
  %68 = fmul float %65, %67
  %69 = fdiv float %68, 0x401F25E360000000
  %70 = load float*, float** %12, align 8
  store float %69, float* %70, align 4
  br label %82

71:                                               ; preds = %54
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = load float, float* %17, align 4
  %76 = fmul float %74, %75
  %77 = load float, float* %17, align 4
  %78 = fmul float %76, %77
  %79 = load float, float* %17, align 4
  %80 = fmul float %78, %79
  %81 = load float*, float** %12, align 8
  store float %80, float* %81, align 4
  br label %82

82:                                               ; preds = %71, %62
  %83 = load float, float* %16, align 4
  %84 = load i64, i64* %11, align 8
  %85 = sitofp i64 %84 to float
  %86 = fdiv float %85, 2.000000e+02
  %87 = fsub float %83, %86
  store float %87, float* %17, align 4
  %88 = load float, float* %17, align 4
  %89 = fcmp olt float %88, 0x3FCA7BB300000000
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load float, float* %92, align 4
  %94 = load float, float* %17, align 4
  %95 = fsub float %94, 0x3FC1A7B0C0000000
  %96 = fmul float %93, %95
  %97 = fdiv float %96, 0x401F25E360000000
  %98 = load float*, float** %14, align 8
  store float %97, float* %98, align 4
  br label %110

99:                                               ; preds = %82
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load float, float* %101, align 4
  %103 = load float, float* %17, align 4
  %104 = fmul float %102, %103
  %105 = load float, float* %17, align 4
  %106 = fmul float %104, %105
  %107 = load float, float* %17, align 4
  %108 = fmul float %106, %107
  %109 = load float*, float** %14, align 8
  store float %108, float* %109, align 4
  br label %110

110:                                              ; preds = %99, %90
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
