; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/partmap/extr_acorn.c_acorn_partition_map_find.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/partmap/extr_acorn.c_acorn_partition_map_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_part = type { i32, i32*, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.grub_acorn_boot_block = type { i32, i32*, i64, i32, %struct.TYPE_2__ }

@GRUB_DISK_SECTOR_SIZE = common dso_local global i32 0, align 4
@NONADFS_PARTITION_TYPE_MASK = common dso_local global i32 0, align 4
@NONADFS_PARTITION_TYPE_LINUX = common dso_local global i32 0, align 4
@LINUX_MAP_ENTRIES = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_PART_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Linux/ADFS partition map not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.linux_part*, i32*)* @acorn_partition_map_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acorn_partition_map_find(i32 %0, %struct.linux_part* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.linux_part*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.grub_acorn_boot_block, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.linux_part* %1, %struct.linux_part** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %16 = sdiv i32 3072, %15
  %17 = bitcast %struct.grub_acorn_boot_block* %8 to %struct.linux_part*
  %18 = call i64 @grub_disk_read(i32 %14, i32 %16, i32 0, i32 40, %struct.linux_part* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %4, align 8
  br label %91

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.grub_acorn_boot_block, %struct.grub_acorn_boot_block* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NONADFS_PARTITION_TYPE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @NONADFS_PARTITION_TYPE_LINUX, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %88

31:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 511
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 255
  %38 = load i32, i32* %10, align 4
  %39 = lshr i32 %38, 8
  %40 = add i32 %37, %39
  %41 = getelementptr inbounds %struct.grub_acorn_boot_block, %struct.grub_acorn_boot_block* %8, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %40, %46
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.grub_acorn_boot_block, %struct.grub_acorn_boot_block* %8, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %88

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.grub_acorn_boot_block, %struct.grub_acorn_boot_block* %8, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.grub_acorn_boot_block, %struct.grub_acorn_boot_block* %8, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 6
  %66 = and i32 %65, 1
  %67 = add nsw i32 %61, %66
  store i32 %67, i32* %11, align 4
  %68 = getelementptr inbounds %struct.grub_acorn_boot_block, %struct.grub_acorn_boot_block* %8, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = mul i32 %70, %71
  store i32 %72, i32* %12, align 4
  %73 = getelementptr inbounds %struct.grub_acorn_boot_block, %struct.grub_acorn_boot_block* %8, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @grub_le_to_cpu16(i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = mul i32 %75, %76
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @LINUX_MAP_ENTRIES, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 40, %83
  %85 = trunc i64 %84 to i32
  %86 = load %struct.linux_part*, %struct.linux_part** %6, align 8
  %87 = call i64 @grub_disk_read(i32 %79, i32 %81, i32 0, i32 %85, %struct.linux_part* %86)
  store i64 %87, i64* %4, align 8
  br label %91

88:                                               ; preds = %57, %30
  %89 = load i32, i32* @GRUB_ERR_BAD_PART_TABLE, align 4
  %90 = call i64 @grub_error(i32 %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %88, %58, %21
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, %struct.linux_part*) #1

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local i64 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
