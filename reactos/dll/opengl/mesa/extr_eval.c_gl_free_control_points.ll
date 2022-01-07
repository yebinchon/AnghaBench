; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_free_control_points.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_free_control_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_2d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map, %struct.gl_1d_map }
%struct.gl_2d_map = type { i8*, i32* }
%struct.gl_1d_map = type { i8*, i32* }

@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"gl_free_control_points\00", align 1
@GL_FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_free_control_points(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gl_1d_map*, align 8
  %8 = alloca %struct.gl_2d_map*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.gl_1d_map* null, %struct.gl_1d_map** %7, align 8
  store %struct.gl_2d_map* null, %struct.gl_2d_map** %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %82 [
    i32 138, label %10
    i32 137, label %14
    i32 144, label %18
    i32 145, label %22
    i32 143, label %26
    i32 142, label %30
    i32 141, label %34
    i32 140, label %38
    i32 139, label %42
    i32 129, label %46
    i32 128, label %50
    i32 135, label %54
    i32 136, label %58
    i32 134, label %62
    i32 133, label %66
    i32 132, label %70
    i32 131, label %74
    i32 130, label %78
  ]

10:                                               ; preds = %3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 17
  store %struct.gl_1d_map* %13, %struct.gl_1d_map** %7, align 8
  br label %86

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 16
  store %struct.gl_1d_map* %17, %struct.gl_1d_map** %7, align 8
  br label %86

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 15
  store %struct.gl_1d_map* %21, %struct.gl_1d_map** %7, align 8
  br label %86

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 14
  store %struct.gl_1d_map* %25, %struct.gl_1d_map** %7, align 8
  br label %86

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 13
  store %struct.gl_1d_map* %29, %struct.gl_1d_map** %7, align 8
  br label %86

30:                                               ; preds = %3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 12
  store %struct.gl_1d_map* %33, %struct.gl_1d_map** %7, align 8
  br label %86

34:                                               ; preds = %3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 11
  store %struct.gl_1d_map* %37, %struct.gl_1d_map** %7, align 8
  br label %86

38:                                               ; preds = %3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 10
  store %struct.gl_1d_map* %41, %struct.gl_1d_map** %7, align 8
  br label %86

42:                                               ; preds = %3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 9
  store %struct.gl_1d_map* %45, %struct.gl_1d_map** %7, align 8
  br label %86

46:                                               ; preds = %3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 8
  store %struct.gl_2d_map* %49, %struct.gl_2d_map** %8, align 8
  br label %86

50:                                               ; preds = %3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 7
  store %struct.gl_2d_map* %53, %struct.gl_2d_map** %8, align 8
  br label %86

54:                                               ; preds = %3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 6
  store %struct.gl_2d_map* %57, %struct.gl_2d_map** %8, align 8
  br label %86

58:                                               ; preds = %3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 5
  store %struct.gl_2d_map* %61, %struct.gl_2d_map** %8, align 8
  br label %86

62:                                               ; preds = %3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  store %struct.gl_2d_map* %65, %struct.gl_2d_map** %8, align 8
  br label %86

66:                                               ; preds = %3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store %struct.gl_2d_map* %69, %struct.gl_2d_map** %8, align 8
  br label %86

70:                                               ; preds = %3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store %struct.gl_2d_map* %73, %struct.gl_2d_map** %8, align 8
  br label %86

74:                                               ; preds = %3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store %struct.gl_2d_map* %77, %struct.gl_2d_map** %8, align 8
  br label %86

78:                                               ; preds = %3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store %struct.gl_2d_map* %81, %struct.gl_2d_map** %8, align 8
  br label %86

82:                                               ; preds = %3
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = load i32, i32* @GL_INVALID_ENUM, align 4
  %85 = call i32 @gl_error(%struct.TYPE_6__* %83, i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %120

86:                                               ; preds = %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10
  %87 = load %struct.gl_1d_map*, %struct.gl_1d_map** %7, align 8
  %88 = icmp ne %struct.gl_1d_map* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.gl_1d_map*, %struct.gl_1d_map** %7, align 8
  %92 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i8*, i8** @GL_FALSE, align 8
  %97 = load %struct.gl_1d_map*, %struct.gl_1d_map** %7, align 8
  %98 = getelementptr inbounds %struct.gl_1d_map, %struct.gl_1d_map* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %102

99:                                               ; preds = %89
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @free(i32* %100)
  br label %102

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %86
  %104 = load %struct.gl_2d_map*, %struct.gl_2d_map** %8, align 8
  %105 = icmp ne %struct.gl_2d_map* %104, null
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load i32*, i32** %6, align 8
  %108 = load %struct.gl_2d_map*, %struct.gl_2d_map** %8, align 8
  %109 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i8*, i8** @GL_FALSE, align 8
  %114 = load %struct.gl_2d_map*, %struct.gl_2d_map** %8, align 8
  %115 = getelementptr inbounds %struct.gl_2d_map, %struct.gl_2d_map* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  br label %119

116:                                              ; preds = %106
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @free(i32* %117)
  br label %119

119:                                              ; preds = %116, %112
  br label %120

120:                                              ; preds = %82, %119, %103
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
