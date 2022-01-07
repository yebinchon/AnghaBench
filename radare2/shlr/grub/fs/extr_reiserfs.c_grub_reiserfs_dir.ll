; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.grub_dirhook_info = type opaque
%struct.grub_reiserfs_data = type { i32 }
%struct.grub_fshelp_node = type { i64 }
%struct.grub_reiserfs_key = type { %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.grub_reiserfs_dir_closure = type { i32 (i8*, %struct.grub_dirhook_info.0*, i8*)*, i8* }
%struct.grub_dirhook_info.0 = type opaque

@my_mod = common dso_local global i32 0, align 4
@GRUB_REISERFS_DIRECTORY = common dso_local global i32 0, align 4
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"root not found\00", align 1
@grub_reiserfs_read_symlink = common dso_local global i32 0, align 4
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@iterate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i32 (i8*, %struct.grub_dirhook_info*, i8*)*, i8*)* @grub_reiserfs_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_reiserfs_dir(%struct.TYPE_7__* %0, i8* %1, i32 (i8*, %struct.grub_dirhook_info*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, %struct.grub_dirhook_info*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.grub_reiserfs_data*, align 8
  %11 = alloca %struct.grub_fshelp_node, align 8
  %12 = alloca %struct.grub_fshelp_node*, align 8
  %13 = alloca %struct.grub_reiserfs_key, align 8
  %14 = alloca %struct.grub_reiserfs_dir_closure, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*, %struct.grub_dirhook_info*, i8*)* %2, i32 (i8*, %struct.grub_dirhook_info*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.grub_reiserfs_data* null, %struct.grub_reiserfs_data** %10, align 8
  %15 = load i32, i32* @my_mod, align 4
  %16 = call i32 @grub_dl_ref(i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.grub_reiserfs_data* @grub_reiserfs_mount(i32 %19)
  store %struct.grub_reiserfs_data* %20, %struct.grub_reiserfs_data** %10, align 8
  %21 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %10, align 8
  %22 = icmp ne %struct.grub_reiserfs_data* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %69

24:                                               ; preds = %4
  %25 = call i8* @grub_cpu_to_le32(i32 1)
  %26 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %13, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = call i8* @grub_cpu_to_le32(i32 2)
  %28 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %13, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %13, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @GRUB_REISERFS_DIRECTORY, align 4
  %33 = call i32 @grub_reiserfs_set_key_type(%struct.grub_reiserfs_key* %13, i32 %32, i32 2)
  %34 = call i32 @grub_reiserfs_set_key_offset(%struct.grub_reiserfs_key* %13, i32 1)
  %35 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %10, align 8
  %36 = call i64 @grub_reiserfs_get_item(%struct.grub_reiserfs_data* %35, %struct.grub_reiserfs_key* %13, %struct.grub_fshelp_node* %11)
  %37 = load i64, i64* @GRUB_ERR_NONE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %69

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %11, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %46 = call i32 @grub_error(i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %69

47:                                               ; preds = %40
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @grub_reiserfs_read_symlink, align 4
  %50 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  %51 = call i32 @grub_fshelp_find_file(i8* %48, %struct.grub_fshelp_node* %11, %struct.grub_fshelp_node** %12, i32 (%struct.grub_fshelp_node*, i32, %struct.grub_reiserfs_dir_closure*)* @grub_reiserfs_iterate_dir, i32 0, i32 %49, i32 %50)
  %52 = load i64, i64* @grub_errno, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %69

55:                                               ; preds = %47
  %56 = load i32 (i8*, %struct.grub_dirhook_info*, i8*)*, i32 (i8*, %struct.grub_dirhook_info*, i8*)** %8, align 8
  %57 = bitcast i32 (i8*, %struct.grub_dirhook_info*, i8*)* %56 to i32 (i8*, %struct.grub_dirhook_info.0*, i8*)*
  %58 = getelementptr inbounds %struct.grub_reiserfs_dir_closure, %struct.grub_reiserfs_dir_closure* %14, i32 0, i32 0
  store i32 (i8*, %struct.grub_dirhook_info.0*, i8*)* %57, i32 (i8*, %struct.grub_dirhook_info.0*, i8*)** %58, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds %struct.grub_reiserfs_dir_closure, %struct.grub_reiserfs_dir_closure* %14, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %12, align 8
  %62 = load i32, i32* @iterate, align 4
  %63 = call i32 @grub_reiserfs_iterate_dir(%struct.grub_fshelp_node* %61, i32 %62, %struct.grub_reiserfs_dir_closure* %14)
  %64 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %10, align 8
  %65 = call i32 @grub_free(%struct.grub_reiserfs_data* %64)
  %66 = load i32, i32* @my_mod, align 4
  %67 = call i32 @grub_dl_unref(i32 %66)
  %68 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %68, i64* %5, align 8
  br label %75

69:                                               ; preds = %54, %44, %39, %23
  %70 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %10, align 8
  %71 = call i32 @grub_free(%struct.grub_reiserfs_data* %70)
  %72 = load i32, i32* @my_mod, align 4
  %73 = call i32 @grub_dl_unref(i32 %72)
  %74 = load i64, i64* @grub_errno, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %69, %55
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_reiserfs_data* @grub_reiserfs_mount(i32) #1

declare dso_local i8* @grub_cpu_to_le32(i32) #1

declare dso_local i32 @grub_reiserfs_set_key_type(%struct.grub_reiserfs_key*, i32, i32) #1

declare dso_local i32 @grub_reiserfs_set_key_offset(%struct.grub_reiserfs_key*, i32) #1

declare dso_local i64 @grub_reiserfs_get_item(%struct.grub_reiserfs_data*, %struct.grub_reiserfs_key*, %struct.grub_fshelp_node*) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_fshelp_find_file(i8*, %struct.grub_fshelp_node*, %struct.grub_fshelp_node**, i32 (%struct.grub_fshelp_node*, i32, %struct.grub_reiserfs_dir_closure*)*, i32, i32, i32) #1

declare dso_local i32 @grub_reiserfs_iterate_dir(%struct.grub_fshelp_node*, i32, %struct.grub_reiserfs_dir_closure*) #1

declare dso_local i32 @grub_free(%struct.grub_reiserfs_data*) #1

declare dso_local i32 @grub_dl_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
