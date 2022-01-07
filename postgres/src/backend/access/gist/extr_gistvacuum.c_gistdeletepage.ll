; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistvacuum.c_gistdeletepage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistvacuum.c_gistdeletepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@InvalidOffsetNumber = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_10__*, i32, i64, i32)* @gistdeletepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gistdeletepage(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @BufferGetPage(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @BufferGetPage(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i64 @GistPageIsLeaf(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %5
  %26 = call i32 @Assert(i32 0)
  store i32 0, i32* %6, align 4
  br label %120

27:                                               ; preds = %5
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @GistFollowRight(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %120

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @PageGetMaxOffsetNumber(i32 %33)
  %35 = load i64, i64* @InvalidOffsetNumber, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %120

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @PageIsNew(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @GistPageIsDeleted(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @GistPageIsLeaf(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %42, %38
  %51 = call i32 @Assert(i32 0)
  store i32 0, i32* %6, align 4
  br label %120

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @PageGetMaxOffsetNumber(i32 %53)
  %55 = load i64, i64* %10, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = call i64 @PageGetMaxOffsetNumber(i32 %58)
  %60 = load i64, i64* @FirstOffsetNumber, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52
  store i32 0, i32* %6, align 4
  br label %120

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @PageGetItemId(i32 %64, i64 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i64 @PageGetItem(i32 %67, i32 %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %15, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @BufferGetBlockNumber(i32 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = call i64 @ItemPointerGetBlockNumber(i32* %74)
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %120

78:                                               ; preds = %63
  %79 = call i32 (...) @ReadNextFullTransactionId()
  store i32 %79, i32* %17, align 4
  %80 = call i32 (...) @START_CRIT_SECTION()
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @MarkBufferDirty(i32 %81)
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @GistPageSetDeleted(i32 %83, i32 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @MarkBufferDirty(i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @PageIndexTupleDelete(i32 %93, i64 %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @RelationNeedsWAL(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %78
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @gistXLogPageDelete(i32 %102, i32 %103, i32 %104, i64 %105)
  store i32 %106, i32* %16, align 4
  br label %112

107:                                              ; preds = %78
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @gistGetFakeLSN(i32 %110)
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %107, %101
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @PageSetLSN(i32 %113, i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @PageSetLSN(i32 %116, i32 %117)
  %119 = call i32 (...) @END_CRIT_SECTION()
  store i32 1, i32* %6, align 4
  br label %120

120:                                              ; preds = %112, %77, %62, %50, %37, %31, %25
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @GistPageIsLeaf(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @GistFollowRight(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i64 @GistPageIsDeleted(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ReadNextFullTransactionId(...) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @GistPageSetDeleted(i32, i32) #1

declare dso_local i32 @PageIndexTupleDelete(i32, i64) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @gistXLogPageDelete(i32, i32, i32, i64) #1

declare dso_local i32 @gistGetFakeLSN(i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
