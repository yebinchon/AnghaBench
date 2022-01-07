; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_colortab.c_gl_ColorTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_colortab.c_gl_ColorTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, %struct.gl_texture_object*)* }
%struct.gl_texture_object = type { i32, i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.gl_texture_object*, %struct.gl_texture_object*, %struct.gl_texture_object*, %struct.gl_texture_object* }
%struct.gl_image = type { i32, i32, i32 }

@GL_FALSE = common dso_local global i64 0, align 8
@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"glGetBooleanv\00", align 1
@GL_TRUE = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"glColorTableEXT(target)\00", align 1
@MAX_TEXTURE_PALETTE_SIZE = common dso_local global i32 0, align 4
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"glColorTableEXT(width)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_ColorTable(%struct.TYPE_10__* %0, i32 %1, i32 %2, %struct.gl_image* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gl_image*, align 8
  %9 = alloca %struct.gl_texture_object*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.gl_image* %3, %struct.gl_image** %8, align 8
  %11 = load i64, i64* @GL_FALSE, align 8
  store i64 %11, i64* %10, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_10__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %18 = call i32 @gl_error(%struct.TYPE_10__* %16, i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %122

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %43 [
    i32 129, label %21
    i32 128, label %26
    i32 131, label %31
    i32 130, label %37
  ]

21:                                               ; preds = %19
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load %struct.gl_texture_object*, %struct.gl_texture_object** %24, align 8
  store %struct.gl_texture_object* %25, %struct.gl_texture_object** %9, align 8
  br label %47

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load %struct.gl_texture_object*, %struct.gl_texture_object** %29, align 8
  store %struct.gl_texture_object* %30, %struct.gl_texture_object** %9, align 8
  br label %47

31:                                               ; preds = %19
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.gl_texture_object*, %struct.gl_texture_object** %34, align 8
  store %struct.gl_texture_object* %35, %struct.gl_texture_object** %9, align 8
  %36 = load i64, i64* @GL_TRUE, align 8
  store i64 %36, i64* %10, align 8
  br label %47

37:                                               ; preds = %19
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.gl_texture_object*, %struct.gl_texture_object** %40, align 8
  store %struct.gl_texture_object* %41, %struct.gl_texture_object** %9, align 8
  %42 = load i64, i64* @GL_TRUE, align 8
  store i64 %42, i64* %10, align 8
  br label %47

43:                                               ; preds = %19
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load i32, i32* @GL_INVALID_ENUM, align 4
  %46 = call i32 @gl_error(%struct.TYPE_10__* %44, i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %122

47:                                               ; preds = %37, %31, %26, %21
  %48 = load %struct.gl_image*, %struct.gl_image** %8, align 8
  %49 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = load %struct.gl_image*, %struct.gl_image** %8, align 8
  %54 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MAX_TEXTURE_PALETTE_SIZE, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.gl_image*, %struct.gl_image** %8, align 8
  %60 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @power_of_two(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %58, %52, %47
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load i32, i32* @GL_INVALID_VALUE, align 4
  %67 = call i32 @gl_error(%struct.TYPE_10__* %65, i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %72 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %74 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %76 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %64
  br label %122

78:                                               ; preds = %58
  %79 = load %struct.gl_image*, %struct.gl_image** %8, align 8
  %80 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %83 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %86 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @decode_internal_format(i32 %87)
  %89 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %90 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %122, label %93

93:                                               ; preds = %78
  %94 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %95 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.gl_image*, %struct.gl_image** %8, align 8
  %98 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.gl_image*, %struct.gl_image** %8, align 8
  %101 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.gl_image*, %struct.gl_image** %8, align 8
  %104 = getelementptr inbounds %struct.gl_image, %struct.gl_image* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = call i32 @MEMCPY(i32 %96, i32 %99, i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32 (%struct.TYPE_10__*, %struct.gl_texture_object*)*, i32 (%struct.TYPE_10__*, %struct.gl_texture_object*)** %110, align 8
  %112 = icmp ne i32 (%struct.TYPE_10__*, %struct.gl_texture_object*)* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %93
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_10__*, %struct.gl_texture_object*)*, i32 (%struct.TYPE_10__*, %struct.gl_texture_object*)** %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %120 = call i32 %117(%struct.TYPE_10__* %118, %struct.gl_texture_object* %119)
  br label %121

121:                                              ; preds = %113, %93
  br label %122

122:                                              ; preds = %15, %43, %77, %121, %78
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_10__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @power_of_two(i32) #1

declare dso_local i64 @decode_internal_format(i32) #1

declare dso_local i32 @MEMCPY(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
