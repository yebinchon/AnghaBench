; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_lookup_symlink.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_lookup_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_jfs_data = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@GRUB_JFS_MAX_SYMLNK_CNT = common dso_local global i64 0, align 8
@GRUB_ERR_SYMLINK_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"too deep nesting of symlinks\00", align 1
@grub_errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot follow symlink `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_jfs_data*, i32)* @grub_jfs_lookup_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_jfs_lookup_symlink(%struct.grub_jfs_data* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.grub_jfs_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.grub_jfs_data* %0, %struct.grub_jfs_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %11 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @grub_le_to_cpu64(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %21 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load i64, i64* @GRUB_JFS_MAX_SYMLNK_CNT, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @GRUB_ERR_SYMLINK_LOOP, align 4
  %28 = sext i32 %27 to i64
  %29 = call i64 (i64, i8*, ...) @grub_error(i64 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i64 %29, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %77

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 128
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %35 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @grub_strncpy(i8* %19, i8* %39, i32 128)
  br label %49

41:                                               ; preds = %30
  %42 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @grub_jfs_read_file(%struct.grub_jfs_data* %42, i32 0, i32 0, i32 0, i32 %43, i8* %19)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* @grub_errno, align 8
  store i64 %47, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %77

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %19, i64 %51
  store i8 0, i8* %52, align 1
  %53 = getelementptr inbounds i8, i8* %19, i64 0
  %54 = load i8, i8* %53, align 16
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 2, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %49
  %59 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %62 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %61, i32 0, i32 1
  %63 = call i64 @grub_jfs_read_inode(%struct.grub_jfs_data* %59, i32 %60, %struct.TYPE_4__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i64, i64* @grub_errno, align 8
  store i64 %66, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %77

67:                                               ; preds = %58
  %68 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %69 = call i32 @grub_jfs_find_file(%struct.grub_jfs_data* %68, i8* %19)
  %70 = load i64, i64* @grub_errno, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i64, i64* @grub_errno, align 8
  %74 = call i64 (i64, i8*, ...) @grub_error(i64 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i64, i64* @grub_errno, align 8
  store i64 %76, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %77

77:                                               ; preds = %75, %65, %46, %26
  %78 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i32 @grub_le_to_cpu64(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @grub_error(i64, i8*, ...) #1

declare dso_local i32 @grub_strncpy(i8*, i8*, i32) #1

declare dso_local i64 @grub_jfs_read_file(%struct.grub_jfs_data*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @grub_jfs_read_inode(%struct.grub_jfs_data*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @grub_jfs_find_file(%struct.grub_jfs_data*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
