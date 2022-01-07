; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_check_block.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_check_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readbuf = common dso_local global i32 0, align 4
@TFFS_BLOCK_HEADER_MAGIC = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Warning: block without magic header. Skipping block\0A\00", align 1
@TFFS_SECTORS_PER_PAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"Warning: block with wrong number of sectors per page. Skipping block\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @check_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_block(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @check_sector(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @read_sector(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %59

18:                                               ; preds = %13
  %19 = load i32, i32* @readbuf, align 4
  %20 = call i32 @read_uint64(i32 %19, i32 0)
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @TFFS_BLOCK_HEADER_MAGIC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

27:                                               ; preds = %18
  %28 = load i32, i32* @readbuf, align 4
  %29 = call i64 @read_uint32(i32 %28, i32 12)
  %30 = load i64, i64* @TFFS_SECTORS_PER_PAGE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

35:                                               ; preds = %27
  %36 = load i32, i32* @readbuf, align 4
  %37 = call i64 @read_uint32(i32 %36, i32 12)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %55, %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @readbuf, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = add i64 28, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @read_uint64(i32 %45, i32 %50)
  %52 = add nsw i32 %44, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @sector_mark_bad(i32 %53)
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %39

58:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %32, %24, %17, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @check_sector(i32) #1

declare dso_local i64 @read_sector(i32) #1

declare dso_local i32 @read_uint64(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @read_uint32(i32, i32) #1

declare dso_local i32 @sector_mark_bad(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
