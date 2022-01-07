; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_posix_sema.c_PGSemaphoreTryLock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_posix_sema.c_PGSemaphoreTryLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EDEADLK = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"sem_trywait failed: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PGSemaphoreTryLock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @PG_SEM_REF(i32 %6)
  %8 = call i32 @sem_trywait(i32 %7)
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @EINTR, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %5, label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EAGAIN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EDEADLK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i32 0, i32* %2, align 4
  br label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @FATAL, align 4
  %32 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %18
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @sem_trywait(i32) #1

declare dso_local i32 @PG_SEM_REF(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
