; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_PushMatrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_PushMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i32, i32*, i32**, i32, i32*, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glPushMatrix\00", align 1
@MAX_MODELVIEW_STACK_DEPTH = common dso_local global i32 0, align 4
@GL_STACK_OVERFLOW = common dso_local global i32 0, align 4
@MAX_PROJECTION_STACK_DEPTH = common dso_local global i64 0, align 8
@MAX_TEXTURE_STACK_DEPTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Bad matrix mode in gl_PushMatrix\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_PushMatrix(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_8__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %9 = call i32 @gl_error(%struct.TYPE_8__* %7, i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %141

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 10
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %138 [
    i32 130, label %15
    i32 129, label %44
    i32 128, label %111
  ]

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @MAX_MODELVIEW_STACK_DEPTH, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = load i32, i32* @GL_STACK_OVERFLOW, align 4
  %26 = call i32 @gl_error(%struct.TYPE_8__* %24, i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %141

27:                                               ; preds = %15
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 9
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @MEMCPY(i32 %35, i32 %38, i32 64)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %141

44:                                               ; preds = %10
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MAX_PROJECTION_STACK_DEPTH, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = load i32, i32* @GL_STACK_OVERFLOW, align 4
  %53 = call i32 @gl_error(%struct.TYPE_8__* %51, i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %141

54:                                               ; preds = %44
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 7
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @MEMCPY(i32 %62, i32 %65, i32 64)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = load i32**, i32*** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %76, 1
  %78 = getelementptr inbounds i32*, i32** %73, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  %84 = load i32**, i32*** %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32*, i32** %84, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %81, i32* %90, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  %93 = load i32**, i32*** %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %96, 1
  %98 = getelementptr inbounds i32*, i32** %93, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 5
  %104 = load i32**, i32*** %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32*, i32** %104, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %101, i32* %110, align 4
  br label %141

111:                                              ; preds = %10
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MAX_TEXTURE_STACK_DEPTH, align 8
  %116 = icmp uge i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %119 = load i32, i32* @GL_STACK_OVERFLOW, align 4
  %120 = call i32 @gl_error(%struct.TYPE_8__* %118, i32 %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %141

121:                                              ; preds = %111
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @MEMCPY(i32 %129, i32 %132, i32 64)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %135, align 8
  br label %141

138:                                              ; preds = %10
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %140 = call i32 @gl_problem(%struct.TYPE_8__* %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %6, %23, %50, %117, %138, %121, %54, %27
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_8__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @MEMCPY(i32, i32, i32) #1

declare dso_local i32 @gl_problem(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
