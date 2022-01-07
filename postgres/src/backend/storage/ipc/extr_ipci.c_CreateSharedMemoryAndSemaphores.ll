; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_ipci.c_CreateSharedMemoryAndSemaphores.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_ipci.c_CreateSharedMemoryAndSemaphores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IsUnderPostmaster = common dso_local global i32 0, align 4
@SHMEM_INDEX_SIZE = common dso_local global i32 0, align 4
@addin_request_allowed = common dso_local global i32 0, align 4
@total_addin_request = common dso_local global i32 0, align 4
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"invoking IpcMemoryCreate(size=%zu)\00", align 1
@PANIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"should be attached to shared memory already\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateSharedMemoryAndSemaphores() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %5 = load i32, i32* @IsUnderPostmaster, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %127, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @ProcGlobalSemas()
  store i32 %8, i32* %4, align 4
  %9 = call i64 (...) @SpinlockSemas()
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  store i32 100000, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @PGSemaphoreShmemSize(i32 %15)
  %17 = call i32 @add_size(i32 %14, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (...) @SpinlockSemaSize()
  %20 = call i32 @add_size(i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SHMEM_INDEX_SIZE, align 4
  %23 = call i32 @hash_estimate_size(i32 %22, i32 4)
  %24 = call i32 @add_size(i32 %21, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (...) @BufferShmemSize()
  %27 = call i32 @add_size(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (...) @LockShmemSize()
  %30 = call i32 @add_size(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (...) @PredicateLockShmemSize()
  %33 = call i32 @add_size(i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (...) @ProcGlobalShmemSize()
  %36 = call i32 @add_size(i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (...) @XLOGShmemSize()
  %39 = call i32 @add_size(i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (...) @CLOGShmemSize()
  %42 = call i32 @add_size(i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (...) @CommitTsShmemSize()
  %45 = call i32 @add_size(i32 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (...) @SUBTRANSShmemSize()
  %48 = call i32 @add_size(i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (...) @TwoPhaseShmemSize()
  %51 = call i32 @add_size(i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (...) @BackgroundWorkerShmemSize()
  %54 = call i32 @add_size(i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (...) @MultiXactShmemSize()
  %57 = call i32 @add_size(i32 %55, i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 (...) @LWLockShmemSize()
  %60 = call i32 @add_size(i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (...) @ProcArrayShmemSize()
  %63 = call i32 @add_size(i32 %61, i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (...) @BackendStatusShmemSize()
  %66 = call i32 @add_size(i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (...) @SInvalShmemSize()
  %69 = call i32 @add_size(i32 %67, i32 %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (...) @PMSignalShmemSize()
  %72 = call i32 @add_size(i32 %70, i32 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 (...) @ProcSignalShmemSize()
  %75 = call i32 @add_size(i32 %73, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 (...) @CheckpointerShmemSize()
  %78 = call i32 @add_size(i32 %76, i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (...) @AutoVacuumShmemSize()
  %81 = call i32 @add_size(i32 %79, i32 %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 (...) @ReplicationSlotsShmemSize()
  %84 = call i32 @add_size(i32 %82, i32 %83)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 (...) @ReplicationOriginShmemSize()
  %87 = call i32 @add_size(i32 %85, i32 %86)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 (...) @WalSndShmemSize()
  %90 = call i32 @add_size(i32 %88, i32 %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 (...) @WalRcvShmemSize()
  %93 = call i32 @add_size(i32 %91, i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 (...) @ApplyLauncherShmemSize()
  %96 = call i32 @add_size(i32 %94, i32 %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 (...) @SnapMgrShmemSize()
  %99 = call i32 @add_size(i32 %97, i32 %98)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 (...) @BTreeShmemSize()
  %102 = call i32 @add_size(i32 %100, i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 (...) @SyncScanShmemSize()
  %105 = call i32 @add_size(i32 %103, i32 %104)
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i32 (...) @AsyncShmemSize()
  %108 = call i32 @add_size(i32 %106, i32 %107)
  store i32 %108, i32* %3, align 4
  store i32 0, i32* @addin_request_allowed, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @total_addin_request, align 4
  %111 = call i32 @add_size(i32 %109, i32 %110)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = srem i32 %113, 8192
  %115 = sub nsw i32 8192, %114
  %116 = call i32 @add_size(i32 %112, i32 %115)
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* @DEBUG3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = call i32 (i32, i8*, ...) @elog(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = call i32* @PGSharedMemoryCreate(i32 %120, i32** %1)
  store i32* %121, i32** %2, align 8
  %122 = load i32*, i32** %2, align 8
  %123 = call i32 @InitShmemAccess(i32* %122)
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @PGReserveSemaphores(i32 %124)
  %126 = call i32 (...) @SpinlockSemaInit()
  br label %130

127:                                              ; preds = %0
  %128 = load i32, i32* @PANIC, align 4
  %129 = call i32 (i32, i8*, ...) @elog(i32 %128, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %7
  %131 = load i32, i32* @IsUnderPostmaster, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = call i32 (...) @InitShmemAllocation()
  br label %135

135:                                              ; preds = %133, %130
  %136 = call i32 (...) @CreateLWLocks()
  %137 = call i32 (...) @InitShmemIndex()
  %138 = call i32 (...) @XLOGShmemInit()
  %139 = call i32 (...) @CLOGShmemInit()
  %140 = call i32 (...) @CommitTsShmemInit()
  %141 = call i32 (...) @SUBTRANSShmemInit()
  %142 = call i32 (...) @MultiXactShmemInit()
  %143 = call i32 (...) @InitBufferPool()
  %144 = call i32 (...) @InitLocks()
  %145 = call i32 (...) @InitPredicateLocks()
  %146 = load i32, i32* @IsUnderPostmaster, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %135
  %149 = call i32 (...) @InitProcGlobal()
  br label %150

150:                                              ; preds = %148, %135
  %151 = call i32 (...) @CreateSharedProcArray()
  %152 = call i32 (...) @CreateSharedBackendStatus()
  %153 = call i32 (...) @TwoPhaseShmemInit()
  %154 = call i32 (...) @BackgroundWorkerShmemInit()
  %155 = call i32 (...) @CreateSharedInvalidationState()
  %156 = call i32 (...) @PMSignalShmemInit()
  %157 = call i32 (...) @ProcSignalShmemInit()
  %158 = call i32 (...) @CheckpointerShmemInit()
  %159 = call i32 (...) @AutoVacuumShmemInit()
  %160 = call i32 (...) @ReplicationSlotsShmemInit()
  %161 = call i32 (...) @ReplicationOriginShmemInit()
  %162 = call i32 (...) @WalSndShmemInit()
  %163 = call i32 (...) @WalRcvShmemInit()
  %164 = call i32 (...) @ApplyLauncherShmemInit()
  %165 = call i32 (...) @SnapMgrInit()
  %166 = call i32 (...) @BTreeShmemInit()
  %167 = call i32 (...) @SyncScanShmemInit()
  %168 = call i32 (...) @AsyncShmemInit()
  %169 = load i32, i32* @IsUnderPostmaster, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %150
  %172 = load i32*, i32** %1, align 8
  %173 = call i32 @dsm_postmaster_startup(i32* %172)
  br label %174

174:                                              ; preds = %171, %150
  br i1 true, label %175, label %177

175:                                              ; preds = %174
  %176 = call i32 (...) @shmem_startup_hook()
  br label %177

177:                                              ; preds = %175, %174
  ret void
}

declare dso_local i32 @ProcGlobalSemas(...) #1

declare dso_local i64 @SpinlockSemas(...) #1

declare dso_local i32 @add_size(i32, i32) #1

declare dso_local i32 @PGSemaphoreShmemSize(i32) #1

declare dso_local i32 @SpinlockSemaSize(...) #1

declare dso_local i32 @hash_estimate_size(i32, i32) #1

declare dso_local i32 @BufferShmemSize(...) #1

declare dso_local i32 @LockShmemSize(...) #1

declare dso_local i32 @PredicateLockShmemSize(...) #1

declare dso_local i32 @ProcGlobalShmemSize(...) #1

declare dso_local i32 @XLOGShmemSize(...) #1

declare dso_local i32 @CLOGShmemSize(...) #1

declare dso_local i32 @CommitTsShmemSize(...) #1

declare dso_local i32 @SUBTRANSShmemSize(...) #1

declare dso_local i32 @TwoPhaseShmemSize(...) #1

declare dso_local i32 @BackgroundWorkerShmemSize(...) #1

declare dso_local i32 @MultiXactShmemSize(...) #1

declare dso_local i32 @LWLockShmemSize(...) #1

declare dso_local i32 @ProcArrayShmemSize(...) #1

declare dso_local i32 @BackendStatusShmemSize(...) #1

declare dso_local i32 @SInvalShmemSize(...) #1

declare dso_local i32 @PMSignalShmemSize(...) #1

declare dso_local i32 @ProcSignalShmemSize(...) #1

declare dso_local i32 @CheckpointerShmemSize(...) #1

declare dso_local i32 @AutoVacuumShmemSize(...) #1

declare dso_local i32 @ReplicationSlotsShmemSize(...) #1

declare dso_local i32 @ReplicationOriginShmemSize(...) #1

declare dso_local i32 @WalSndShmemSize(...) #1

declare dso_local i32 @WalRcvShmemSize(...) #1

declare dso_local i32 @ApplyLauncherShmemSize(...) #1

declare dso_local i32 @SnapMgrShmemSize(...) #1

declare dso_local i32 @BTreeShmemSize(...) #1

declare dso_local i32 @SyncScanShmemSize(...) #1

declare dso_local i32 @AsyncShmemSize(...) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32* @PGSharedMemoryCreate(i32, i32**) #1

declare dso_local i32 @InitShmemAccess(i32*) #1

declare dso_local i32 @PGReserveSemaphores(i32) #1

declare dso_local i32 @SpinlockSemaInit(...) #1

declare dso_local i32 @InitShmemAllocation(...) #1

declare dso_local i32 @CreateLWLocks(...) #1

declare dso_local i32 @InitShmemIndex(...) #1

declare dso_local i32 @XLOGShmemInit(...) #1

declare dso_local i32 @CLOGShmemInit(...) #1

declare dso_local i32 @CommitTsShmemInit(...) #1

declare dso_local i32 @SUBTRANSShmemInit(...) #1

declare dso_local i32 @MultiXactShmemInit(...) #1

declare dso_local i32 @InitBufferPool(...) #1

declare dso_local i32 @InitLocks(...) #1

declare dso_local i32 @InitPredicateLocks(...) #1

declare dso_local i32 @InitProcGlobal(...) #1

declare dso_local i32 @CreateSharedProcArray(...) #1

declare dso_local i32 @CreateSharedBackendStatus(...) #1

declare dso_local i32 @TwoPhaseShmemInit(...) #1

declare dso_local i32 @BackgroundWorkerShmemInit(...) #1

declare dso_local i32 @CreateSharedInvalidationState(...) #1

declare dso_local i32 @PMSignalShmemInit(...) #1

declare dso_local i32 @ProcSignalShmemInit(...) #1

declare dso_local i32 @CheckpointerShmemInit(...) #1

declare dso_local i32 @AutoVacuumShmemInit(...) #1

declare dso_local i32 @ReplicationSlotsShmemInit(...) #1

declare dso_local i32 @ReplicationOriginShmemInit(...) #1

declare dso_local i32 @WalSndShmemInit(...) #1

declare dso_local i32 @WalRcvShmemInit(...) #1

declare dso_local i32 @ApplyLauncherShmemInit(...) #1

declare dso_local i32 @SnapMgrInit(...) #1

declare dso_local i32 @BTreeShmemInit(...) #1

declare dso_local i32 @SyncScanShmemInit(...) #1

declare dso_local i32 @AsyncShmemInit(...) #1

declare dso_local i32 @dsm_postmaster_startup(i32*) #1

declare dso_local i32 @shmem_startup_hook(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
