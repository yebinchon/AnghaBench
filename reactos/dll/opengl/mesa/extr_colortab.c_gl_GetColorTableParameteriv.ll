; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_colortab.c_gl_GetColorTableParameteriv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_colortab.c_gl_GetColorTableParameteriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.gl_texture_object*, %struct.gl_texture_object* }
%struct.gl_texture_object = type { i32, i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"glGetColorTableParameter\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"glGetColorTableParameter(target)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetColorTableParameteriv(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.gl_texture_object*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_7__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %16 = call i32 @gl_error(%struct.TYPE_7__* %14, i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %69

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %29 [
    i32 129, label %19
    i32 128, label %24
  ]

19:                                               ; preds = %17
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.gl_texture_object*, %struct.gl_texture_object** %22, align 8
  store %struct.gl_texture_object* %23, %struct.gl_texture_object** %9, align 8
  br label %33

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.gl_texture_object*, %struct.gl_texture_object** %27, align 8
  store %struct.gl_texture_object* %28, %struct.gl_texture_object** %9, align 8
  br label %33

29:                                               ; preds = %17
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = load i32, i32* @GL_INVALID_ENUM, align 4
  %32 = call i32 @gl_error(%struct.TYPE_7__* %30, i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %69

33:                                               ; preds = %24, %19
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %65 [
    i32 135, label %35
    i32 130, label %44
    i32 131, label %53
    i32 134, label %55
    i32 136, label %57
    i32 137, label %59
    i32 132, label %61
    i32 133, label %63
  ]

35:                                               ; preds = %33
  %36 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %37 = icmp ne %struct.gl_texture_object* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %40 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %35
  br label %69

44:                                               ; preds = %33
  %45 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %46 = icmp ne %struct.gl_texture_object* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %49 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %44
  br label %69

53:                                               ; preds = %33
  %54 = load i32*, i32** %8, align 8
  store i32 8, i32* %54, align 4
  br label %69

55:                                               ; preds = %33
  %56 = load i32*, i32** %8, align 8
  store i32 8, i32* %56, align 4
  br label %69

57:                                               ; preds = %33
  %58 = load i32*, i32** %8, align 8
  store i32 8, i32* %58, align 4
  br label %69

59:                                               ; preds = %33
  %60 = load i32*, i32** %8, align 8
  store i32 8, i32* %60, align 4
  br label %69

61:                                               ; preds = %33
  %62 = load i32*, i32** %8, align 8
  store i32 8, i32* %62, align 4
  br label %69

63:                                               ; preds = %33
  %64 = load i32*, i32** %8, align 8
  store i32 8, i32* %64, align 4
  br label %69

65:                                               ; preds = %33
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = load i32, i32* @GL_INVALID_ENUM, align 4
  %68 = call i32 @gl_error(%struct.TYPE_7__* %66, i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %13, %29, %65, %63, %61, %59, %57, %55, %53, %52, %43
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
