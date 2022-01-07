; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_allocateCursor.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_allocateCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__**, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }

@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_11__*, i32, i32, i32, i32)* @allocateCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @allocateCursor(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %22
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  %24 = call i32 @ROUND8(i32 24)
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = call i32 (...) @sqlite3BtreeCursorSize()
  br label %30

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = add nsw i32 %24, %31
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 2, %34
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = add i64 %33, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = icmp ne %struct.TYPE_10__* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %30
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %59, i64 %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = call i32 @sqlite3VdbeFreeCursor(%struct.TYPE_11__* %56, %struct.TYPE_10__* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %67, i64 %69
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %70, align 8
  br label %71

71:                                               ; preds = %55, %30
  %72 = load i64, i64* @SQLITE_OK, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i64 @sqlite3VdbeMemGrow(%struct.TYPE_12__* %73, i32 %74, i32 0)
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %129

77:                                               ; preds = %71
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %13, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %84, i64 %86
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %87, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %89 = call i32 @memset(%struct.TYPE_10__* %88, i32 0, i32 24)
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %77
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @ROUND8(i32 24)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  br label %107

107:                                              ; preds = %98, %77
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @ROUND8(i32 24)
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %8, align 4
  %117 = mul nsw i32 2, %116
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = add i64 %115, %119
  %121 = getelementptr inbounds i32, i32* %113, i64 %120
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  store i32* %121, i32** %123, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @sqlite3BtreeCursorZero(i32* %126)
  br label %128

128:                                              ; preds = %110, %107
  br label %129

129:                                              ; preds = %128, %71
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  ret %struct.TYPE_10__* %130
}

declare dso_local i32 @ROUND8(i32) #1

declare dso_local i32 @sqlite3BtreeCursorSize(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeFreeCursor(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i64 @sqlite3VdbeMemGrow(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @sqlite3BtreeCursorZero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
