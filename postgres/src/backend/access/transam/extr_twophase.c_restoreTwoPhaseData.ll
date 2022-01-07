; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_restoreTwoPhaseData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_restoreTwoPhaseData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@TwoPhaseStateLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@TWOPHASE_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@InvalidRepOriginId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restoreTwoPhaseData() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @TwoPhaseStateLock, align 4
  %6 = load i32, i32* @LW_EXCLUSIVE, align 4
  %7 = call i32 @LWLockAcquire(i32 %5, i32 %6)
  %8 = load i32, i32* @TWOPHASE_DIR, align 4
  %9 = call i32* @AllocateDir(i32 %8)
  store i32* %9, i32** %1, align 8
  br label %10

10:                                               ; preds = %44, %37, %0
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* @TWOPHASE_DIR, align 4
  %13 = call %struct.dirent* @ReadDir(i32* %11, i32 %12)
  store %struct.dirent* %13, %struct.dirent** %2, align 8
  %14 = icmp ne %struct.dirent* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = load %struct.dirent*, %struct.dirent** %2, align 8
  %17 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strlen(i32 %18)
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load %struct.dirent*, %struct.dirent** %2, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strspn(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.dirent*, %struct.dirent** %2, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strtoul(i32 %30, i32* null, i32 16)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* @InvalidXLogRecPtr, align 4
  %34 = call i8* @ProcessTwoPhaseBuffer(i64 %32, i32 %33, i32 1, i32 0, i32 0)
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %10

38:                                               ; preds = %27
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @InvalidXLogRecPtr, align 4
  %41 = load i32, i32* @InvalidXLogRecPtr, align 4
  %42 = load i32, i32* @InvalidRepOriginId, align 4
  %43 = call i32 @PrepareRedoAdd(i8* %39, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %21, %15
  br label %10

45:                                               ; preds = %10
  %46 = load i32, i32* @TwoPhaseStateLock, align 4
  %47 = call i32 @LWLockRelease(i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @FreeDir(i32* %48)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32* @AllocateDir(i32) #1

declare dso_local %struct.dirent* @ReadDir(i32*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strspn(i32, i8*) #1

declare dso_local i64 @strtoul(i32, i32*, i32) #1

declare dso_local i8* @ProcessTwoPhaseBuffer(i64, i32, i32, i32, i32) #1

declare dso_local i32 @PrepareRedoAdd(i8*, i32, i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @FreeDir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
