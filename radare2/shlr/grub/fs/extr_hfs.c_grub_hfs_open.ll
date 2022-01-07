; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_file = type { %struct.grub_hfs_data*, i64, i8*, %struct.TYPE_2__* }
%struct.grub_hfs_data = type { i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.grub_hfs_filerec = type { i64, i32, i32, i32, i32 }

@my_mod = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@GRUB_HFS_FILETYPE_FILE = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FILE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"not a file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_file*, i8*)* @grub_hfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfs_open(%struct.grub_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grub_hfs_data*, align 8
  %7 = alloca %struct.grub_hfs_filerec, align 8
  store %struct.grub_file* %0, %struct.grub_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = bitcast %struct.grub_hfs_filerec* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i32, i32* @my_mod, align 4
  %10 = call i32 @grub_dl_ref(i32 %9)
  %11 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %12 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.grub_hfs_data* @grub_hfs_mount(i32 %15)
  store %struct.grub_hfs_data* %16, %struct.grub_hfs_data** %6, align 8
  %17 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @grub_hfs_find_dir(%struct.grub_hfs_data* %17, i8* %18, %struct.grub_hfs_filerec* %7, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %6, align 8
  %23 = call i32 @grub_free(%struct.grub_hfs_data* %22)
  %24 = load i32, i32* @my_mod, align 4
  %25 = call i32 @grub_dl_unref(i32 %24)
  %26 = load i32, i32* @grub_errno, align 4
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.grub_hfs_filerec, %struct.grub_hfs_filerec* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GRUB_HFS_FILETYPE_FILE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %6, align 8
  %34 = call i32 @grub_free(%struct.grub_hfs_data* %33)
  %35 = load i32, i32* @GRUB_ERR_BAD_FILE_TYPE, align 4
  %36 = call i32 @grub_error(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @my_mod, align 4
  %38 = call i32 @grub_dl_unref(i32 %37)
  %39 = load i32, i32* @grub_errno, align 4
  store i32 %39, i32* %3, align 4
  br label %67

40:                                               ; preds = %27
  %41 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %6, align 8
  %42 = getelementptr inbounds %struct.grub_hfs_data, %struct.grub_hfs_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.grub_hfs_filerec, %struct.grub_hfs_filerec* %7, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @grub_memcpy(i32 %43, i32 %45, i32 4)
  %47 = getelementptr inbounds %struct.grub_hfs_filerec, %struct.grub_hfs_filerec* %7, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @grub_be_to_cpu32(i32 %48)
  %50 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %51 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = getelementptr inbounds %struct.grub_hfs_filerec, %struct.grub_hfs_filerec* %7, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @grub_be_to_cpu32(i32 %53)
  %55 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %6, align 8
  %56 = getelementptr inbounds %struct.grub_hfs_data, %struct.grub_hfs_data* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds %struct.grub_hfs_filerec, %struct.grub_hfs_filerec* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @grub_be_to_cpu32(i32 %58)
  %60 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %6, align 8
  %61 = getelementptr inbounds %struct.grub_hfs_data, %struct.grub_hfs_data* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %63 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %6, align 8
  %65 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %66 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %65, i32 0, i32 0
  store %struct.grub_hfs_data* %64, %struct.grub_hfs_data** %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %40, %32, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @grub_dl_ref(i32) #2

declare dso_local %struct.grub_hfs_data* @grub_hfs_mount(i32) #2

declare dso_local i64 @grub_hfs_find_dir(%struct.grub_hfs_data*, i8*, %struct.grub_hfs_filerec*, i32) #2

declare dso_local i32 @grub_free(%struct.grub_hfs_data*) #2

declare dso_local i32 @grub_dl_unref(i32) #2

declare dso_local i32 @grub_error(i32, i8*) #2

declare dso_local i32 @grub_memcpy(i32, i32, i32) #2

declare dso_local i8* @grub_be_to_cpu32(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
