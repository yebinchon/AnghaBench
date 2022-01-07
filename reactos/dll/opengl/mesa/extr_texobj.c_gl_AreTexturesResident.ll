; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_AreTexturesResident.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_AreTexturesResident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.gl_texture_object = type { i32 }

@GL_TRUE = common dso_local global i32 0, align 4
@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"glAreTexturesResident\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"glAreTexturesResident(n)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"glAreTexturesResident(textures)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_AreTexturesResident(%struct.TYPE_7__* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.gl_texture_object*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @GL_TRUE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_7__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %20 = call i32 @gl_error(%struct.TYPE_7__* %18, i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @GL_FALSE, align 4
  store i32 %21, i32* %5, align 4
  br label %76

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = load i32, i32* @GL_INVALID_VALUE, align 4
  %28 = call i32 @gl_error(%struct.TYPE_7__* %26, i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @GL_FALSE, align 4
  store i32 %29, i32* %5, align 4
  br label %76

30:                                               ; preds = %22
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %71, %30
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %31
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = load i32, i32* @GL_INVALID_VALUE, align 4
  %44 = call i32 @gl_error(%struct.TYPE_7__* %42, i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @GL_FALSE, align 4
  store i32 %45, i32* %5, align 4
  br label %76

46:                                               ; preds = %35
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @HashLookup(i32 %51, i64 %55)
  %57 = inttoptr i64 %56 to %struct.gl_texture_object*
  store %struct.gl_texture_object* %57, %struct.gl_texture_object** %12, align 8
  %58 = load %struct.gl_texture_object*, %struct.gl_texture_object** %12, align 8
  %59 = icmp ne %struct.gl_texture_object* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %46
  %61 = load i32, i32* @GL_TRUE, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %61, i32* %64, align 4
  br label %70

65:                                               ; preds = %46
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = load i32, i32* @GL_INVALID_VALUE, align 4
  %68 = call i32 @gl_error(%struct.TYPE_7__* %66, i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @GL_FALSE, align 4
  store i32 %69, i32* %5, align 4
  br label %76

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %11, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %11, align 8
  br label %31

74:                                               ; preds = %31
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %65, %41, %25, %17
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i64 @HashLookup(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
