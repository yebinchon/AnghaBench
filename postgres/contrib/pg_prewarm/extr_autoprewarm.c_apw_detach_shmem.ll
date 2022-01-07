; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_detach_shmem.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_detach_shmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@apw_state = common dso_local global %struct.TYPE_2__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MyProcPid = common dso_local global i64 0, align 8
@InvalidPid = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @apw_detach_shmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apw_detach_shmem(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apw_state, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i32, i32* @LW_EXCLUSIVE, align 4
  %8 = call i32 @LWLockAcquire(i32* %6, i32 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apw_state, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MyProcPid, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** @InvalidPid, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apw_state, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apw_state, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MyProcPid, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i8*, i8** @InvalidPid, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apw_state, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apw_state, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = call i32 @LWLockRelease(i32* %32)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
