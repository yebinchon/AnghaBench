; ModuleID = '/home/carl/AnghaBench/mozjpeg/simd/loongson/extr_jcsample-mmi.c_jsimd_h2v2_downsample_mmi.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/simd/loongson/extr_jcsample-mmi.c_jsimd_h2v2_downsample_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCTSIZE = common dso_local global i32 0, align 4
@BYTE_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsimd_h2v2_downsample_mmi(i32 %0, i32 %1, i32 %2, i32 %3, i32** %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32** %5, i32*** %12, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @DCTSIZE, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %17, align 4
  store double 0.000000e+00, double* %27, align 8
  %32 = load i32**, i32*** %11, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %17, align 4
  %36 = mul nsw i32 %35, 2
  %37 = call i32 @expand_right_edge(i32** %32, i32 %33, i32 %34, i32 %36)
  store i32 131073, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call double @_mm_set1_pi32(i32 %38)
  store double %39, double* %28, align 8
  %40 = load double, double* %27, align 8
  %41 = load double, double* %27, align 8
  %42 = call double @_mm_cmpeq_pi16(double %40, double %41)
  store double %42, double* %27, align 8
  %43 = load double, double* %27, align 8
  %44 = load i32, i32* @BYTE_BIT, align 4
  %45 = call double @_mm_srli_pi16(double %43, i32 %44)
  store double %45, double* %27, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %162, %6
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %167

50:                                               ; preds = %46
  %51 = load i32**, i32*** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %18, align 8
  %56 = load i32**, i32*** %11, align 8
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %56, i64 %59
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %19, align 8
  %62 = load i32**, i32*** %12, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %20, align 8
  %67 = load i32, i32* %17, align 4
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %152, %50
  %69 = load i32, i32* %15, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %161

71:                                               ; preds = %68
  %72 = load i32*, i32** %18, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = bitcast i32* %73 to double*
  %75 = call double @_mm_load_si64(double* %74)
  store double %75, double* %21, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = bitcast i32* %77 to double*
  %79 = call double @_mm_load_si64(double* %78)
  store double %79, double* %22, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  %82 = bitcast i32* %81 to double*
  %83 = call double @_mm_load_si64(double* %82)
  store double %83, double* %23, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  %86 = bitcast i32* %85 to double*
  %87 = call double @_mm_load_si64(double* %86)
  store double %87, double* %24, align 8
  %88 = load double, double* %21, align 8
  store double %88, double* %25, align 8
  %89 = load double, double* %22, align 8
  store double %89, double* %26, align 8
  %90 = load double, double* %21, align 8
  %91 = load double, double* %27, align 8
  %92 = call double @_mm_and_si64(double %90, double %91)
  store double %92, double* %21, align 8
  %93 = load double, double* %25, align 8
  %94 = load i32, i32* @BYTE_BIT, align 4
  %95 = call double @_mm_srli_pi16(double %93, i32 %94)
  store double %95, double* %25, align 8
  %96 = load double, double* %22, align 8
  %97 = load double, double* %27, align 8
  %98 = call double @_mm_and_si64(double %96, double %97)
  store double %98, double* %22, align 8
  %99 = load double, double* %26, align 8
  %100 = load i32, i32* @BYTE_BIT, align 4
  %101 = call double @_mm_srli_pi16(double %99, i32 %100)
  store double %101, double* %26, align 8
  %102 = load double, double* %21, align 8
  %103 = load double, double* %25, align 8
  %104 = call double @_mm_add_pi16(double %102, double %103)
  store double %104, double* %21, align 8
  %105 = load double, double* %22, align 8
  %106 = load double, double* %26, align 8
  %107 = call double @_mm_add_pi16(double %105, double %106)
  store double %107, double* %22, align 8
  %108 = load double, double* %23, align 8
  store double %108, double* %25, align 8
  %109 = load double, double* %24, align 8
  store double %109, double* %26, align 8
  %110 = load double, double* %23, align 8
  %111 = load double, double* %27, align 8
  %112 = call double @_mm_and_si64(double %110, double %111)
  store double %112, double* %23, align 8
  %113 = load double, double* %25, align 8
  %114 = load i32, i32* @BYTE_BIT, align 4
  %115 = call double @_mm_srli_pi16(double %113, i32 %114)
  store double %115, double* %25, align 8
  %116 = load double, double* %24, align 8
  %117 = load double, double* %27, align 8
  %118 = call double @_mm_and_si64(double %116, double %117)
  store double %118, double* %24, align 8
  %119 = load double, double* %26, align 8
  %120 = load i32, i32* @BYTE_BIT, align 4
  %121 = call double @_mm_srli_pi16(double %119, i32 %120)
  store double %121, double* %26, align 8
  %122 = load double, double* %23, align 8
  %123 = load double, double* %25, align 8
  %124 = call double @_mm_add_pi16(double %122, double %123)
  store double %124, double* %23, align 8
  %125 = load double, double* %24, align 8
  %126 = load double, double* %26, align 8
  %127 = call double @_mm_add_pi16(double %125, double %126)
  store double %127, double* %24, align 8
  %128 = load double, double* %21, align 8
  %129 = load double, double* %22, align 8
  %130 = call double @_mm_add_pi16(double %128, double %129)
  store double %130, double* %21, align 8
  %131 = load double, double* %23, align 8
  %132 = load double, double* %24, align 8
  %133 = call double @_mm_add_pi16(double %131, double %132)
  store double %133, double* %23, align 8
  %134 = load double, double* %21, align 8
  %135 = load double, double* %28, align 8
  %136 = call double @_mm_add_pi16(double %134, double %135)
  store double %136, double* %21, align 8
  %137 = load double, double* %23, align 8
  %138 = load double, double* %28, align 8
  %139 = call double @_mm_add_pi16(double %137, double %138)
  store double %139, double* %23, align 8
  %140 = load double, double* %21, align 8
  %141 = call double @_mm_srli_pi16(double %140, i32 2)
  store double %141, double* %21, align 8
  %142 = load double, double* %23, align 8
  %143 = call double @_mm_srli_pi16(double %142, i32 2)
  store double %143, double* %23, align 8
  %144 = load double, double* %21, align 8
  %145 = load double, double* %23, align 8
  %146 = call double @_mm_packs_pu16(double %144, double %145)
  store double %146, double* %21, align 8
  %147 = load i32*, i32** %20, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = bitcast i32* %148 to double*
  %150 = load double, double* %21, align 8
  %151 = call i32 @_mm_store_si64(double* %149, double %150)
  br label %152

152:                                              ; preds = %71
  %153 = load i32, i32* %15, align 4
  %154 = sub nsw i32 %153, 8
  store i32 %154, i32* %15, align 4
  %155 = load i32*, i32** %18, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 16
  store i32* %156, i32** %18, align 8
  %157 = load i32*, i32** %19, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 16
  store i32* %158, i32** %19, align 8
  %159 = load i32*, i32** %20, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 8
  store i32* %160, i32** %20, align 8
  br label %68

161:                                              ; preds = %68
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 2
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %46

167:                                              ; preds = %46
  ret void
}

declare dso_local i32 @expand_right_edge(i32**, i32, i32, i32) #1

declare dso_local double @_mm_set1_pi32(i32) #1

declare dso_local double @_mm_cmpeq_pi16(double, double) #1

declare dso_local double @_mm_srli_pi16(double, i32) #1

declare dso_local double @_mm_load_si64(double*) #1

declare dso_local double @_mm_and_si64(double, double) #1

declare dso_local double @_mm_add_pi16(double, double) #1

declare dso_local double @_mm_packs_pu16(double, double) #1

declare dso_local i32 @_mm_store_si64(double*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
