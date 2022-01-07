; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_map_vs_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_map_vs_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32, i32*, i32**, i32 }
%struct.priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*, i32)*, i64 (i32*, i32)*, i32* (i32*, i32)*, i32 (i32*, i32)*, i32 (i32*, i32)*, %struct.TYPE_5__* (i32*)* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_image*, %struct.priv*, i32*, i32)* @map_vs_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_vs_frame(%struct.mp_image* noalias sret %0, %struct.priv* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store %struct.priv* %1, %struct.priv** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 %3, i32* %7, align 4
  %10 = load %struct.priv*, %struct.priv** %5, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_5__* (i32*)*, %struct.TYPE_5__* (i32*)** %13, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.TYPE_5__* %14(i32* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %8, align 8
  %17 = bitcast %struct.mp_image* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mp_from_vs(i32 %20)
  %22 = call i32 @mp_image_setfmt(%struct.mp_image* %0, i32 %21)
  %23 = load %struct.priv*, %struct.priv** %5, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = load i32 (i32*, i32)*, i32 (i32*, i32)** %26, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 %27(i32* %28, i32 0)
  %30 = load %struct.priv*, %struct.priv** %5, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32 (i32*, i32)*, i32 (i32*, i32)** %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 %34(i32* %35, i32 0)
  %37 = call i32 @mp_image_set_size(%struct.mp_image* %0, i32 %29, i32 %36)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %89, %4
  %39 = load i32, i32* %9, align 4
  %40 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %0, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %92

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load %struct.priv*, %struct.priv** %5, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32* (i32*, i32)*, i32* (i32*, i32)** %50, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32* %51(i32* %52, i32 %53)
  %55 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %0, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* %54, i32** %59, align 8
  br label %75

60:                                               ; preds = %43
  %61 = load %struct.priv*, %struct.priv** %5, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64 (i32*, i32)*, i64 (i32*, i32)** %64, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i64 %65(i32* %66, i32 %67)
  %69 = inttoptr i64 %68 to i32*
  %70 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %0, i32 0, i32 2
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  store i32* %69, i32** %74, align 8
  br label %75

75:                                               ; preds = %60, %46
  %76 = load %struct.priv*, %struct.priv** %5, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (i32*, i32)*, i32 (i32*, i32)** %79, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 %80(i32* %81, i32 %82)
  %84 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %0, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %75
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %38

92:                                               ; preds = %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mp_image_setfmt(%struct.mp_image*, i32) #2

declare dso_local i32 @mp_from_vs(i32) #2

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
