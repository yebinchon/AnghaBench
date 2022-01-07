; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_file = type { i32, %struct.grub_ufs_data*, %struct.TYPE_2__* }
%struct.grub_ufs_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FILENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bad filename\00", align 1
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_file*, i8*)* @grub_ufs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_ufs_open(%struct.grub_file* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.grub_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grub_ufs_data*, align 8
  store %struct.grub_file* %0, %struct.grub_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %8 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.grub_ufs_data* @grub_ufs_mount(i32 %11)
  store %struct.grub_ufs_data* %12, %struct.grub_ufs_data** %6, align 8
  %13 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %6, align 8
  %14 = icmp ne %struct.grub_ufs_data* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @grub_errno, align 8
  store i64 %16, i64* %3, align 8
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %6, align 8
  %19 = call i32 @grub_ufs_read_inode(%struct.grub_ufs_data* %18, i32 2, i32 0)
  %20 = load i64, i64* @grub_errno, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %6, align 8
  %24 = call i32 @grub_free(%struct.grub_ufs_data* %23)
  %25 = load i64, i64* @grub_errno, align 8
  store i64 %25, i64* %3, align 8
  br label %58

26:                                               ; preds = %17
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 47
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %26
  %36 = load i32, i32* @GRUB_ERR_BAD_FILENAME, align 4
  %37 = call i32 @grub_error(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @grub_errno, align 8
  store i64 %38, i64* %3, align 8
  br label %58

39:                                               ; preds = %29
  %40 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @grub_ufs_find_file(%struct.grub_ufs_data* %40, i8* %41)
  %43 = load i64, i64* @grub_errno, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %6, align 8
  %47 = call i32 @grub_free(%struct.grub_ufs_data* %46)
  %48 = load i64, i64* @grub_errno, align 8
  store i64 %48, i64* %3, align 8
  br label %58

49:                                               ; preds = %39
  %50 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %6, align 8
  %51 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %52 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %51, i32 0, i32 1
  store %struct.grub_ufs_data* %50, %struct.grub_ufs_data** %52, align 8
  %53 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %6, align 8
  %54 = call i32 @INODE_SIZE(%struct.grub_ufs_data* %53)
  %55 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %56 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %49, %45, %35, %22, %15
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local %struct.grub_ufs_data* @grub_ufs_mount(i32) #1

declare dso_local i32 @grub_ufs_read_inode(%struct.grub_ufs_data*, i32, i32) #1

declare dso_local i32 @grub_free(%struct.grub_ufs_data*) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_ufs_find_file(%struct.grub_ufs_data*, i8*) #1

declare dso_local i32 @INODE_SIZE(%struct.grub_ufs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
