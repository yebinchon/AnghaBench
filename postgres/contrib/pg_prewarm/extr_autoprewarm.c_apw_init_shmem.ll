; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_init_shmem.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_init_shmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@AddinShmemInitLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"autoprewarm\00", align 1
@apw_state = common dso_local global %struct.TYPE_4__* null, align 8
@InvalidPid = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @apw_init_shmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apw_init_shmem() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @AddinShmemInitLock, align 4
  %3 = load i32, i32* @LW_EXCLUSIVE, align 4
  %4 = call i32 @LWLockAcquire(i32 %2, i32 %3)
  %5 = call %struct.TYPE_4__* @ShmemInitStruct(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 4, i32* %1)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** @apw_state, align 8
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apw_state, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 (...) @LWLockNewTrancheId()
  %12 = call i32 @LWLockInitialize(%struct.TYPE_5__* %10, i32 %11)
  %13 = load i8*, i8** @InvalidPid, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apw_state, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @InvalidPid, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apw_state, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  br label %19

19:                                               ; preds = %8, %0
  %20 = load i32, i32* @AddinShmemInitLock, align 4
  %21 = call i32 @LWLockRelease(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apw_state, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @LWLockRegisterTranche(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local %struct.TYPE_4__* @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @LWLockInitialize(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @LWLockNewTrancheId(...) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @LWLockRegisterTranche(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
