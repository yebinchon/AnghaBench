; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgarch.c_pgarch_start.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgarch.c_pgarch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_pgarch_start_time = common dso_local global i64 0, align 8
@PGARCH_RESTART_INTERVAL = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not fork archiver: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgarch_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i32 (...) @XLogArchivingActive()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %34

7:                                                ; preds = %0
  %8 = call i64 @time(i32* null)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @last_pgarch_start_time, align 8
  %11 = sub nsw i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = load i64, i64* @PGARCH_RESTART_INTERVAL, align 8
  %14 = trunc i64 %13 to i32
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %34

17:                                               ; preds = %7
  %18 = load i64, i64* %2, align 8
  store i64 %18, i64* @last_pgarch_start_time, align 8
  %19 = call i64 (...) @fork_process()
  store i64 %19, i64* %3, align 8
  switch i64 %19, label %30 [
    i64 -1, label %20
    i64 0, label %24
  ]

20:                                               ; preds = %17
  %21 = load i32, i32* @LOG, align 4
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %21, i32 %22)
  store i32 0, i32* %1, align 4
  br label %34

24:                                               ; preds = %17
  %25 = call i32 (...) @InitPostmasterChild()
  %26 = call i32 @ClosePostmasterPorts(i32 0)
  %27 = call i32 (...) @dsm_detach_all()
  %28 = call i32 (...) @PGSharedMemoryDetach()
  %29 = call i32 @PgArchiverMain(i32 0, i32* null)
  br label %33

30:                                               ; preds = %17
  %31 = load i64, i64* %3, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %1, align 4
  br label %34

33:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %33, %30, %20, %16, %6
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @XLogArchivingActive(...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @fork_process(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @InitPostmasterChild(...) #1

declare dso_local i32 @ClosePostmasterPorts(i32) #1

declare dso_local i32 @dsm_detach_all(...) #1

declare dso_local i32 @PGSharedMemoryDetach(...) #1

declare dso_local i32 @PgArchiverMain(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
