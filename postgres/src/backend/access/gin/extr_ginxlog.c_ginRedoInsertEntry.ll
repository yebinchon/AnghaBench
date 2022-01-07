; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoInsertEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoInsertEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@InvalidBlockNumber = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to add item to index page in %u/%u/%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @ginRedoInsertEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ginRedoInsertEntry(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @BufferGetPage(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %10, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @InvalidBlockNumber, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @GinPageIsLeaf(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @FirstOffsetNumber, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @PageGetMaxOffsetNumber(i32 %38)
  %40 = icmp sle i64 %37, %39
  br label %41

41:                                               ; preds = %36, %26
  %42 = phi i1 [ false, %26 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @PageGetItemId(i32 %46, i64 %47)
  %49 = call i64 @PageGetItem(i32 %45, i32 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @GinSetDownlink(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %41, %4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @GinPageIsLeaf(i32 %60)
  %62 = call i32 @Assert(i32 %61)
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @FirstOffsetNumber, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @PageGetMaxOffsetNumber(i32 %68)
  %70 = icmp sle i64 %67, %69
  br label %71

71:                                               ; preds = %66, %59
  %72 = phi i1 [ false, %59 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @Assert(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @PageIndexTupleDelete(i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %71, %54
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32* %80, i32** %12, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = ptrtoint i32* %82 to i32
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @IndexTupleSize(i32* %84)
  %86 = load i64, i64* %11, align 8
  %87 = call i64 @PageAddItem(i32 %81, i32 %83, i32 %85, i64 %86, i32 0, i32 0)
  %88 = load i64, i64* @InvalidOffsetNumber, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %78
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @BufferGetTag(i32 %91, %struct.TYPE_5__* %13, i32* %14, i32* %15)
  %93 = load i32, i32* @ERROR, align 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @elog(i32 %93, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %97, i32 %99)
  br label %101

101:                                              ; preds = %90, %78
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsLeaf(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @GinSetDownlink(i32*, i32) #1

declare dso_local i32 @PageIndexTupleDelete(i32, i64) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @IndexTupleSize(i32*) #1

declare dso_local i32 @BufferGetTag(i32, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
