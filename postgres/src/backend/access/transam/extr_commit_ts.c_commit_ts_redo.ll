; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_commit_ts_redo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_commit_ts_redo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@COMMIT_TS_ZEROPAGE = common dso_local global i64 0, align 8
@CommitTsControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@CommitTsCtl = common dso_local global %struct.TYPE_10__* null, align 8
@COMMIT_TS_TRUNCATE = common dso_local global i64 0, align 8
@COMMIT_TS_SETTS = common dso_local global i64 0, align 8
@SizeOfCommitTsSet = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"commit_ts_redo: unknown op code %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commit_ts_redo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @XLogRecGetInfo(i32* %10)
  %12 = load i64, i64* @XLR_INFO_MASK, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %11, %13
  store i64 %14, i64* %3, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @XLogRecHasAnyBlockRefs(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @COMMIT_TS_ZEROPAGE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %1
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @XLogRecGetData(i32* %25)
  %27 = call i32 @memcpy(i32* %4, i32 %26, i32 4)
  %28 = load i32, i32* @CommitTsControlLock, align 4
  %29 = load i32, i32* @LW_EXCLUSIVE, align 4
  %30 = call i32 @LWLockAcquire(i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ZeroCommitTsPage(i32 %31, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CommitTsCtl, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @SimpleLruWritePage(%struct.TYPE_10__* %33, i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CommitTsCtl, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load i32, i32* @CommitTsControlLock, align 4
  %50 = call i32 @LWLockRelease(i32 %49)
  br label %136

51:                                               ; preds = %1
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @COMMIT_TS_TRUNCATE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @XLogRecGetData(i32* %56)
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %6, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @AdvanceOldestCommitTsXid(i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CommitTsCtl, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CommitTsCtl, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @SimpleLruTruncate(%struct.TYPE_10__* %71, i32 %74)
  br label %135

76:                                               ; preds = %51
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @COMMIT_TS_SETTS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %130

80:                                               ; preds = %76
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @XLogRecGetData(i32* %81)
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %7, align 8
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @XLogRecGetDataLen(i32* %85)
  %87 = load i32, i32* @SizeOfCommitTsSet, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = udiv i64 %89, 4
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %80
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 4, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32* @palloc(i32 %98)
  store i32* %99, i32** %9, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @XLogRecGetData(i32* %101)
  %103 = load i32, i32* @SizeOfCommitTsSet, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 4, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memcpy(i32* %100, i32 %104, i32 %108)
  br label %111

110:                                              ; preds = %80
  store i32* null, i32** %9, align 8
  br label %111

111:                                              ; preds = %110, %94
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @TransactionTreeSetCommitTsData(i32 %114, i32 %115, i32* %116, i32 %119, i32 %122, i32 1)
  %124 = load i32*, i32** %9, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %111
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @pfree(i32* %127)
  br label %129

129:                                              ; preds = %126, %111
  br label %134

130:                                              ; preds = %76
  %131 = load i32, i32* @PANIC, align 4
  %132 = load i64, i64* %3, align 8
  %133 = call i32 @elog(i32 %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %132)
  br label %134

134:                                              ; preds = %130, %129
  br label %135

135:                                              ; preds = %134, %55
  br label %136

136:                                              ; preds = %135, %24
  ret void
}

declare dso_local i64 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogRecHasAnyBlockRefs(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @XLogRecGetData(i32*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @ZeroCommitTsPage(i32, i32) #1

declare dso_local i32 @SimpleLruWritePage(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @AdvanceOldestCommitTsXid(i32) #1

declare dso_local i32 @SimpleLruTruncate(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @XLogRecGetDataLen(i32*) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32 @TransactionTreeSetCommitTsData(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
