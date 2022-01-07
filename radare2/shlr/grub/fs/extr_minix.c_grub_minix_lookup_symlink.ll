; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_lookup_symlink.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_lookup_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_minix_data = type { i64 }

@GRUB_MINIX_MAX_SYMLNK_CNT = common dso_local global i64 0, align 8
@GRUB_ERR_SYMLINK_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"too deep nesting of symlinks\00", align 1
@grub_errno = common dso_local global i64 0, align 8
@GRUB_MINIX_ROOT_INODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot follow symlink `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_minix_data*, i32)* @grub_minix_lookup_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_minix_lookup_symlink(%struct.grub_minix_data* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.grub_minix_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.grub_minix_data* %0, %struct.grub_minix_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %10 = call i64 @GRUB_MINIX_INODE_SIZE(%struct.grub_minix_data* %9)
  %11 = add i64 %10, 1
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %15 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = load i64, i64* @GRUB_MINIX_MAX_SYMLNK_CNT, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @GRUB_ERR_SYMLINK_LOOP, align 4
  %22 = sext i32 %21 to i64
  %23 = call i64 (i64, i8*, ...) @grub_error(i64 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i64 %23, i64* %3, align 8
  store i32 1, i32* %8, align 4
  br label %59

24:                                               ; preds = %2
  %25 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %26 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %27 = call i64 @GRUB_MINIX_INODE_SIZE(%struct.grub_minix_data* %26)
  %28 = call i64 @grub_minix_read_file(%struct.grub_minix_data* %25, i32 0, i32 0, i32 0, i64 %27, i8* %13)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i64, i64* @grub_errno, align 8
  store i64 %31, i64* %3, align 8
  store i32 1, i32* %8, align 4
  br label %59

32:                                               ; preds = %24
  %33 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %34 = call i64 @GRUB_MINIX_INODE_SIZE(%struct.grub_minix_data* %33)
  %35 = getelementptr inbounds i8, i8* %13, i64 %34
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds i8, i8* %13, i64 0
  %37 = load i8, i8* %36, align 16
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @GRUB_MINIX_ROOT_INODE, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %32
  %43 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @grub_minix_read_inode(%struct.grub_minix_data* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* @grub_errno, align 8
  store i64 %48, i64* %3, align 8
  store i32 1, i32* %8, align 4
  br label %59

49:                                               ; preds = %42
  %50 = load %struct.grub_minix_data*, %struct.grub_minix_data** %4, align 8
  %51 = call i32 @grub_minix_find_file(%struct.grub_minix_data* %50, i8* %13)
  %52 = load i64, i64* @grub_errno, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, i64* @grub_errno, align 8
  %56 = call i64 (i64, i8*, ...) @grub_error(i64 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i64, i64* @grub_errno, align 8
  store i64 %58, i64* %3, align 8
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %47, %30, %20
  %60 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local i64 @GRUB_MINIX_INODE_SIZE(%struct.grub_minix_data*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @grub_error(i64, i8*, ...) #1

declare dso_local i64 @grub_minix_read_file(%struct.grub_minix_data*, i32, i32, i32, i64, i8*) #1

declare dso_local i64 @grub_minix_read_inode(%struct.grub_minix_data*, i32) #1

declare dso_local i32 @grub_minix_find_file(%struct.grub_minix_data*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
