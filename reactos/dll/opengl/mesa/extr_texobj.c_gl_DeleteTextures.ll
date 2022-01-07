; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_DeleteTextures.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_DeleteTextures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.gl_texture_object*, %struct.gl_texture_object*, i32 }
%struct.gl_texture_object = type { i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, %struct.gl_texture_object*)* }
%struct.TYPE_9__ = type { %struct.gl_texture_object*, %struct.gl_texture_object* }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"glAreTexturesResident\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_DeleteTextures(%struct.TYPE_11__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gl_texture_object*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_11__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %15 = call i32 @gl_error(%struct.TYPE_11__* %13, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %125

16:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %122, %16
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %125

21:                                               ; preds = %17
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %121

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @HashLookup(i32 %32, i64 %36)
  %38 = inttoptr i64 %37 to %struct.gl_texture_object*
  store %struct.gl_texture_object* %38, %struct.gl_texture_object** %8, align 8
  %39 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %40 = icmp ne %struct.gl_texture_object* %39, null
  br i1 %40, label %41, label %120

41:                                               ; preds = %27
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.gl_texture_object*, %struct.gl_texture_object** %44, align 8
  %46 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %47 = icmp eq %struct.gl_texture_object* %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %41
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.gl_texture_object*, %struct.gl_texture_object** %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store %struct.gl_texture_object* %53, %struct.gl_texture_object** %56, align 8
  %57 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %58 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %62 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  br label %94

67:                                               ; preds = %41
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.gl_texture_object*, %struct.gl_texture_object** %70, align 8
  %72 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %73 = icmp eq %struct.gl_texture_object* %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %67
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.gl_texture_object*, %struct.gl_texture_object** %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store %struct.gl_texture_object* %79, %struct.gl_texture_object** %82, align 8
  %83 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %84 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %88 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  br label %93

93:                                               ; preds = %74, %67
  br label %94

94:                                               ; preds = %93, %48
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_11__*, %struct.gl_texture_object*)*, i32 (%struct.TYPE_11__*, %struct.gl_texture_object*)** %97, align 8
  %99 = icmp ne i32 (%struct.TYPE_11__*, %struct.gl_texture_object*)* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32 (%struct.TYPE_11__*, %struct.gl_texture_object*)*, i32 (%struct.TYPE_11__*, %struct.gl_texture_object*)** %103, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %107 = call i32 %104(%struct.TYPE_11__* %105, %struct.gl_texture_object* %106)
  br label %108

108:                                              ; preds = %100, %94
  %109 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %110 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load %struct.gl_texture_object*, %struct.gl_texture_object** %8, align 8
  %118 = call i32 @gl_free_texture_object(%struct.TYPE_12__* %116, %struct.gl_texture_object* %117)
  br label %119

119:                                              ; preds = %113, %108
  br label %120

120:                                              ; preds = %119, %27
  br label %121

121:                                              ; preds = %120, %21
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %7, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %7, align 8
  br label %17

125:                                              ; preds = %12, %17
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_11__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i64 @HashLookup(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @gl_free_texture_object(%struct.TYPE_12__*, %struct.gl_texture_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
