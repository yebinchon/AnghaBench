; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_gl_userclip_point.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_gl_userclip_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float**, i64* }

@MAX_CLIP_PLANES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gl_userclip_point(%struct.TYPE_5__* %0, float* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store float* %1, float** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %82, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @MAX_CLIP_PLANES, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %85

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %81

21:                                               ; preds = %12
  %22 = load float*, float** %5, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = load float, float* %23, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load float**, float*** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds float*, float** %28, i64 %29
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 0
  %33 = load float, float* %32, align 4
  %34 = fmul float %24, %33
  %35 = load float*, float** %5, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  %37 = load float, float* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load float**, float*** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds float*, float** %41, i64 %42
  %44 = load float*, float** %43, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = load float, float* %45, align 4
  %47 = fmul float %37, %46
  %48 = fadd float %34, %47
  %49 = load float*, float** %5, align 8
  %50 = getelementptr inbounds float, float* %49, i64 2
  %51 = load float, float* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load float**, float*** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds float*, float** %55, i64 %56
  %58 = load float*, float** %57, align 8
  %59 = getelementptr inbounds float, float* %58, i64 2
  %60 = load float, float* %59, align 4
  %61 = fmul float %51, %60
  %62 = fadd float %48, %61
  %63 = load float*, float** %5, align 8
  %64 = getelementptr inbounds float, float* %63, i64 3
  %65 = load float, float* %64, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load float**, float*** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds float*, float** %69, i64 %70
  %72 = load float*, float** %71, align 8
  %73 = getelementptr inbounds float, float* %72, i64 3
  %74 = load float, float* %73, align 4
  %75 = fmul float %65, %74
  %76 = fadd float %62, %75
  store float %76, float* %7, align 4
  %77 = load float, float* %7, align 4
  %78 = fcmp olt float %77, 0.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %21
  store i64 0, i64* %3, align 8
  br label %86

80:                                               ; preds = %21
  br label %81

81:                                               ; preds = %80, %12
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %6, align 8
  br label %8

85:                                               ; preds = %8
  store i64 1, i64* %3, align 8
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i64, i64* %3, align 8
  ret i64 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
