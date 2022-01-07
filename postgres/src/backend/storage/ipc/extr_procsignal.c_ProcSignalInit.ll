; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procsignal.c_ProcSignalInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procsignal.c_ProcSignalInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@NumProcSignalSlots = common dso_local global i32 0, align 4
@ProcSignalSlots = common dso_local global %struct.TYPE_4__* null, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"process %d taking over ProcSignal slot %d, but it's not empty\00", align 1
@MyProcPid = common dso_local global i64 0, align 8
@NUM_PROCSIGNALS = common dso_local global i32 0, align 4
@MyProcSignalSlot = common dso_local global %struct.TYPE_4__* null, align 8
@CleanupProcSignalState = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcSignalInit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @NumProcSignalSlots, align 4
  %9 = icmp sle i32 %7, %8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ProcSignalSlots, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %17
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load volatile i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %10
  %24 = load i32, i32* @LOG, align 4
  %25 = load i64, i64* @MyProcPid, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %10
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load volatile i32, i32* %30, align 8
  %32 = load i32, i32* @NUM_PROCSIGNALS, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32 @MemSet(i32 %31, i32 0, i32 %35)
  %37 = load i64, i64* @MyProcPid, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store volatile i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** @MyProcSignalSlot, align 8
  %41 = load i32, i32* @CleanupProcSignalState, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @Int32GetDatum(i32 %42)
  %44 = call i32 @on_shmem_exit(i32 %41, i32 %43)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

declare dso_local i32 @MemSet(i32, i32, i32) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
