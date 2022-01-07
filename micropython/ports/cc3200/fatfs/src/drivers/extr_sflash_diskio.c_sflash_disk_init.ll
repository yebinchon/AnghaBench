; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sflash_diskio.c_sflash_disk_init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sflash_diskio.c_sflash_disk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sflash_init_done = common dso_local global i32 0, align 4
@SFLASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@sflash_block_cache = common dso_local global i32* null, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@sflash_prblock = common dso_local global i32 0, align 4
@sflash_cache_is_dirty = common dso_local global i32 0, align 4
@SFLASH_BLOCK_COUNT = common dso_local global i32 0, align 4
@wlan_LockObj = common dso_local global i32 0, align 4
@SL_OS_WAIT_FOREVER = common dso_local global i32 0, align 4
@sflash_block_name = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i32 0, align 4
@FS_MODE_OPEN_WRITE = common dso_local global i32 0, align 4
@sl_FsWrite = common dso_local global i32 0, align 4
@RES_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sflash_disk_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @sflash_init_done, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %69, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @SFLASH_BLOCK_SIZE, align 4
  %9 = call i32* @mem_Malloc(i32 %8)
  store i32* %9, i32** @sflash_block_cache, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  store i32 1, i32* @sflash_init_done, align 4
  %13 = load i32, i32* @UINT32_MAX, align 4
  store i32 %13, i32* @sflash_prblock, align 4
  store i32 0, i32* @sflash_cache_is_dirty, align 4
  %14 = load i32, i32* @SFLASH_BLOCK_COUNT, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @print_block_name(i32 %15)
  %17 = load i32, i32* @SL_OS_WAIT_FOREVER, align 4
  %18 = call i32 @sl_LockObjLock(i32* @wlan_LockObj, i32 %17)
  %19 = load i32, i32* @sflash_block_name, align 4
  %20 = call i64 @sl_FsGetInfo(i32 %19, i32 0, i32* %3)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = call i32 @sl_LockObjUnlock(i32* @wlan_LockObj)
  %24 = load i32, i32* @RES_OK, align 4
  store i32 %24, i32* %1, align 4
  br label %71

25:                                               ; preds = %7
  %26 = call i32 @sl_LockObjUnlock(i32* @wlan_LockObj)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %65, %25
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SFLASH_BLOCK_COUNT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @print_block_name(i32 %32)
  %34 = load i32, i32* @SL_OS_WAIT_FOREVER, align 4
  %35 = call i32 @sl_LockObjLock(i32* @wlan_LockObj, i32 %34)
  %36 = load i32, i32* @sflash_block_name, align 4
  %37 = call i64 @sl_FsGetInfo(i32 %36, i32 0, i32* %3)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %31
  %40 = load i32, i32* @sflash_block_name, align 4
  %41 = load i32, i32* @SFLASH_BLOCK_SIZE, align 4
  %42 = call i32 @FS_MODE_OPEN_CREATE(i32 %41, i32 0)
  %43 = call i32 @sl_FsOpen(i32 %40, i32 %42, i32* null, i32* %2)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @sl_FsClose(i32 %46, i32* null, i32* null, i32 0)
  %48 = call i32 @sl_LockObjUnlock(i32* @wlan_LockObj)
  %49 = load i32*, i32** @sflash_block_cache, align 8
  %50 = load i32, i32* @SFLASH_BLOCK_SIZE, align 4
  %51 = call i32 @memset(i32* %49, i32 255, i32 %50)
  %52 = load i32, i32* @FS_MODE_OPEN_WRITE, align 4
  %53 = load i32, i32* @sl_FsWrite, align 4
  %54 = call i32 @sflash_access(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @RES_ERROR, align 4
  store i32 %57, i32* %1, align 4
  br label %71

58:                                               ; preds = %45
  br label %62

59:                                               ; preds = %39
  %60 = call i32 @sl_LockObjUnlock(i32* @wlan_LockObj)
  %61 = load i32, i32* @RES_ERROR, align 4
  store i32 %61, i32* %1, align 4
  br label %71

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %31
  %64 = call i32 @sl_LockObjUnlock(i32* @wlan_LockObj)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %27

68:                                               ; preds = %27
  br label %69

69:                                               ; preds = %68, %0
  %70 = load i32, i32* @RES_OK, align 4
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %69, %59, %56, %22
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @mem_Malloc(i32) #1

declare dso_local i32 @print_block_name(i32) #1

declare dso_local i32 @sl_LockObjLock(i32*, i32) #1

declare dso_local i64 @sl_FsGetInfo(i32, i32, i32*) #1

declare dso_local i32 @sl_LockObjUnlock(i32*) #1

declare dso_local i32 @sl_FsOpen(i32, i32, i32*, i32*) #1

declare dso_local i32 @FS_MODE_OPEN_CREATE(i32, i32) #1

declare dso_local i32 @sl_FsClose(i32, i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sflash_access(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
