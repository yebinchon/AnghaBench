; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gs_shader_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gs_shader_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64, i32* }

@.str = private unnamed_addr constant [15 x i8] c"glDeleteShader\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_shader_destroy(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = icmp ne %struct.TYPE_6__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %105

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = call i32 @remove_program_references(%struct.TYPE_6__* %8)
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %25, %7
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @shader_attrib_free(i32* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %10

28:                                               ; preds = %10
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gs_samplerstate_destroy(i32 %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %29

48:                                               ; preds = %29
  store i64 0, i64* %3, align 8
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = call i32 @shader_param_free(i32* %62)
  br label %64

64:                                               ; preds = %56
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %3, align 8
  br label %49

67:                                               ; preds = %49
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @glDeleteShader(i64 %75)
  %77 = call i32 @gl_success(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = bitcast %struct.TYPE_7__* %80 to { i64, i32* }*
  %82 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %81, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @da_free(i64 %83, i32* %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = bitcast %struct.TYPE_7__* %88 to { i64, i32* }*
  %90 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %89, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @da_free(i64 %91, i32* %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = bitcast %struct.TYPE_7__* %96 to { i64, i32* }*
  %98 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %97, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @da_free(i64 %99, i32* %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %104 = call i32 @bfree(%struct.TYPE_6__* %103)
  br label %105

105:                                              ; preds = %78, %6
  ret void
}

declare dso_local i32 @remove_program_references(%struct.TYPE_6__*) #1

declare dso_local i32 @shader_attrib_free(i32*) #1

declare dso_local i32 @gs_samplerstate_destroy(i32) #1

declare dso_local i32 @shader_param_free(i32*) #1

declare dso_local i32 @glDeleteShader(i64) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @da_free(i64, i32*) #1

declare dso_local i32 @bfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
