; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_read_mft.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_read_mft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ntfs_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BLK_SHR = common dso_local global i32 0, align 4
@read_mft_hook = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Read MFT 0x%X fails\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_ntfs_data*, i8*, i32, i32*)* @read_mft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mft(%struct.grub_ntfs_data* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.grub_ntfs_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.grub_ntfs_data* %0, %struct.grub_ntfs_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %6, align 8
  %11 = getelementptr inbounds %struct.grub_ntfs_data, %struct.grub_ntfs_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %6, align 8
  %16 = getelementptr inbounds %struct.grub_ntfs_data, %struct.grub_ntfs_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BLK_SHR, align 4
  %19 = shl i32 %17, %18
  %20 = mul nsw i32 %14, %19
  %21 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %6, align 8
  %22 = getelementptr inbounds %struct.grub_ntfs_data, %struct.grub_ntfs_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BLK_SHR, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @read_mft_hook, align 4
  %27 = call i64 @read_attr(i32* %12, i8* %13, i32 %20, i32 %25, i32 0, i32 %26, i32** %9, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @grub_error(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %5, align 4
  br label %40

33:                                               ; preds = %4
  %34 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %6, align 8
  %37 = getelementptr inbounds %struct.grub_ntfs_data, %struct.grub_ntfs_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fixup(%struct.grub_ntfs_data* %34, i8* %35, i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @read_attr(i32*, i8*, i32, i32, i32, i32, i32**, i32) #1

declare dso_local i32 @grub_error(i32, i8*, i32) #1

declare dso_local i32 @fixup(%struct.grub_ntfs_data*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
