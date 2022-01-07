; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pageinspect/extr_btreefuncs.c_bt_page_print_tuples.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pageinspect/extr_btreefuncs.c_bt_page_print_tuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"invalid ItemId\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"(%u,%u)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i8)* @bt_page_print_tuples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_page_print_tuples(%struct.TYPE_8__* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca [6 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %16 = load i32, i32* %5, align 4
  %17 = load i8, i8* %6, align 1
  %18 = call i32 @PageGetItemId(i32 %16, i8 signext %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ItemIdIsValid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @PageGetItem(i32 %26, i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %10, align 8
  store i32 0, i32* %11, align 4
  %30 = load i8, i8* %6, align 1
  %31 = call i8* (i8*, i8, ...) @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %30)
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 %34
  store i8* %31, i8** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = call i32 @ItemPointerGetBlockNumberNoCheck(i32* %37)
  %39 = trunc i32 %38 to i8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = call i32 @ItemPointerGetOffsetNumberNoCheck(i32* %41)
  %43 = call i8* (i8*, i8, ...) @psprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8 signext %39, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 %46
  store i8* %43, i8** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = call i32 @IndexTupleSize(%struct.TYPE_7__* %48)
  %50 = trunc i32 %49 to i8
  %51 = call i8* (i8*, i8, ...) @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %50)
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 %54
  store i8* %51, i8** %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = call i64 @IndexTupleHasNulls(%struct.TYPE_7__* %56)
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 116, i32 102
  %61 = trunc i32 %60 to i8
  %62 = call i8* (i8*, i8, ...) @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8 signext %61)
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 %65
  store i8* %62, i8** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = call i64 @IndexTupleHasVarwidths(%struct.TYPE_7__* %67)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 116, i32 102
  %72 = trunc i32 %71 to i8
  %73 = call i8* (i8*, i8, ...) @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8 signext %72)
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 %76
  store i8* %73, i8** %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %79 = bitcast %struct.TYPE_7__* %78 to i8*
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @IndexInfoFindDataOffset(i32 %82)
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  store i8* %85, i8** %15, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = call i32 @IndexTupleSize(%struct.TYPE_7__* %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IndexInfoFindDataOffset(i32 %90)
  %92 = sub nsw i32 %87, %91
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %93, 3
  %95 = add nsw i32 %94, 1
  %96 = call i8* @palloc0(i32 %95)
  store i8* %96, i8** %14, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 %99
  store i8* %97, i8** %100, align 8
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %124, %25
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %101
  %106 = load i32, i32* %12, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %14, align 8
  store i8 32, i8* %109, align 1
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = and i32 %118, 255
  %120 = trunc i32 %119 to i8
  %121 = call i32 @sprintf(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8 signext %120)
  %122 = load i8*, i8** %14, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  store i8* %123, i8** %14, align 8
  br label %124

124:                                              ; preds = %111
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %101

127:                                              ; preds = %101
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %132 = call i32 @BuildTupleFromCStrings(i32 %130, i8** %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @HeapTupleGetDatum(i32 %133)
  ret i32 %134
}

declare dso_local i32 @PageGetItemId(i32, i8 signext) #1

declare dso_local i32 @ItemIdIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i8* @psprintf(i8*, i8 signext, ...) #1

declare dso_local i32 @ItemPointerGetBlockNumberNoCheck(i32*) #1

declare dso_local i32 @ItemPointerGetOffsetNumberNoCheck(i32*) #1

declare dso_local i32 @IndexTupleSize(%struct.TYPE_7__*) #1

declare dso_local i64 @IndexTupleHasNulls(%struct.TYPE_7__*) #1

declare dso_local i64 @IndexTupleHasVarwidths(%struct.TYPE_7__*) #1

declare dso_local i32 @IndexInfoFindDataOffset(i32) #1

declare dso_local i8* @palloc0(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext) #1

declare dso_local i32 @BuildTupleFromCStrings(i32, i8**) #1

declare dso_local i32 @HeapTupleGetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
