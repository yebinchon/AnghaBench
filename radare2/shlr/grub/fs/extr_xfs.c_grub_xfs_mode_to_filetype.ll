; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_mode_to_filetype.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_mode_to_filetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILETYPE_INO_MASK = common dso_local global i32 0, align 4
@FILETYPE_INO_DIRECTORY = common dso_local global i32 0, align 4
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@FILETYPE_INO_SYMLINK = common dso_local global i32 0, align 4
@GRUB_FSHELP_SYMLINK = common dso_local global i32 0, align 4
@FILETYPE_INO_REG = common dso_local global i32 0, align 4
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@GRUB_FSHELP_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @grub_xfs_mode_to_filetype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_xfs_mode_to_filetype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @grub_be_to_cpu16(i32 %4)
  %6 = load i32, i32* @FILETYPE_INO_MASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @FILETYPE_INO_DIRECTORY, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @grub_be_to_cpu16(i32 %13)
  %15 = load i32, i32* @FILETYPE_INO_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @FILETYPE_INO_SYMLINK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @GRUB_FSHELP_SYMLINK, align 4
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @grub_be_to_cpu16(i32 %22)
  %24 = load i32, i32* @FILETYPE_INO_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @FILETYPE_INO_REG, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @GRUB_FSHELP_REG, align 4
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @GRUB_FSHELP_UNKNOWN, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %28, %19, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @grub_be_to_cpu16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
