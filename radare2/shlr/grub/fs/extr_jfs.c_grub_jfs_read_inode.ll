; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_read_inode.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_jfs_data = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.grub_jfs_inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.grub_jfs_iag = type { %struct.TYPE_3__* }

@grub_errno = common dso_local global i64 0, align 8
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_jfs_data*, i32, %struct.grub_jfs_inode*)* @grub_jfs_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_jfs_read_inode(%struct.grub_jfs_data* %0, i32 %1, %struct.grub_jfs_inode* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.grub_jfs_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.grub_jfs_inode*, align 8
  %8 = alloca %struct.grub_jfs_iag, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.grub_jfs_data* %0, %struct.grub_jfs_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.grub_jfs_inode* %2, %struct.grub_jfs_inode** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 4096
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = srem i32 %16, 4096
  %18 = sdiv i32 %17, 32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = srem i32 %19, 4096
  %21 = srem i32 %20, 32
  store i32 %21, i32* %11, align 4
  %22 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %5, align 8
  %23 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %5, align 8
  %24 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %23, i32 0, i32 2
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @grub_jfs_blkno(%struct.grub_jfs_data* %22, i32* %24, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i64, i64* @grub_errno, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i64, i64* @grub_errno, align 8
  store i64 %31, i64* %4, align 8
  br label %81

32:                                               ; preds = %3
  %33 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %5, align 8
  %34 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %5, align 8
  %38 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @grub_le_to_cpu16(i32 %40)
  %42 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %43 = sub nsw i32 %41, %42
  %44 = shl i32 %36, %43
  %45 = bitcast %struct.grub_jfs_iag* %8 to %struct.grub_jfs_inode*
  %46 = call i64 @grub_disk_read(i32 %35, i32 %44, i32 0, i32 8, %struct.grub_jfs_inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i64, i64* @grub_errno, align 8
  store i64 %49, i64* %4, align 8
  br label %81

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.grub_jfs_iag, %struct.grub_jfs_iag* %8, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @grub_le_to_cpu32(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %5, align 8
  %60 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @grub_le_to_cpu16(i32 %62)
  %64 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* %13, align 4
  %67 = shl i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %5, align 8
  %72 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.grub_jfs_inode*, %struct.grub_jfs_inode** %7, align 8
  %76 = call i64 @grub_disk_read(i32 %73, i32 %74, i32 0, i32 8, %struct.grub_jfs_inode* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %50
  %79 = load i64, i64* @grub_errno, align 8
  store i64 %79, i64* %4, align 8
  br label %81

80:                                               ; preds = %50
  store i64 0, i64* %4, align 8
  br label %81

81:                                               ; preds = %80, %78, %48, %30
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i32 @grub_jfs_blkno(%struct.grub_jfs_data*, i32*, i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, %struct.grub_jfs_inode*) #1

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
