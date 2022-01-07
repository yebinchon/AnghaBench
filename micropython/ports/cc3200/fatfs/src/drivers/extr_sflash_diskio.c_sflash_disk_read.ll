; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sflash_diskio.c_sflash_disk_read.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sflash_diskio.c_sflash_disk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sflash_init_done = common dso_local global i32 0, align 4
@STA_NOINIT = common dso_local global i64 0, align 8
@SFLASH_SECTOR_COUNT = common dso_local global i64 0, align 8
@RES_PARERR = common dso_local global i64 0, align 8
@SFLASH_SECTORS_PER_BLOCK = common dso_local global i32 0, align 4
@sflash_ublock = common dso_local global i32 0, align 4
@sflash_prblock = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@RES_ERROR = common dso_local global i64 0, align 8
@FS_MODE_OPEN_READ = common dso_local global i32 0, align 4
@sl_FsRead = common dso_local global i32 0, align 4
@sflash_block_cache = common dso_local global i32* null, align 8
@SFLASH_SECTOR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sflash_disk_read(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @sflash_init_done, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* @STA_NOINIT, align 8
  store i64 %13, i64* %4, align 8
  br label %81

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @SFLASH_SECTOR_COUNT, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %14
  %25 = load i64, i64* @RES_PARERR, align 8
  store i64 %25, i64* %4, align 8
  br label %81

26:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %76, %26
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @SFLASH_SECTORS_PER_BLOCK, align 4
  %37 = srem i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* @SFLASH_SECTORS_PER_BLOCK, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* @sflash_ublock, align 4
  %44 = load i32, i32* @sflash_prblock, align 4
  %45 = load i32, i32* @sflash_ublock, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %32
  %48 = call i64 (...) @sflash_disk_flush()
  %49 = load i64, i64* @RES_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @RES_ERROR, align 8
  store i64 %52, i64* %4, align 8
  br label %81

53:                                               ; preds = %47
  %54 = load i32, i32* @sflash_ublock, align 4
  store i32 %54, i32* @sflash_prblock, align 4
  %55 = load i32, i32* @sflash_ublock, align 4
  %56 = call i32 @print_block_name(i32 %55)
  %57 = load i32, i32* @FS_MODE_OPEN_READ, align 4
  %58 = load i32, i32* @sl_FsRead, align 4
  %59 = call i32 @sflash_access(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = load i64, i64* @RES_ERROR, align 8
  store i64 %62, i64* %4, align 8
  br label %81

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** @sflash_block_cache, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @SFLASH_SECTOR_SIZE, align 8
  %69 = mul i64 %67, %68
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i64, i64* @SFLASH_SECTOR_SIZE, align 8
  %72 = call i32 @memcpy(i32* %65, i32* %70, i64 %71)
  %73 = load i64, i64* @SFLASH_SECTOR_SIZE, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 %73
  store i32* %75, i32** %5, align 8
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %27

79:                                               ; preds = %27
  %80 = load i64, i64* @RES_OK, align 8
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %79, %61, %51, %24, %12
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i64 @sflash_disk_flush(...) #1

declare dso_local i32 @print_block_name(i32) #1

declare dso_local i32 @sflash_access(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
