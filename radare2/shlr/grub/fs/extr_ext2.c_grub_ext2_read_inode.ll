; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_grub_ext2_read_inode.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_grub_ext2_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ext2_data = type { i32, %struct.grub_ext2_sblock }
%struct.grub_ext2_sblock = type { i32 }
%struct.grub_ext2_inode = type { i32 }
%struct.grub_ext2_block_group = type { i32 }

@GRUB_ERR_BAD_FS = common dso_local global i64 0, align 8
@grub_errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_ext2_data*, i32, %struct.grub_ext2_inode*)* @grub_ext2_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_ext2_read_inode(%struct.grub_ext2_data* %0, i32 %1, %struct.grub_ext2_inode* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.grub_ext2_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.grub_ext2_inode*, align 8
  %8 = alloca %struct.grub_ext2_block_group, align 4
  %9 = alloca %struct.grub_ext2_sblock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.grub_ext2_data* %0, %struct.grub_ext2_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.grub_ext2_inode* %2, %struct.grub_ext2_inode** %7, align 8
  %15 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %5, align 8
  %16 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %15, i32 0, i32 1
  store %struct.grub_ext2_sblock* %16, %struct.grub_ext2_sblock** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = load %struct.grub_ext2_sblock*, %struct.grub_ext2_sblock** %9, align 8
  %20 = getelementptr inbounds %struct.grub_ext2_sblock, %struct.grub_ext2_sblock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @grub_le_to_cpu32(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* @GRUB_ERR_BAD_FS, align 8
  store i64 %26, i64* @grub_errno, align 8
  store i64 %26, i64* %4, align 8
  br label %91

27:                                               ; preds = %3
  %28 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %13, align 4
  %31 = sdiv i32 %29, %30
  %32 = call i32 @grub_ext2_blockgroup(%struct.grub_ext2_data* %28, i32 %31, %struct.grub_ext2_block_group* %8)
  %33 = load i64, i64* @grub_errno, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* @grub_errno, align 8
  store i64 %36, i64* %4, align 8
  br label %91

37:                                               ; preds = %27
  %38 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %5, align 8
  %39 = call i32 @EXT2_INODE_SIZE(%struct.grub_ext2_data* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @GRUB_ERR_BAD_FS, align 8
  store i64 %43, i64* @grub_errno, align 8
  store i64 %43, i64* %4, align 8
  br label %91

44:                                               ; preds = %37
  %45 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %5, align 8
  %46 = call i32 @EXT2_BLOCK_SIZE(%struct.grub_ext2_data* %45)
  %47 = load i32, i32* %14, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i64, i64* @GRUB_ERR_BAD_FS, align 8
  store i64 %52, i64* @grub_errno, align 8
  store i64 %52, i64* %4, align 8
  br label %91

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.grub_ext2_sblock*, %struct.grub_ext2_sblock** %9, align 8
  %56 = getelementptr inbounds %struct.grub_ext2_sblock, %struct.grub_ext2_sblock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @grub_le_to_cpu32(i32 %57)
  %59 = urem i32 %54, %58
  %60 = load i32, i32* %10, align 4
  %61 = udiv i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.grub_ext2_sblock*, %struct.grub_ext2_sblock** %9, align 8
  %64 = getelementptr inbounds %struct.grub_ext2_sblock, %struct.grub_ext2_sblock* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @grub_le_to_cpu32(i32 %65)
  %67 = urem i32 %62, %66
  %68 = load i32, i32* %10, align 4
  %69 = urem i32 %67, %68
  store i32 %69, i32* %12, align 4
  %70 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %5, align 8
  %71 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.grub_ext2_block_group, %struct.grub_ext2_block_group* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @grub_le_to_cpu32(i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %75, %76
  %78 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %5, align 8
  %79 = call i32 @LOG2_EXT2_BLOCK_SIZE(%struct.grub_ext2_data* %78)
  %80 = shl i32 %77, %79
  %81 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %5, align 8
  %82 = call i32 @EXT2_INODE_SIZE(%struct.grub_ext2_data* %81)
  %83 = load i32, i32* %12, align 4
  %84 = mul i32 %82, %83
  %85 = load %struct.grub_ext2_inode*, %struct.grub_ext2_inode** %7, align 8
  %86 = call i64 @grub_disk_read(i32 %72, i32 %80, i32 %84, i32 4, %struct.grub_ext2_inode* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %53
  %89 = load i64, i64* @grub_errno, align 8
  store i64 %89, i64* %4, align 8
  br label %91

90:                                               ; preds = %53
  store i64 0, i64* %4, align 8
  br label %91

91:                                               ; preds = %90, %88, %51, %42, %35, %25
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local i32 @grub_ext2_blockgroup(%struct.grub_ext2_data*, i32, %struct.grub_ext2_block_group*) #1

declare dso_local i32 @EXT2_INODE_SIZE(%struct.grub_ext2_data*) #1

declare dso_local i32 @EXT2_BLOCK_SIZE(%struct.grub_ext2_data*) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, %struct.grub_ext2_inode*) #1

declare dso_local i32 @LOG2_EXT2_BLOCK_SIZE(%struct.grub_ext2_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
