; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_resolveOrderGroupBy.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_resolveOrderGroupBy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_21__*, i8*)* @resolveOrderGroupBy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolveOrderGroupBy(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, %struct.TYPE_21__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ExprList_item*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %19 = icmp eq %struct.TYPE_21__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %154

21:                                               ; preds = %4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %14, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load %struct.ExprList_item*, %struct.ExprList_item** %31, align 8
  store %struct.ExprList_item* %32, %struct.ExprList_item** %13, align 8
  br label %33

33:                                               ; preds = %143, %21
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %148

39:                                               ; preds = %33
  %40 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %41 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = call i32* @sqlite3ExprSkipCollate(i32* %43)
  store i32* %44, i32** %17, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 71
  br i1 %49, label %50, label %69

50:                                               ; preds = %39
  %51 = load i32*, i32** %14, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @resolveAsName(i32* %51, %struct.TYPE_15__* %54, i32* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %65 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  br label %143

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i32*, i32** %17, align 8
  %71 = call i64 @sqlite3ExprIsInteger(i32* %70, i32* %12)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %77, 65535
  br i1 %78, label %79, label %86

79:                                               ; preds = %76, %73
  %80 = load i32*, i32** %14, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @resolveOutOfRangeError(i32* %80, i8* %81, i32 %83, i32 %84)
  store i32 1, i32* %5, align 4
  br label %154

86:                                               ; preds = %76
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %92 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  br label %143

95:                                               ; preds = %69
  %96 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %97 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_20__* %100, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  store i32 1, i32* %5, align 4
  br label %154

105:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %139, %105
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %107, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %106
  %115 = load i32*, i32** %16, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @sqlite3ExprCompare(i32 0, i32* %115, i32 %125, i32 -1)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %114
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %130 = load i32*, i32** %16, align 8
  %131 = call i32 @resolveRemoveWindows(%struct.TYPE_19__* %129, i32* %130)
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  %134 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %135 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 8
  br label %138

138:                                              ; preds = %128, %114
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %106

142:                                              ; preds = %106
  br label %143

143:                                              ; preds = %142, %86, %59
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  %146 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %147 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %146, i32 1
  store %struct.ExprList_item* %147, %struct.ExprList_item** %13, align 8
  br label %33

148:                                              ; preds = %33
  %149 = load i32*, i32** %14, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 @sqlite3ResolveOrderGroupBy(i32* %149, %struct.TYPE_19__* %150, %struct.TYPE_21__* %151, i8* %152)
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %148, %104, %79, %20
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32* @sqlite3ExprSkipCollate(i32*) #1

declare dso_local i32 @resolveAsName(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @sqlite3ExprIsInteger(i32*, i32*) #1

declare dso_local i32 @resolveOutOfRangeError(i32*, i8*, i32, i32) #1

declare dso_local i64 @sqlite3ResolveExprNames(%struct.TYPE_20__*, i32*) #1

declare dso_local i64 @sqlite3ExprCompare(i32, i32*, i32, i32) #1

declare dso_local i32 @resolveRemoveWindows(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @sqlite3ResolveOrderGroupBy(i32*, %struct.TYPE_19__*, %struct.TYPE_21__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
