; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_start.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pgStatSock = common dso_local global i64 0, align 8
@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@last_pgstat_start_time = common dso_local global i64 0, align 8
@PGSTAT_RESTART_INTERVAL = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not fork statistics collector: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgstat_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @pgStatSock, align 8
  %5 = load i64, i64* @PGINVALID_SOCKET, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

8:                                                ; preds = %0
  %9 = call i64 @time(i32* null)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @last_pgstat_start_time, align 8
  %12 = sub nsw i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = load i64, i64* @PGSTAT_RESTART_INTERVAL, align 8
  %15 = trunc i64 %14 to i32
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %35

18:                                               ; preds = %8
  %19 = load i64, i64* %2, align 8
  store i64 %19, i64* @last_pgstat_start_time, align 8
  %20 = call i64 (...) @fork_process()
  store i64 %20, i64* %3, align 8
  switch i64 %20, label %31 [
    i64 -1, label %21
    i64 0, label %25
  ]

21:                                               ; preds = %18
  %22 = load i32, i32* @LOG, align 4
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %22, i32 %23)
  store i32 0, i32* %1, align 4
  br label %35

25:                                               ; preds = %18
  %26 = call i32 (...) @InitPostmasterChild()
  %27 = call i32 @ClosePostmasterPorts(i32 0)
  %28 = call i32 (...) @dsm_detach_all()
  %29 = call i32 (...) @PGSharedMemoryDetach()
  %30 = call i32 @PgstatCollectorMain(i32 0, i32* null)
  br label %34

31:                                               ; preds = %18
  %32 = load i64, i64* %3, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %1, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %31, %21, %17, %7
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @fork_process(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @InitPostmasterChild(...) #1

declare dso_local i32 @ClosePostmasterPorts(i32) #1

declare dso_local i32 @dsm_detach_all(...) #1

declare dso_local i32 @PGSharedMemoryDetach(...) #1

declare dso_local i32 @PgstatCollectorMain(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
