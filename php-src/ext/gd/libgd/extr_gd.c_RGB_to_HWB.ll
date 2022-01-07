; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_RGB_to_HWB.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_RGB_to_HWB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float }

@HWB_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (<2 x float>, float, i32*)* @RGB_to_HWB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @RGB_to_HWB(<2 x float> %0, float %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %6, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %16, align 4
  %17 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %6, i32 0, i32 1
  store float %1, float* %17, align 4
  %18 = bitcast %struct.TYPE_3__* %5 to i8*
  %19 = bitcast { <2 x float>, float }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  store i32* %2, i32** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %21 = load float, float* %20, align 4
  store float %21, float* %8, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %23 = load float, float* %22, align 4
  store float %23, float* %9, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %25 = load float, float* %24, align 4
  store float %25, float* %10, align 4
  %26 = load float, float* %8, align 4
  %27 = load float, float* %9, align 4
  %28 = load float, float* %10, align 4
  %29 = call float @MIN3(float %26, float %27, float %28)
  store float %29, float* %11, align 4
  %30 = load float, float* %8, align 4
  %31 = load float, float* %9, align 4
  %32 = load float, float* %10, align 4
  %33 = call float @MAX3(float %30, float %31, float %32)
  store float %33, float* %12, align 4
  %34 = load float, float* %12, align 4
  %35 = fsub float 1.000000e+00, %34
  store float %35, float* %13, align 4
  %36 = load float, float* %12, align 4
  %37 = load float, float* %11, align 4
  %38 = fcmp oeq float %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load i32, i32* @HWB_UNDEFINED, align 4
  %41 = load float, float* %11, align 4
  %42 = load float, float* %13, align 4
  %43 = call i32 @RETURN_HWB(i32 %40, float %41, float %42)
  br label %44

44:                                               ; preds = %39, %3
  %45 = load float, float* %8, align 4
  %46 = load float, float* %11, align 4
  %47 = fcmp oeq float %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load float, float* %9, align 4
  %50 = load float, float* %10, align 4
  %51 = fsub float %49, %50
  br label %66

52:                                               ; preds = %44
  %53 = load float, float* %9, align 4
  %54 = load float, float* %11, align 4
  %55 = fcmp oeq float %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load float, float* %10, align 4
  %58 = load float, float* %8, align 4
  %59 = fsub float %57, %58
  br label %64

60:                                               ; preds = %52
  %61 = load float, float* %8, align 4
  %62 = load float, float* %9, align 4
  %63 = fsub float %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi float [ %59, %56 ], [ %63, %60 ]
  br label %66

66:                                               ; preds = %64, %48
  %67 = phi float [ %51, %48 ], [ %65, %64 ]
  store float %67, float* %14, align 4
  %68 = load float, float* %8, align 4
  %69 = load float, float* %11, align 4
  %70 = fcmp oeq float %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %78

72:                                               ; preds = %66
  %73 = load float, float* %9, align 4
  %74 = load float, float* %11, align 4
  %75 = fcmp oeq float %73, %74
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 5, i32 1
  br label %78

78:                                               ; preds = %72, %71
  %79 = phi i32 [ 3, %71 ], [ %77, %72 ]
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sitofp i32 %80 to float
  %82 = load float, float* %14, align 4
  %83 = load float, float* %12, align 4
  %84 = load float, float* %11, align 4
  %85 = fsub float %83, %84
  %86 = fdiv float %82, %85
  %87 = fsub float %81, %86
  %88 = fptosi float %87 to i32
  %89 = load float, float* %11, align 4
  %90 = load float, float* %13, align 4
  %91 = call i32 @RETURN_HWB(i32 %88, float %89, float %90)
  %92 = load i32*, i32** %4, align 8
  ret i32* %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @MIN3(float, float, float) #2

declare dso_local float @MAX3(float, float, float) #2

declare dso_local i32 @RETURN_HWB(i32, float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
