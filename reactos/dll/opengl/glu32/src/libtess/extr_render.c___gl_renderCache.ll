; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_render.c___gl_renderCache.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_render.c___gl_renderCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SIGN_INCONSISTENT = common dso_local global i32 0, align 4
@GL_LINE_LOOP = common dso_local global i32 0, align 4
@GL_TRIANGLE_FAN = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gl_renderCache(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca [3 x i64], align 16
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %16
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %2, align 4
  br label %155

24:                                               ; preds = %1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  store i64 %29, i64* %30, align 16
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  store i64 %41, i64* %42, align 16
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %24
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  %52 = load i64, i64* %51, align 16
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @ComputeNormal(%struct.TYPE_5__* %55, i64* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %50, %46, %24
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %62 = load i32, i32* @TRUE, align 4
  %63 = call i32 @ComputeNormal(%struct.TYPE_5__* %60, i64* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @SIGN_INCONSISTENT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %2, align 4
  br label %155

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %2, align 4
  br label %155

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %93 [
    i32 129, label %78
    i32 130, label %78
    i32 128, label %79
    i32 131, label %85
    i32 132, label %91
  ]

78:                                               ; preds = %74, %74
  br label %93

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %2, align 4
  br label %155

84:                                               ; preds = %79
  br label %93

85:                                               ; preds = %74
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %2, align 4
  br label %155

90:                                               ; preds = %85
  br label %93

91:                                               ; preds = %74
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %2, align 4
  br label %155

93:                                               ; preds = %74, %90, %84, %78
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @GL_LINE_LOOP, align 4
  br label %111

100:                                              ; preds = %93
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 3
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @GL_TRIANGLE_FAN, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @GL_TRIANGLES, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  br label %111

111:                                              ; preds = %109, %98
  %112 = phi i32 [ %99, %98 ], [ %110, %109 ]
  %113 = call i32 @CALL_BEGIN_OR_BEGIN_DATA(i32 %112)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @CALL_VERTEX_OR_VERTEX_DATA(i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %111
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 1
  store %struct.TYPE_6__* %122, %struct.TYPE_6__** %6, align 8
  br label %123

123:                                              ; preds = %132, %120
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = icmp ult %struct.TYPE_6__* %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @CALL_VERTEX_OR_VERTEX_DATA(i32 %130)
  br label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 1
  store %struct.TYPE_6__* %134, %struct.TYPE_6__** %6, align 8
  br label %123

135:                                              ; preds = %123
  br label %152

136:                                              ; preds = %111
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 -1
  store %struct.TYPE_6__* %138, %struct.TYPE_6__** %6, align 8
  br label %139

139:                                              ; preds = %148, %136
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = icmp ugt %struct.TYPE_6__* %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @CALL_VERTEX_OR_VERTEX_DATA(i32 %146)
  br label %148

148:                                              ; preds = %143
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 -1
  store %struct.TYPE_6__* %150, %struct.TYPE_6__** %6, align 8
  br label %139

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %151, %135
  %153 = call i32 (...) @CALL_END_OR_END_DATA()
  %154 = load i32, i32* @TRUE, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %152, %91, %88, %82, %72, %67, %22
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @ComputeNormal(%struct.TYPE_5__*, i64*, i32) #1

declare dso_local i32 @CALL_BEGIN_OR_BEGIN_DATA(i32) #1

declare dso_local i32 @CALL_VERTEX_OR_VERTEX_DATA(i32) #1

declare dso_local i32 @CALL_END_OR_END_DATA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
