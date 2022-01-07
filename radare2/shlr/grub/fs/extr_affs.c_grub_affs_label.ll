; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_affs.c_grub_affs_label.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_affs.c_grub_affs_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.grub_affs_data = type { i32, i32 }
%struct.grub_affs_file = type { i32, i64 }

@my_mod = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_SIZE = common dso_local global i32 0, align 4
@GRUB_AFFS_FILE_LOCATION = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i8**)* @grub_affs_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_affs_label(%struct.TYPE_6__* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.grub_affs_data*, align 8
  %7 = alloca %struct.grub_affs_file, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load i32, i32* @my_mod, align 4
  %13 = call i32 @grub_dl_ref(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = call %struct.grub_affs_data* @grub_affs_mount(%struct.TYPE_5__* %14)
  store %struct.grub_affs_data* %15, %struct.grub_affs_data** %6, align 8
  %16 = load %struct.grub_affs_data*, %struct.grub_affs_data** %6, align 8
  %17 = icmp ne %struct.grub_affs_data* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = load %struct.grub_affs_data*, %struct.grub_affs_data** %6, align 8
  %20 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 1
  %26 = load %struct.grub_affs_data*, %struct.grub_affs_data** %6, align 8
  %27 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %30 = load i32, i32* @GRUB_AFFS_FILE_LOCATION, align 4
  %31 = sub nsw i32 %29, %30
  %32 = mul nsw i32 %28, %31
  %33 = call i32 @grub_disk_read(i32 %21, i32 %25, i32 %32, i32 16, %struct.grub_affs_file* %7)
  %34 = load i64, i64* @grub_errno, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  br label %53

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.grub_affs_file, %struct.grub_affs_file* %7, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = getelementptr inbounds %struct.grub_affs_file, %struct.grub_affs_file* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @grub_strndup(i8* %40, i32 %42)
  %44 = load i8**, i8*** %5, align 8
  store i8* %43, i8** %44, align 8
  br label %47

45:                                               ; preds = %2
  %46 = load i8**, i8*** %5, align 8
  store i8* null, i8** %46, align 8
  br label %47

47:                                               ; preds = %45, %37
  %48 = load i32, i32* @my_mod, align 4
  %49 = call i32 @grub_dl_unref(i32 %48)
  %50 = load %struct.grub_affs_data*, %struct.grub_affs_data** %6, align 8
  %51 = call i32 @grub_free(%struct.grub_affs_data* %50)
  %52 = load i64, i64* @grub_errno, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %47, %36
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_affs_data* @grub_affs_mount(%struct.TYPE_5__*) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, %struct.grub_affs_file*) #1

declare dso_local i8* @grub_strndup(i8*, i32) #1

declare dso_local i32 @grub_dl_unref(i32) #1

declare dso_local i32 @grub_free(%struct.grub_affs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
