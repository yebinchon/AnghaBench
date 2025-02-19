; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_posix_sema.c_PGSemaphoreReset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_posix_sema.c_PGSemaphoreReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EDEADLK = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"sem_trywait failed: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PGSemaphoreReset(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %25, %21, %1
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @PG_SEM_REF(i32 %4)
  %6 = call i64 @sem_trywait(i32 %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = load i64, i64* @errno, align 8
  %10 = load i64, i64* @EAGAIN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @EDEADLK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8
  br label %26

17:                                               ; preds = %12
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EINTR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %3

22:                                               ; preds = %17
  %23 = load i32, i32* @FATAL, align 4
  %24 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %3
  br label %3

26:                                               ; preds = %16
  ret void
}

declare dso_local i64 @sem_trywait(i32) #1

declare dso_local i32 @PG_SEM_REF(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
