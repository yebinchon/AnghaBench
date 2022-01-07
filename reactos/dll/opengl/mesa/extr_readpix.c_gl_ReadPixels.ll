; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_readpix.c_gl_ReadPixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_readpix.c_gl_ReadPixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_14__ = type { i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glReadPixels\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"glReadPixels(format)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_ReadPixels(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %18 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_17__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %22 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %23 = call i32 @gl_error(%struct.TYPE_17__* %21, i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %88

24:                                               ; preds = %8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %27, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %28(%struct.TYPE_17__* %29, i32 %33)
  %35 = load i32, i32* %14, align 4
  switch i32 %35, label %73 [
    i32 136, label %36
    i32 128, label %45
    i32 135, label %54
    i32 131, label %63
    i32 134, label %63
    i32 137, label %63
    i32 140, label %63
    i32 130, label %63
    i32 138, label %63
    i32 133, label %63
    i32 132, label %63
    i32 129, label %63
    i32 139, label %63
  ]

36:                                               ; preds = %24
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 @read_index_pixels(%struct.TYPE_17__* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32* %43)
  br label %77

45:                                               ; preds = %24
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 @read_stencil_pixels(%struct.TYPE_17__* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32* %52)
  br label %77

54:                                               ; preds = %24
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @read_depth_pixels(%struct.TYPE_17__* %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32* %61)
  br label %77

63:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24, %24
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32*, i32** %16, align 8
  %72 = call i32 @read_color_pixels(%struct.TYPE_17__* %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32* %71)
  br label %77

73:                                               ; preds = %24
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %75 = load i32, i32* @GL_INVALID_ENUM, align 4
  %76 = call i32 @gl_error(%struct.TYPE_17__* %74, i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %63, %54, %45, %36
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %80, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %81(%struct.TYPE_17__* %82, i32 %86)
  br label %88

88:                                               ; preds = %77, %20
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_17__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @read_index_pixels(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @read_stencil_pixels(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @read_depth_pixels(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @read_color_pixels(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
