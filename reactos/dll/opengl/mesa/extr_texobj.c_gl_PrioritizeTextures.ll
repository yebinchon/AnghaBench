; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_PrioritizeTextures.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_PrioritizeTextures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.gl_texture_object = type { i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"glAreTexturesResident\00", align 1
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"glAreTexturesResident(n)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_PrioritizeTextures(%struct.TYPE_7__* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gl_texture_object*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_7__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %17 = call i32 @gl_error(%struct.TYPE_7__* %15, i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %63

18:                                               ; preds = %4
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = load i32, i32* @GL_INVALID_VALUE, align 4
  %24 = call i32 @gl_error(%struct.TYPE_7__* %22, i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %63

25:                                               ; preds = %18
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %60, %25
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %26
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @HashLookup(i32 %41, i64 %45)
  %47 = inttoptr i64 %46 to %struct.gl_texture_object*
  store %struct.gl_texture_object* %47, %struct.gl_texture_object** %10, align 8
  %48 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %49 = icmp ne %struct.gl_texture_object* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %36
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CLAMP(i32 %54, float 0.000000e+00, float 1.000000e+00)
  %56 = load %struct.gl_texture_object*, %struct.gl_texture_object** %10, align 8
  %57 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %36
  br label %59

59:                                               ; preds = %58, %30
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %9, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %9, align 8
  br label %26

63:                                               ; preds = %14, %21, %26
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i64 @HashLookup(i32, i64) #1

declare dso_local i32 @CLAMP(i32, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
