; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_grub_ext4_find_leaf.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_grub_ext4_find_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ext2_data = type { i32 }
%struct.grub_ext4_extent_header = type { i64, i32, i32 }
%struct.grub_ext4_extent_idx = type { i32, i32, i32 }

@EXT4_EXT_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grub_ext4_extent_header* (%struct.grub_ext2_data*, i8*, %struct.grub_ext4_extent_header*, i32)* @grub_ext4_find_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grub_ext4_extent_header* @grub_ext4_find_leaf(%struct.grub_ext2_data* %0, i8* %1, %struct.grub_ext4_extent_header* %2, i32 %3) #0 {
  %5 = alloca %struct.grub_ext4_extent_header*, align 8
  %6 = alloca %struct.grub_ext2_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.grub_ext4_extent_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.grub_ext4_extent_idx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.grub_ext2_data* %0, %struct.grub_ext2_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.grub_ext4_extent_header* %2, %struct.grub_ext4_extent_header** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %13

13:                                               ; preds = %4, %90
  %14 = load %struct.grub_ext4_extent_header*, %struct.grub_ext4_extent_header** %8, align 8
  %15 = getelementptr inbounds %struct.grub_ext4_extent_header, %struct.grub_ext4_extent_header* %14, i64 1
  %16 = bitcast %struct.grub_ext4_extent_header* %15 to %struct.grub_ext4_extent_idx*
  store %struct.grub_ext4_extent_idx* %16, %struct.grub_ext4_extent_idx** %10, align 8
  %17 = load %struct.grub_ext4_extent_header*, %struct.grub_ext4_extent_header** %8, align 8
  %18 = getelementptr inbounds %struct.grub_ext4_extent_header, %struct.grub_ext4_extent_header* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @grub_le_to_cpu16(i32 %19)
  %21 = load i32, i32* @EXT4_EXT_MAGIC, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store %struct.grub_ext4_extent_header* null, %struct.grub_ext4_extent_header** %5, align 8
  br label %93

24:                                               ; preds = %13
  %25 = load %struct.grub_ext4_extent_header*, %struct.grub_ext4_extent_header** %8, align 8
  %26 = getelementptr inbounds %struct.grub_ext4_extent_header, %struct.grub_ext4_extent_header* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load %struct.grub_ext4_extent_header*, %struct.grub_ext4_extent_header** %8, align 8
  store %struct.grub_ext4_extent_header* %30, %struct.grub_ext4_extent_header** %5, align 8
  br label %93

31:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.grub_ext4_extent_header*, %struct.grub_ext4_extent_header** %8, align 8
  %35 = getelementptr inbounds %struct.grub_ext4_extent_header, %struct.grub_ext4_extent_header* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @grub_le_to_cpu16(i32 %36)
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.grub_ext4_extent_idx*, %struct.grub_ext4_extent_idx** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.grub_ext4_extent_idx, %struct.grub_ext4_extent_idx* %41, i64 %43
  %45 = getelementptr inbounds %struct.grub_ext4_extent_idx, %struct.grub_ext4_extent_idx* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @grub_le_to_cpu32(i32 %46)
  %48 = icmp slt i32 %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %32

54:                                               ; preds = %49, %32
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store %struct.grub_ext4_extent_header* null, %struct.grub_ext4_extent_header** %5, align 8
  br label %93

59:                                               ; preds = %54
  %60 = load %struct.grub_ext4_extent_idx*, %struct.grub_ext4_extent_idx** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.grub_ext4_extent_idx, %struct.grub_ext4_extent_idx* %60, i64 %62
  %64 = getelementptr inbounds %struct.grub_ext4_extent_idx, %struct.grub_ext4_extent_idx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @grub_le_to_cpu16(i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = shl i32 %67, 32
  %69 = load %struct.grub_ext4_extent_idx*, %struct.grub_ext4_extent_idx** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.grub_ext4_extent_idx, %struct.grub_ext4_extent_idx* %69, i64 %71
  %73 = getelementptr inbounds %struct.grub_ext4_extent_idx, %struct.grub_ext4_extent_idx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @grub_le_to_cpu32(i32 %74)
  %76 = add nsw i32 %68, %75
  store i32 %76, i32* %12, align 4
  %77 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %6, align 8
  %78 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %6, align 8
  %82 = call i32 @LOG2_EXT2_BLOCK_SIZE(%struct.grub_ext2_data* %81)
  %83 = shl i32 %80, %82
  %84 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %6, align 8
  %85 = call i32 @EXT2_BLOCK_SIZE(%struct.grub_ext2_data* %84)
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @grub_disk_read(i32 %79, i32 %83, i32 0, i32 %85, i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %59
  store %struct.grub_ext4_extent_header* null, %struct.grub_ext4_extent_header** %5, align 8
  br label %93

90:                                               ; preds = %59
  %91 = load i8*, i8** %7, align 8
  %92 = bitcast i8* %91 to %struct.grub_ext4_extent_header*
  store %struct.grub_ext4_extent_header* %92, %struct.grub_ext4_extent_header** %8, align 8
  br label %13

93:                                               ; preds = %89, %58, %29, %23
  %94 = load %struct.grub_ext4_extent_header*, %struct.grub_ext4_extent_header** %5, align 8
  ret %struct.grub_ext4_extent_header* %94
}

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @LOG2_EXT2_BLOCK_SIZE(%struct.grub_ext2_data*) #1

declare dso_local i32 @EXT2_BLOCK_SIZE(%struct.grub_ext2_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
