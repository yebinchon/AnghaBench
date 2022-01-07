; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_technique_end.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_technique_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.gs_effect* }
%struct.gs_effect = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32* }
%struct.TYPE_6__ = type { i64, %struct.gs_effect_param* }
%struct.gs_effect_param = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_technique_end(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.gs_effect*, align 8
  %4 = alloca %struct.gs_effect_param*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gs_effect_param*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.gs_effect*, %struct.gs_effect** %12, align 8
  store %struct.gs_effect* %13, %struct.gs_effect** %3, align 8
  %14 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  %15 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.gs_effect_param*, %struct.gs_effect_param** %16, align 8
  store %struct.gs_effect_param* %17, %struct.gs_effect_param** %4, align 8
  %18 = call i32 @gs_load_vertexshader(i32* null)
  %19 = call i32 @gs_load_pixelshader(i32* null)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.gs_effect*, %struct.gs_effect** %21, align 8
  %23 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.gs_effect*, %struct.gs_effect** %25, align 8
  %27 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %55, %10
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  %33 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load %struct.gs_effect_param*, %struct.gs_effect_param** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %38, i64 %39
  store %struct.gs_effect_param* %40, %struct.gs_effect_param** %6, align 8
  %41 = load %struct.gs_effect_param*, %struct.gs_effect_param** %6, align 8
  %42 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @da_free(i32 %43)
  %45 = load %struct.gs_effect_param*, %struct.gs_effect_param** %6, align 8
  %46 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.gs_effect_param*, %struct.gs_effect_param** %6, align 8
  %48 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load %struct.gs_effect_param*, %struct.gs_effect_param** %6, align 8
  %53 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %51, %37
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %30

58:                                               ; preds = %9, %30
  ret void
}

declare dso_local i32 @gs_load_vertexshader(i32*) #1

declare dso_local i32 @gs_load_pixelshader(i32*) #1

declare dso_local i32 @da_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
