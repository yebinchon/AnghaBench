; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginfast.c_ginHeapTupleFastCollect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginfast.c_ginHeapTupleFastCollect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }

@MaxAllocSize = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"too many entries for GIN index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ginHeapTupleFastCollect(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32* @ginExtractEntries(i32* %18, i32 %19, i32 %20, i32 %21, i32* %16, i32** %14)
  store i32* %22, i32** %13, align 8
  %23 = load i32, i32* %16, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %16, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* @MaxAllocSize, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 8
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25, %6
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %41, align 8
  %43 = icmp eq %struct.TYPE_7__** %42, null
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32 16, i32* %46, align 4
  br label %47

47:                                               ; preds = %53, %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 2
  store i32 %57, i32* %55, align 4
  br label %47

58:                                               ; preds = %47
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 8, %62
  %64 = trunc i64 %63 to i32
  %65 = call i64 @palloc(i32 %64)
  %66 = inttoptr i64 %65 to %struct.TYPE_7__**
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  store %struct.TYPE_7__** %66, %struct.TYPE_7__*** %68, align 8
  br label %110

69:                                               ; preds = %39
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %75, %76
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %85, %79
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 2
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %91, %92
  %94 = icmp slt i32 %88, %93
  br i1 %94, label %80, label %95

95:                                               ; preds = %85
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 8, %102
  %104 = trunc i64 %103 to i32
  %105 = call i64 @repalloc(%struct.TYPE_7__** %98, i32 %104)
  %106 = inttoptr i64 %105 to %struct.TYPE_7__**
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  store %struct.TYPE_7__** %106, %struct.TYPE_7__*** %108, align 8
  br label %109

109:                                              ; preds = %95, %69
  br label %110

110:                                              ; preds = %109, %58
  store i32 0, i32* %15, align 4
  br label %111

111:                                              ; preds = %151, %110
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %154

115:                                              ; preds = %111
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %14, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.TYPE_7__* @GinFormTuple(i32* %116, i32 %117, i32 %122, i32 %127, i32* null, i32 0, i32 0, i32 1)
  store %struct.TYPE_7__* %128, %struct.TYPE_7__** %17, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %135, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %136, i64 %141
  store %struct.TYPE_7__* %133, %struct.TYPE_7__** %142, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %144 = call i64 @IndexTupleSize(%struct.TYPE_7__* %143)
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %144
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %146, align 8
  br label %151

151:                                              ; preds = %115
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %111

154:                                              ; preds = %111
  ret void
}

declare dso_local i32* @ginExtractEntries(i32*, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_7__**, i32) #1

declare dso_local %struct.TYPE_7__* @GinFormTuple(i32*, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @IndexTupleSize(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
