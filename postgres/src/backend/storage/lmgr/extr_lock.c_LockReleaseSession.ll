; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockReleaseSession.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockReleaseSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LockMethods = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unrecognized lock method: %d\00", align 1
@LockMethodLocalHash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LockReleaseSession(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp sle i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i32, i32* @LockMethods, align 4
  %10 = call i64 @lengthof(i32 %9)
  %11 = icmp sge i64 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @elog(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %16

16:                                               ; preds = %12, %7
  %17 = load i32, i32* @LockMethodLocalHash, align 4
  %18 = call i32 @hash_seq_init(i32* %3, i32 %17)
  br label %19

19:                                               ; preds = %30, %29, %16
  %20 = call i64 @hash_seq_search(i32* %3)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @LOCALLOCK_LOCKMETHOD(i32 %25)
  %27 = load i64, i64* %2, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %19

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ReleaseLockIfHeld(i32* %31, i32 1)
  br label %19

33:                                               ; preds = %19
  ret void
}

declare dso_local i64 @lengthof(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i64 @LOCALLOCK_LOCKMETHOD(i32) #1

declare dso_local i32 @ReleaseLockIfHeld(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
