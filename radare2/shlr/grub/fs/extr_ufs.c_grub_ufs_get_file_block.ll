; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_get_file_block.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_get_file_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ufs_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GRUB_UFS_DIRBLKS = common dso_local global i32 0, align 4
@INODE_BLKSZ = common dso_local global i32 0, align 4
@GRUB_ERR_NOT_IMPLEMENTED_YET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ufs does not support triple indirect blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_ufs_data*, i32)* @grub_ufs_get_file_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_ufs_get_file_block(%struct.grub_ufs_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_ufs_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.grub_ufs_data* %0, %struct.grub_ufs_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %14 = call i32 @UFS_BLKSZ(%struct.grub_ufs_data* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @GRUB_UFS_DIRBLKS, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @INODE_DIRBLOCKS(%struct.grub_ufs_data* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %110

22:                                               ; preds = %2
  %23 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %24 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %28 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @grub_num_to_cpu32(i32 %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @GRUB_UFS_DIRBLKS, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @INODE_BLKSZ, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 4
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %9, align 8
  %45 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %10, align 8
  %46 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %47 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %50 = call i32 @INODE_INDIRBLOCKS(%struct.grub_ufs_data* %49, i32 0)
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 %50, %51
  %53 = mul nuw i64 4, %43
  %54 = trunc i64 %53 to i32
  %55 = call i32 @grub_disk_read(i32 %48, i32 %52, i32 0, i32 %54, i32* %45)
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %45, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  %60 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %60)
  br label %110

61:                                               ; preds = %22
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = mul i32 %66, %67
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %72, 4
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %11, align 8
  %75 = alloca i32, i64 %73, align 16
  store i64 %73, i64* %12, align 8
  %76 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %77 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %80 = call i32 @INODE_INDIRBLOCKS(%struct.grub_ufs_data* %79, i32 1)
  %81 = load i32, i32* %8, align 4
  %82 = shl i32 %80, %81
  %83 = mul nuw i64 4, %73
  %84 = trunc i64 %83 to i32
  %85 = call i32 @grub_disk_read(i32 %78, i32 %82, i32 0, i32 %84, i32* %75)
  %86 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %87 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = udiv i32 %89, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %75, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 %94, %95
  %97 = mul nuw i64 4, %73
  %98 = trunc i64 %97 to i32
  %99 = call i32 @grub_disk_read(i32 %88, i32 %96, i32 0, i32 %98, i32* %75)
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %7, align 4
  %102 = urem i32 %100, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %75, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %3, align 4
  %106 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %106)
  br label %110

107:                                              ; preds = %61
  %108 = load i32, i32* @GRUB_ERR_NOT_IMPLEMENTED_YET, align 4
  %109 = call i32 @grub_error(i32 %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %70, %40, %18
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @UFS_BLKSZ(%struct.grub_ufs_data*) #1

declare dso_local i32 @INODE_DIRBLOCKS(%struct.grub_ufs_data*, i32) #1

declare dso_local i32 @grub_num_to_cpu32(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @INODE_INDIRBLOCKS(%struct.grub_ufs_data*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
