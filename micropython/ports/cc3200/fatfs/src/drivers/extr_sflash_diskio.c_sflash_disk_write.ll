; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sflash_diskio.c_sflash_disk_write.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sflash_diskio.c_sflash_disk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sflash_init_done = common dso_local global i32 0, align 4
@STA_NOINIT = common dso_local global i64 0, align 8
@SFLASH_SECTOR_COUNT = common dso_local global i64 0, align 8
@RES_PARERR = common dso_local global i64 0, align 8
@SFLASH_SECTORS_PER_BLOCK = common dso_local global i64 0, align 8
@sflash_ublock = common dso_local global i64 0, align 8
@sflash_prblock = common dso_local global i64 0, align 8
@RES_OK = common dso_local global i64 0, align 8
@RES_ERROR = common dso_local global i64 0, align 8
@FS_MODE_OPEN_READ = common dso_local global i32 0, align 4
@sl_FsRead = common dso_local global i32 0, align 4
@sflash_block_cache = common dso_local global i32* null, align 8
@SFLASH_SECTOR_SIZE = common dso_local global i64 0, align 8
@sflash_cache_is_dirty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sflash_disk_write(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @sflash_init_done, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* @STA_NOINIT, align 8
  store i64 %13, i64* %4, align 8
  br label %77

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @SFLASH_SECTOR_COUNT, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %14
  %24 = call i64 (...) @sflash_disk_flush()
  %25 = load i64, i64* @RES_PARERR, align 8
  store i64 %25, i64* %4, align 8
  br label %77

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %70, %26
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @SFLASH_SECTORS_PER_BLOCK, align 8
  %32 = srem i64 %30, %31
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* @SFLASH_SECTORS_PER_BLOCK, align 8
  %37 = sdiv i64 %35, %36
  store i64 %37, i64* @sflash_ublock, align 8
  %38 = load i64, i64* @sflash_prblock, align 8
  %39 = load i64, i64* @sflash_ublock, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %27
  %42 = call i64 (...) @sflash_disk_flush()
  %43 = load i64, i64* @RES_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @RES_ERROR, align 8
  store i64 %46, i64* %4, align 8
  br label %77

47:                                               ; preds = %41
  %48 = load i64, i64* @sflash_ublock, align 8
  store i64 %48, i64* @sflash_prblock, align 8
  %49 = load i64, i64* @sflash_ublock, align 8
  %50 = call i32 @print_block_name(i64 %49)
  %51 = load i32, i32* @FS_MODE_OPEN_READ, align 4
  %52 = load i32, i32* @sl_FsRead, align 4
  %53 = call i32 @sflash_access(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = load i64, i64* @RES_ERROR, align 8
  store i64 %56, i64* %4, align 8
  br label %77

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i32*, i32** @sflash_block_cache, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @SFLASH_SECTOR_SIZE, align 8
  %62 = mul i64 %60, %61
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* @SFLASH_SECTOR_SIZE, align 8
  %66 = call i32 @memcpy(i32* %63, i32* %64, i64 %65)
  %67 = load i64, i64* @SFLASH_SECTOR_SIZE, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 %67
  store i32* %69, i32** %5, align 8
  store i32 1, i32* @sflash_cache_is_dirty, align 4
  br label %70

70:                                               ; preds = %58
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %27, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* @RES_OK, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %75, %55, %45, %23, %12
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i64 @sflash_disk_flush(...) #1

declare dso_local i32 @print_block_name(i64) #1

declare dso_local i32 @sflash_access(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
