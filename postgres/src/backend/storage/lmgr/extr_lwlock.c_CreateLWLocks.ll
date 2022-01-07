; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_CreateLWLocks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_CreateLWLocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LW_VAL_EXCLUSIVE = common dso_local global i64 0, align 8
@MAX_BACKENDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"MAX_BACKENDS too big for lwlock.c\00", align 1
@LWLOCK_MINIMAL_SIZE = common dso_local global i32 0, align 4
@LWLOCK_PADDED_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Miscalculated LWLock padding\00", align 1
@IsUnderPostmaster = common dso_local global i32 0, align 4
@MainLWLockArray = common dso_local global i32* null, align 8
@LWTRANCHE_FIRST_USER_DEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateLWLocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = load i64, i64* @LW_VAL_EXCLUSIVE, align 8
  %5 = load i64, i64* @MAX_BACKENDS, align 8
  %6 = icmp sgt i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @StaticAssertStmt(i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @LWLOCK_MINIMAL_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ule i64 4, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i32, i32* @LWLOCK_PADDED_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ule i64 4, %14
  br label %16

16:                                               ; preds = %12, %0
  %17 = phi i1 [ false, %0 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @StaticAssertStmt(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @IsUnderPostmaster, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %16
  %23 = call i32 (...) @LWLockShmemSize()
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i64 @ShmemAlloc(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  store i8* %28, i8** %3, align 8
  %29 = load i32, i32* @LWLOCK_PADDED_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = load i8*, i8** %3, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load i32, i32* @LWLOCK_PADDED_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = urem i64 %32, %34
  %36 = sub i64 %30, %35
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** @MainLWLockArray, align 8
  %41 = load i32*, i32** @MainLWLockArray, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 -4
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %2, align 8
  %45 = load i32, i32* @LWTRANCHE_FIRST_USER_DEFINED, align 4
  %46 = load i32*, i32** %2, align 8
  store i32 %45, i32* %46, align 4
  %47 = call i32 (...) @InitializeLWLocks()
  br label %48

48:                                               ; preds = %22, %16
  %49 = call i32 (...) @RegisterLWLockTranches()
  ret void
}

declare dso_local i32 @StaticAssertStmt(i32, i8*) #1

declare dso_local i32 @LWLockShmemSize(...) #1

declare dso_local i64 @ShmemAlloc(i32) #1

declare dso_local i32 @InitializeLWLocks(...) #1

declare dso_local i32 @RegisterLWLockTranches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
