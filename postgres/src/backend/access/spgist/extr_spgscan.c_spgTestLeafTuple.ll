; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgscan.c_spgTestLeafTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgscan.c_spgTestLeafTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@SPGIST_LIVE = common dso_local global i64 0, align 8
@SPGIST_REDIRECT = common dso_local global i64 0, align 8
@SPGIST_METAPAGE_BLKNO = common dso_local global i64 0, align 8
@SpGistRedirectOffsetNumber = common dso_local global i64 0, align 8
@SPGIST_DEAD = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@SpGistBreakOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unexpected SPGiST tuple state: %d\00", align 1
@SpGistErrorOffsetNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_7__*, i32, i64, i32, i32, i32*, i32)* @spgTestLeafTuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spgTestLeafTuple(i32 %0, %struct.TYPE_7__* %1, i32 %2, i64 %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i64, i64* %13, align 8
  %22 = call i32 @PageGetItemId(i32 %20, i64 %21)
  %23 = call i32 @PageGetItem(i32 %19, i32 %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %18, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SPGIST_LIVE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %92

31:                                               ; preds = %8
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %85, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SPGIST_REDIRECT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load i64, i64* %13, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i64 @ItemPointerGetOffsetNumber(i32* %43)
  %45 = icmp eq i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %49 = bitcast %struct.TYPE_8__* %48 to %struct.TYPE_9__*
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i64 @ItemPointerGetBlockNumber(i32* %55)
  %57 = load i64, i64* @SPGIST_METAPAGE_BLKNO, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @Assert(i32 %59)
  %61 = load i64, i64* @SpGistRedirectOffsetNumber, align 8
  store i64 %61, i64* %9, align 8
  br label %107

62:                                               ; preds = %34
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SPGIST_DEAD, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = call i64 @ItemPointerGetOffsetNumber(i32* %71)
  %73 = icmp eq i64 %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @Assert(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @InvalidOffsetNumber, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load i64, i64* @SpGistBreakOffsetNumber, align 8
  store i64 %83, i64* %9, align 8
  br label %107

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84, %31
  %86 = load i32, i32* @ERROR, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @elog(i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %89)
  %91 = load i64, i64* @SpGistErrorOffsetNumber, align 8
  store i64 %91, i64* %9, align 8
  br label %107

92:                                               ; preds = %8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = call i32 @ItemPointerIsValid(i32* %94)
  %96 = call i32 @Assert(i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @spgLeafTest(i32 %97, %struct.TYPE_7__* %98, %struct.TYPE_8__* %99, i32 %100, i32* %101, i32 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %9, align 8
  br label %107

107:                                              ; preds = %92, %85, %68, %40
  %108 = load i64, i64* %9, align 8
  ret i64 %108
}

declare dso_local i32 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @spgLeafTest(i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
