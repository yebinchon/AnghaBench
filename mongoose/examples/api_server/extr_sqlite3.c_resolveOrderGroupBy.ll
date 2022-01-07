; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_resolveOrderGroupBy.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_resolveOrderGroupBy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*)* @resolveOrderGroupBy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolveOrderGroupBy(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_16__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ExprList_item*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %18 = icmp eq %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %134

20:                                               ; preds = %4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %14, align 8
  store i32 0, i32* %10, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load %struct.ExprList_item*, %struct.ExprList_item** %30, align 8
  store %struct.ExprList_item* %31, %struct.ExprList_item** %13, align 8
  br label %32

32:                                               ; preds = %123, %20
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %128

38:                                               ; preds = %32
  %39 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %40 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %16, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @resolveAsName(i32* %42, %struct.TYPE_12__* %45, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %56 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %123

57:                                               ; preds = %38
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 @sqlite3ExprSkipCollate(i32* %58)
  %60 = call i64 @sqlite3ExprIsInteger(i32 %59, i32* %12)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %66, 65535
  br i1 %67, label %68, label %75

68:                                               ; preds = %65, %62
  %69 = load i32*, i32** %14, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @resolveOutOfRangeError(i32* %69, i8* %70, i32 %72, i32 %73)
  store i32 1, i32* %5, align 4
  br label %134

75:                                               ; preds = %65
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %81 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %123

82:                                               ; preds = %57
  %83 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %84 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_15__* %85, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  br label %134

90:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %119, %90
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %92, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %91
  %100 = load i32*, i32** %16, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @sqlite3ExprCompare(i32* %100, i32 %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %99
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  %116 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %117 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %113, %99
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %91

122:                                              ; preds = %91
  br label %123

123:                                              ; preds = %122, %75, %50
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %127 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %126, i32 1
  store %struct.ExprList_item* %127, %struct.ExprList_item** %13, align 8
  br label %32

128:                                              ; preds = %32
  %129 = load i32*, i32** %14, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @sqlite3ResolveOrderGroupBy(i32* %129, %struct.TYPE_14__* %130, %struct.TYPE_16__* %131, i8* %132)
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %128, %89, %68, %19
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @resolveAsName(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i64 @sqlite3ExprIsInteger(i32, i32*) #1

declare dso_local i32 @sqlite3ExprSkipCollate(i32*) #1

declare dso_local i32 @resolveOutOfRangeError(i32*, i8*, i32, i32) #1

declare dso_local i64 @sqlite3ResolveExprNames(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @sqlite3ExprCompare(i32*, i32) #1

declare dso_local i32 @sqlite3ResolveOrderGroupBy(i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
