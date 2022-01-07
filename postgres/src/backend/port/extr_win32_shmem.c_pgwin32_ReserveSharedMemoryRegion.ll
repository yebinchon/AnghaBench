; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_shmem.c_pgwin32_ReserveSharedMemoryRegion.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_shmem.c_pgwin32_ReserveSharedMemoryRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ShmemProtectiveRegion = common dso_local global i8* null, align 8
@UsedShmemSegAddr = common dso_local global i8* null, align 8
@UsedShmemSegSize = common dso_local global i64 0, align 8
@PROTECTIVE_REGION_SIZE = common dso_local global i64 0, align 8
@MEM_RESERVE = common dso_local global i32 0, align 4
@PAGE_NOACCESS = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"could not reserve shared memory region (addr=%p) for child %p: error code %lu\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"reserved shared memory region got incorrect address %p, expected %p\00", align 1
@PAGE_READWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgwin32_ReserveSharedMemoryRegion(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i8*, i8** @ShmemProtectiveRegion, align 8
  %6 = icmp ne i8* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load i8*, i8** @UsedShmemSegAddr, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load i64, i64* @UsedShmemSegSize, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i8*, i8** @ShmemProtectiveRegion, align 8
  %19 = load i64, i64* @PROTECTIVE_REGION_SIZE, align 8
  %20 = load i32, i32* @MEM_RESERVE, align 4
  %21 = load i32, i32* @PAGE_NOACCESS, align 4
  %22 = call i8* @VirtualAllocEx(i32 %17, i8* %18, i64 %19, i32 %20, i32 %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load i32, i32* @LOG, align 4
  %27 = load i8*, i8** @ShmemProtectiveRegion, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 (i32, i8*, i8*, i8*, ...) @elog(i32 %26, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %69

33:                                               ; preds = %1
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** @ShmemProtectiveRegion, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @LOG, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** @ShmemProtectiveRegion, align 8
  %41 = call i32 (i32, i8*, i8*, i8*, ...) @elog(i32 %38, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40)
  store i32 0, i32* %2, align 4
  br label %69

42:                                               ; preds = %33
  %43 = load i32, i32* %3, align 4
  %44 = load i8*, i8** @UsedShmemSegAddr, align 8
  %45 = load i64, i64* @UsedShmemSegSize, align 8
  %46 = load i32, i32* @MEM_RESERVE, align 4
  %47 = load i32, i32* @PAGE_READWRITE, align 4
  %48 = call i8* @VirtualAllocEx(i32 %43, i8* %44, i64 %45, i32 %46, i32 %47)
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load i32, i32* @LOG, align 4
  %53 = load i8*, i8** @UsedShmemSegAddr, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (...) @GetLastError()
  %58 = call i32 (i32, i8*, i8*, i8*, ...) @elog(i32 %52, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8* %53, i8* %56, i32 %57)
  store i32 0, i32* %2, align 4
  br label %69

59:                                               ; preds = %42
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** @UsedShmemSegAddr, align 8
  %62 = icmp ne i8* %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @LOG, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** @UsedShmemSegAddr, align 8
  %67 = call i32 (i32, i8*, i8*, i8*, ...) @elog(i32 %64, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %66)
  store i32 0, i32* %2, align 4
  br label %69

68:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %63, %51, %37, %25
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @VirtualAllocEx(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
