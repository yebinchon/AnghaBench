; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_MarkBufferDirty.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_MarkBufferDirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bad buffer ID: %d\00", align 1
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@BM_LOCKED = common dso_local global i32 0, align 4
@BM_DIRTY = common dso_local global i32 0, align 4
@BM_JUST_DIRTIED = common dso_local global i32 0, align 4
@VacuumPageDirty = common dso_local global i32 0, align 4
@pgBufferUsage = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@VacuumCostActive = common dso_local global i64 0, align 8
@VacuumCostPageDirty = common dso_local global i64 0, align 8
@VacuumCostBalance = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MarkBufferDirty(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i32 @BufferIsValid(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ERROR, align 4
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @elog(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i64, i64* %2, align 8
  %15 = call i64 @BufferIsLocal(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @MarkLocalBufferDirty(i64 %18)
  br label %81

20:                                               ; preds = %13
  %21 = load i64, i64* %2, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call %struct.TYPE_6__* @GetBufferDescriptor(i64 %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %3, align 8
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @BufferIsPinned(i64 %24)
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_6__* %27)
  %29 = load i32, i32* @LW_EXCLUSIVE, align 4
  %30 = call i32 @LWLockHeldByMeInMode(i32 %28, i32 %29)
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @pg_atomic_read_u32(i32* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %61, %20
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @BM_LOCKED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = call i32 @WaitBufHdrUnlocked(%struct.TYPE_6__* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @BUF_STATE_GET_REFCOUNT(i32 %45)
  %47 = icmp sgt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load i32, i32* @BM_DIRTY, align 4
  %51 = load i32, i32* @BM_JUST_DIRTIED, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @pg_atomic_compare_exchange_u32(i32* %56, i32* %5, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  br label %62

61:                                               ; preds = %43
  br label %35

62:                                               ; preds = %60
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @BM_DIRTY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @VacuumPageDirty, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @VacuumPageDirty, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pgBufferUsage, i32 0, i32 0), align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pgBufferUsage, i32 0, i32 0), align 4
  %72 = load i64, i64* @VacuumCostActive, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i64, i64* @VacuumCostPageDirty, align 8
  %76 = load i32, i32* @VacuumCostBalance, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* @VacuumCostBalance, align 4
  br label %80

80:                                               ; preds = %74, %67
  br label %81

81:                                               ; preds = %17, %80, %62
  ret void
}

declare dso_local i32 @BufferIsValid(i64) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @BufferIsLocal(i64) #1

declare dso_local i32 @MarkLocalBufferDirty(i64) #1

declare dso_local %struct.TYPE_6__* @GetBufferDescriptor(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsPinned(i64) #1

declare dso_local i32 @LWLockHeldByMeInMode(i32, i32) #1

declare dso_local i32 @BufferDescriptorGetContentLock(%struct.TYPE_6__*) #1

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @WaitBufHdrUnlocked(%struct.TYPE_6__*) #1

declare dso_local i64 @BUF_STATE_GET_REFCOUNT(i32) #1

declare dso_local i64 @pg_atomic_compare_exchange_u32(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
