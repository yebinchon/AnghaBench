; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_PixelTransferf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_PixelTransferf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"glPixelTransfer\00", align 1
@GL_TRUE = common dso_local global i8* null, align 8
@GL_FALSE = common dso_local global i8* null, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"glPixelTransfer(pname)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_PixelTransferf(%struct.TYPE_8__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_8__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %13 = call i32 @gl_error(%struct.TYPE_8__* %11, i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %107

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %100 [
    i32 131, label %16
    i32 130, label %28
    i32 132, label %40
    i32 133, label %45
    i32 128, label %50
    i32 129, label %55
    i32 134, label %60
    i32 135, label %65
    i32 138, label %70
    i32 139, label %75
    i32 140, label %80
    i32 141, label %85
    i32 136, label %90
    i32 137, label %95
  ]

16:                                               ; preds = %14
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8*, i8** @GL_TRUE, align 8
  br label %23

21:                                               ; preds = %16
  %22 = load i8*, i8** @GL_FALSE, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i8* [ %20, %19 ], [ %22, %21 ]
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 13
  store i8* %24, i8** %27, align 8
  br label %104

28:                                               ; preds = %14
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i8*, i8** @GL_TRUE, align 8
  br label %35

33:                                               ; preds = %28
  %34 = load i8*, i8** @GL_FALSE, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i8* [ %32, %31 ], [ %34, %33 ]
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 12
  store i8* %36, i8** %39, align 8
  br label %104

40:                                               ; preds = %14
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 11
  store i8* %41, i8** %44, align 8
  br label %104

45:                                               ; preds = %14
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 10
  store i8* %46, i8** %49, align 8
  br label %104

50:                                               ; preds = %14
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 9
  store i8* %51, i8** %54, align 8
  br label %104

55:                                               ; preds = %14
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 8
  store i8* %56, i8** %59, align 8
  br label %104

60:                                               ; preds = %14
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 7
  store i8* %61, i8** %64, align 8
  br label %104

65:                                               ; preds = %14
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 6
  store i8* %66, i8** %69, align 8
  br label %104

70:                                               ; preds = %14
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 5
  store i8* %71, i8** %74, align 8
  br label %104

75:                                               ; preds = %14
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  store i8* %76, i8** %79, align 8
  br label %104

80:                                               ; preds = %14
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  store i8* %81, i8** %84, align 8
  br label %104

85:                                               ; preds = %14
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  br label %104

90:                                               ; preds = %14
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  br label %104

95:                                               ; preds = %14
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  br label %104

100:                                              ; preds = %14
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = load i32, i32* @GL_INVALID_ENUM, align 4
  %103 = call i32 @gl_error(%struct.TYPE_8__* %101, i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %107

104:                                              ; preds = %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %23
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = call i32 @update_drawpixels_state(%struct.TYPE_8__* %105)
  br label %107

107:                                              ; preds = %104, %100, %10
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_8__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @update_drawpixels_state(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
