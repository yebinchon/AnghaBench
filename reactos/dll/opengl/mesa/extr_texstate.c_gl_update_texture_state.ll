; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_update_texture_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_update_texture_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i8*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { %struct.gl_texture_object* }
%struct.gl_texture_object = type { i8*, %struct.gl_texture_object* }

@TEXTURE_2D = common dso_local global i32 0, align 4
@TEXTURE_1D = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_update_texture_state(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.gl_texture_object*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TEXTURE_2D, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i32* %15, i32** %18, align 8
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TEXTURE_1D, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32* %31, i32** %34, align 8
  br label %39

35:                                               ; preds = %19
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %35, %27
  br label %40

40:                                               ; preds = %39, %11
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %78

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.gl_texture_object*, %struct.gl_texture_object** %50, align 8
  store %struct.gl_texture_object* %51, %struct.gl_texture_object** %3, align 8
  br label %52

52:                                               ; preds = %69, %46
  %53 = load %struct.gl_texture_object*, %struct.gl_texture_object** %3, align 8
  %54 = icmp ne %struct.gl_texture_object* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load %struct.gl_texture_object*, %struct.gl_texture_object** %3, align 8
  %57 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.gl_texture_object*, %struct.gl_texture_object** %3, align 8
  %62 = call i32 @gl_test_texture_object_completeness(%struct.gl_texture_object* %61)
  %63 = load %struct.gl_texture_object*, %struct.gl_texture_object** %3, align 8
  %64 = call i32 @gl_set_texture_sampler(%struct.gl_texture_object* %63)
  %65 = load i8*, i8** @GL_FALSE, align 8
  %66 = load %struct.gl_texture_object*, %struct.gl_texture_object** %3, align 8
  %67 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %60, %55
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.gl_texture_object*, %struct.gl_texture_object** %3, align 8
  %71 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %70, i32 0, i32 1
  %72 = load %struct.gl_texture_object*, %struct.gl_texture_object** %71, align 8
  store %struct.gl_texture_object* %72, %struct.gl_texture_object** %3, align 8
  br label %52

73:                                               ; preds = %52
  %74 = load i8*, i8** @GL_FALSE, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  br label %78

78:                                               ; preds = %73, %40
  ret void
}

declare dso_local i32 @gl_test_texture_object_completeness(%struct.gl_texture_object*) #1

declare dso_local i32 @gl_set_texture_sampler(%struct.gl_texture_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
