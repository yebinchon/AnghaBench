; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.grub_dirhook_info = type opaque
%struct.grub_hfs_data = type { i32 }
%struct.grub_hfs_filerec = type { i64, i32 }
%struct.grub_hfs_dir_closure = type { i32 (i8*, %struct.grub_dirhook_info.0*, i8*)*, i8* }
%struct.grub_dirhook_info.0 = type opaque

@my_mod = common dso_local global i32 0, align 4
@GRUB_HFS_FILETYPE_DIR = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FILE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not a directory\00", align 1
@grub_hfs_dir_hook = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32 (i8*, %struct.grub_dirhook_info*, i8*)*, i8*)* @grub_hfs_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfs_dir(%struct.TYPE_3__* %0, i8* %1, i32 (i8*, %struct.grub_dirhook_info*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, %struct.grub_dirhook_info*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.grub_hfs_data*, align 8
  %11 = alloca %struct.grub_hfs_filerec, align 8
  %12 = alloca %struct.grub_hfs_dir_closure, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, %struct.grub_dirhook_info*, i8*)* %2, i32 (i8*, %struct.grub_dirhook_info*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = bitcast %struct.grub_hfs_filerec* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @my_mod, align 4
  %15 = call i32 @grub_dl_ref(i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.grub_hfs_data* @grub_hfs_mount(i32 %18)
  store %struct.grub_hfs_data* %19, %struct.grub_hfs_data** %10, align 8
  %20 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %10, align 8
  %21 = icmp ne %struct.grub_hfs_data* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %50

23:                                               ; preds = %4
  %24 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %10, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @grub_hfs_find_dir(%struct.grub_hfs_data* %24, i8* %25, %struct.grub_hfs_filerec* %11, i32* %9)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %50

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.grub_hfs_filerec, %struct.grub_hfs_filerec* %11, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GRUB_HFS_FILETYPE_DIR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @GRUB_ERR_BAD_FILE_TYPE, align 4
  %36 = call i32 @grub_error(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %50

37:                                               ; preds = %29
  %38 = load i32 (i8*, %struct.grub_dirhook_info*, i8*)*, i32 (i8*, %struct.grub_dirhook_info*, i8*)** %7, align 8
  %39 = bitcast i32 (i8*, %struct.grub_dirhook_info*, i8*)* %38 to i32 (i8*, %struct.grub_dirhook_info.0*, i8*)*
  %40 = getelementptr inbounds %struct.grub_hfs_dir_closure, %struct.grub_hfs_dir_closure* %12, i32 0, i32 0
  store i32 (i8*, %struct.grub_dirhook_info.0*, i8*)* %39, i32 (i8*, %struct.grub_dirhook_info.0*, i8*)** %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.grub_hfs_dir_closure, %struct.grub_hfs_dir_closure* %12, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %10, align 8
  %44 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %10, align 8
  %45 = getelementptr inbounds %struct.grub_hfs_data, %struct.grub_hfs_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @grub_hfs_dir_hook, align 4
  %49 = call i32 @grub_hfs_iterate_dir(%struct.grub_hfs_data* %43, i32 %46, i32 %47, i32 %48, %struct.grub_hfs_dir_closure* %12)
  br label %50

50:                                               ; preds = %37, %34, %28, %22
  %51 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %10, align 8
  %52 = call i32 @grub_free(%struct.grub_hfs_data* %51)
  %53 = load i32, i32* @my_mod, align 4
  %54 = call i32 @grub_dl_unref(i32 %53)
  %55 = load i32, i32* @grub_errno, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @grub_dl_ref(i32) #2

declare dso_local %struct.grub_hfs_data* @grub_hfs_mount(i32) #2

declare dso_local i64 @grub_hfs_find_dir(%struct.grub_hfs_data*, i8*, %struct.grub_hfs_filerec*, i32*) #2

declare dso_local i32 @grub_error(i32, i8*) #2

declare dso_local i32 @grub_hfs_iterate_dir(%struct.grub_hfs_data*, i32, i32, i32, %struct.grub_hfs_dir_closure*) #2

declare dso_local i32 @grub_free(%struct.grub_hfs_data*) #2

declare dso_local i32 @grub_dl_unref(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
