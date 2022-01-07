; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_affs.c_grub_affs_read_symlink.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_affs.c_grub_affs_read_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.grub_affs_data* }
%struct.grub_affs_data = type { i32, i32 }

@GRUB_AFFS_SYMLINK_OFFSET = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"affs\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Symlink: `%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @grub_affs_read_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grub_affs_read_symlink(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.grub_affs_data*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.grub_affs_data*, %struct.grub_affs_data** %7, align 8
  store %struct.grub_affs_data* %8, %struct.grub_affs_data** %4, align 8
  %9 = load %struct.grub_affs_data*, %struct.grub_affs_data** %4, align 8
  %10 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @GRUB_AFFS_SYMLINK_SIZE(i32 %11)
  %13 = call i8* @grub_malloc(i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.grub_affs_data*, %struct.grub_affs_data** %4, align 8
  %19 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GRUB_AFFS_SYMLINK_OFFSET, align 4
  %25 = load %struct.grub_affs_data*, %struct.grub_affs_data** %4, align 8
  %26 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GRUB_AFFS_SYMLINK_SIZE(i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @grub_disk_read(i32 %20, i32 %23, i32 %24, i32 %28, i8* %29)
  %31 = load i64, i64* @grub_errno, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @grub_free(i8* %34)
  store i8* null, i8** %2, align 8
  br label %40

36:                                               ; preds = %17
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @grub_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %36, %33, %16
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @GRUB_AFFS_SYMLINK_SIZE(i32) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i32 @grub_dprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
