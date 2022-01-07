; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_shmem.c_PGSharedMemoryDetach.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_shmem.c_PGSharedMemoryDetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ShmemProtectiveRegion = common dso_local global i32* null, align 8
@MEM_RELEASE = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"failed to release reserved memory region (addr=%p): error code %lu\00", align 1
@UsedShmemSegAddr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"could not unmap view of shared memory: error code %lu\00", align 1
@UsedShmemSegID = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"could not close handle to shared memory: error code %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PGSharedMemoryDetach() #0 {
  %1 = load i32*, i32** @ShmemProtectiveRegion, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = load i32*, i32** @ShmemProtectiveRegion, align 8
  %5 = load i32, i32* @MEM_RELEASE, align 4
  %6 = call i64 @VirtualFree(i32* %4, i32 0, i32 %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = load i32, i32* @LOG, align 4
  %10 = load i32*, i32** @ShmemProtectiveRegion, align 8
  %11 = ptrtoint i32* %10 to i32
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 (i32, i8*, i32, ...) @elog(i32 %9, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %8, %3
  store i32* null, i32** @ShmemProtectiveRegion, align 8
  br label %15

15:                                               ; preds = %14, %0
  %16 = load i32*, i32** @UsedShmemSegAddr, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i32*, i32** @UsedShmemSegAddr, align 8
  %20 = call i32 @UnmapViewOfFile(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @LOG, align 4
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 (i32, i8*, i32, ...) @elog(i32 %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %18
  store i32* null, i32** @UsedShmemSegAddr, align 8
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i64, i64* @UsedShmemSegID, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i64, i64* @UsedShmemSegID, align 8
  %33 = call i32 @CloseHandle(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @LOG, align 4
  %37 = call i32 (...) @GetLastError()
  %38 = call i32 (i32, i8*, i32, ...) @elog(i32 %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %40, i64* @UsedShmemSegID, align 8
  br label %41

41:                                               ; preds = %39, %27
  ret void
}

declare dso_local i64 @VirtualFree(i32*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @UnmapViewOfFile(i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
