; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_normal.c___gl_projectPolygon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_normal.c___gl_projectPolygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i8*, i8*, %struct.TYPE_8__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_UNIT_X = common dso_local global i32 0, align 4
@S_UNIT_Y = common dso_local global i32 0, align 4
@w = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__gl_projectPolygon(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %1
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %47 = call i32 @ComputeNormal(%struct.TYPE_9__* %45, i32* %46)
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %44, %40, %36, %1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %6, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %7, align 8
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %57 = call i32 @LongAxis(i32* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* @S_UNIT_X, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = srem i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load i32, i32* @S_UNIT_Y, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 2
  %73 = srem i32 %72, 3
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %49
  %86 = load i32, i32* @S_UNIT_Y, align 4
  %87 = sub nsw i32 0, %86
  br label %90

88:                                               ; preds = %49
  %89 = load i32, i32* @S_UNIT_Y, align 4
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i32 [ %87, %85 ], [ %89, %88 ]
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = srem i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load i32, i32* @S_UNIT_X, align 4
  br label %108

105:                                              ; preds = %90
  %106 = load i32, i32* @S_UNIT_X, align 4
  %107 = sub nsw i32 0, %106
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi i32 [ %104, %103 ], [ %107, %105 ]
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 2
  %113 = srem i32 %112, 3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  store %struct.TYPE_8__* %118, %struct.TYPE_8__** %3, align 8
  br label %119

119:                                              ; preds = %138, %108
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = icmp ne %struct.TYPE_8__* %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %119
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = call i8* @Dot(i32* %126, i32* %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = call i8* @Dot(i32* %133, i32* %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %123
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %3, align 8
  br label %119

142:                                              ; preds = %119
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = call i32 @CheckOrientation(%struct.TYPE_9__* %146)
  br label %148

148:                                              ; preds = %145, %142
  ret void
}

declare dso_local i32 @ComputeNormal(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @LongAxis(i32*) #1

declare dso_local i8* @Dot(i32*, i32*) #1

declare dso_local i32 @CheckOrientation(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
