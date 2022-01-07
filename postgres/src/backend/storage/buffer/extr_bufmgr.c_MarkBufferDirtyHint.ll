; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_MarkBufferDirtyHint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_MarkBufferDirtyHint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bad buffer ID: %d\00", align 1
@BM_DIRTY = common dso_local global i32 0, align 4
@BM_JUST_DIRTIED = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@BM_PERMANENT = common dso_local global i32 0, align 4
@MyPgXact = common dso_local global %struct.TYPE_10__* null, align 8
@VacuumPageDirty = common dso_local global i32 0, align 4
@pgBufferUsage = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@VacuumCostActive = common dso_local global i64 0, align 8
@VacuumCostPageDirty = common dso_local global i64 0, align 8
@VacuumCostBalance = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MarkBufferDirtyHint(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @BufferGetPage(i64 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @BufferIsValid(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @BufferIsLocal(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @MarkLocalBufferDirty(i64 %25)
  br label %125

27:                                               ; preds = %20
  %28 = load i64, i64* %3, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call %struct.TYPE_8__* @GetBufferDescriptor(i64 %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %5, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @GetPrivateRefCount(i64 %31)
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_8__* %36)
  %38 = call i32 @LWLockHeldByMe(i32 %37)
  %39 = call i32 @Assert(i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = call i32 @pg_atomic_read_u32(i32* %41)
  %43 = load i32, i32* @BM_DIRTY, align 4
  %44 = load i32, i32* @BM_JUST_DIRTIED, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = load i32, i32* @BM_DIRTY, align 4
  %48 = load i32, i32* @BM_JUST_DIRTIED, align 4
  %49 = or i32 %47, %48
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %125

51:                                               ; preds = %27
  %52 = load i32, i32* @InvalidXLogRecPtr, align 4
  store i32 %52, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %53 = call i64 (...) @XLogHintBitIsNeeded()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = call i32 @pg_atomic_read_u32(i32* %57)
  %59 = load i32, i32* @BM_PERMANENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = call i64 (...) @RecoveryInProgress()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %125

66:                                               ; preds = %62
  store i32 1, i32* %9, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MyPgXact, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  %69 = load i64, i64* %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @XLogSaveBufferForHint(i64 %69, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %66, %55, %51
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = call i32 @LockBufHdr(%struct.TYPE_8__* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i64 @BUF_STATE_GET_REFCOUNT(i32 %75)
  %77 = icmp sgt i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @Assert(i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @BM_DIRTY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @XLogRecPtrIsInvalid(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @PageSetLSN(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %72
  %94 = load i32, i32* @BM_DIRTY, align 4
  %95 = load i32, i32* @BM_JUST_DIRTIED, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @UnlockBufHdr(%struct.TYPE_8__* %99, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MyPgXact, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %93
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load i32, i32* @VacuumPageDirty, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @VacuumPageDirty, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 0), align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 0), align 4
  %115 = load i64, i64* @VacuumCostActive, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load i64, i64* @VacuumCostPageDirty, align 8
  %119 = load i32, i32* @VacuumCostBalance, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* @VacuumCostBalance, align 4
  br label %123

123:                                              ; preds = %117, %110
  br label %124

124:                                              ; preds = %123, %107
  br label %125

125:                                              ; preds = %24, %65, %124, %27
  ret void
}

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @BufferIsValid(i64) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @BufferIsLocal(i64) #1

declare dso_local i32 @MarkLocalBufferDirty(i64) #1

declare dso_local %struct.TYPE_8__* @GetBufferDescriptor(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @GetPrivateRefCount(i64) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i32 @BufferDescriptorGetContentLock(%struct.TYPE_8__*) #1

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i64 @XLogHintBitIsNeeded(...) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @XLogSaveBufferForHint(i64, i32) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_8__*) #1

declare dso_local i64 @BUF_STATE_GET_REFCOUNT(i32) #1

declare dso_local i32 @XLogRecPtrIsInvalid(i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
