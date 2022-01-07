; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_lookup_symlink.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_lookup_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ufs_data = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GRUB_UFS_MAX_SYMLNK_CNT = common dso_local global i64 0, align 8
@GRUB_ERR_SYMLINK_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"too deep nesting of symlinks\00", align 1
@GRUB_UFS_INODE = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot follow symlink `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_ufs_data*, i32)* @grub_ufs_lookup_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_ufs_lookup_symlink(%struct.grub_ufs_data* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.grub_ufs_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.grub_ufs_data* %0, %struct.grub_ufs_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %10 = call i64 @INODE_SIZE(%struct.grub_ufs_data* %9)
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %14 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* @GRUB_UFS_MAX_SYMLNK_CNT, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @GRUB_ERR_SYMLINK_LOOP, align 4
  %21 = sext i32 %20 to i64
  %22 = call i64 (i64, i8*, ...) @grub_error(i64 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i64 %22, i64* %3, align 8
  store i32 1, i32* %8, align 4
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %25 = call i64 @INODE_NBLOCKS(%struct.grub_ufs_data* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %29 = call i64 @INODE(%struct.grub_ufs_data* %28, i8* %12)
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @grub_strcpy(i8* %12, i8* %30)
  br label %53

32:                                               ; preds = %23
  %33 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %34 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %37 = call i32 @INODE_DIRBLOCKS(%struct.grub_ufs_data* %36, i32 0)
  %38 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %39 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %43 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @grub_num_to_cpu32(i32 %41, i32 %44)
  %46 = shl i32 %37, %45
  %47 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %48 = call i64 @INODE_SIZE(%struct.grub_ufs_data* %47)
  %49 = call i32 @grub_disk_read(i32 %35, i32 %46, i32 0, i64 %48, i8* %12)
  %50 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %51 = call i64 @INODE_SIZE(%struct.grub_ufs_data* %50)
  %52 = getelementptr inbounds i8, i8* %12, i64 %51
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %32, %27
  %54 = getelementptr inbounds i8, i8* %12, i64 0
  %55 = load i8, i8* %54, align 16
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @GRUB_UFS_INODE, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @grub_ufs_read_inode(%struct.grub_ufs_data* %61, i32 %62, i32 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i64, i64* @grub_errno, align 8
  store i64 %66, i64* %3, align 8
  store i32 1, i32* %8, align 4
  br label %77

67:                                               ; preds = %60
  %68 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %69 = call i32 @grub_ufs_find_file(%struct.grub_ufs_data* %68, i8* %12)
  %70 = load i64, i64* @grub_errno, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i64, i64* @grub_errno, align 8
  %74 = call i64 (i64, i8*, ...) @grub_error(i64 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i64, i64* @grub_errno, align 8
  store i64 %76, i64* %3, align 8
  store i32 1, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %65, %19
  %78 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i64 @INODE_SIZE(%struct.grub_ufs_data*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @grub_error(i64, i8*, ...) #1

declare dso_local i64 @INODE_NBLOCKS(%struct.grub_ufs_data*) #1

declare dso_local i32 @grub_strcpy(i8*, i8*) #1

declare dso_local i64 @INODE(%struct.grub_ufs_data*, i8*) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i64, i8*) #1

declare dso_local i32 @INODE_DIRBLOCKS(%struct.grub_ufs_data*, i32) #1

declare dso_local i32 @grub_num_to_cpu32(i32, i32) #1

declare dso_local i64 @grub_ufs_read_inode(%struct.grub_ufs_data*, i32, i32) #1

declare dso_local i32 @grub_ufs_find_file(%struct.grub_ufs_data*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
