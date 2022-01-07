; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_sfs.c_grub_sfs_read_symlink.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_sfs.c_grub_sfs_read_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.grub_sfs_data* }
%struct.grub_sfs_data = type { i32, i32 }

@grub_errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @grub_sfs_read_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grub_sfs_read_symlink(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.grub_sfs_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.grub_sfs_data*, %struct.grub_sfs_data** %8, align 8
  store %struct.grub_sfs_data* %9, %struct.grub_sfs_data** %4, align 8
  %10 = load %struct.grub_sfs_data*, %struct.grub_sfs_data** %4, align 8
  %11 = getelementptr inbounds %struct.grub_sfs_data, %struct.grub_sfs_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @grub_malloc(i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.grub_sfs_data*, %struct.grub_sfs_data** %4, align 8
  %19 = getelementptr inbounds %struct.grub_sfs_data, %struct.grub_sfs_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.grub_sfs_data*, %struct.grub_sfs_data** %4, align 8
  %25 = getelementptr inbounds %struct.grub_sfs_data, %struct.grub_sfs_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @grub_disk_read(i32 %20, i32 %23, i32 0, i32 %26, i8* %27)
  %29 = load i64, i64* @grub_errno, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @grub_free(i8* %32)
  store i8* null, i8** %2, align 8
  br label %45

34:                                               ; preds = %17
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 24
  %37 = call i8* @grub_strdup(i8* %36)
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @grub_free(i8* %38)
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i8* null, i8** %2, align 8
  br label %45

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** %2, align 8
  br label %45

45:                                               ; preds = %43, %42, %31, %16
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i8* @grub_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
