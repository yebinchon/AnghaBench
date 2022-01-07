; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.grub_dirhook_info = type opaque
%struct.grub_iso9660_data = type { %struct.TYPE_6__, i8*, i8*, %struct.grub_iso9660_data* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.grub_fshelp_node = type { %struct.TYPE_6__, i8*, i8*, %struct.grub_fshelp_node* }
%struct.grub_iso9660_dir_closure = type { i32 (i8*, %struct.grub_dirhook_info.0*, i8*)*, i8* }
%struct.grub_dirhook_info.0 = type opaque

@my_mod = common dso_local global i32 0, align 4
@grub_iso9660_read_symlink = common dso_local global i32 0, align 4
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@iterate = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32 (i8*, %struct.grub_dirhook_info*, i8*)*, i8*)* @grub_iso9660_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_iso9660_dir(%struct.TYPE_7__* %0, i8* %1, i32 (i8*, %struct.grub_dirhook_info*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, %struct.grub_dirhook_info*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.grub_iso9660_data*, align 8
  %10 = alloca %struct.grub_fshelp_node, align 8
  %11 = alloca %struct.grub_fshelp_node*, align 8
  %12 = alloca %struct.grub_iso9660_dir_closure, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, %struct.grub_dirhook_info*, i8*)* %2, i32 (i8*, %struct.grub_dirhook_info*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.grub_iso9660_data* null, %struct.grub_iso9660_data** %9, align 8
  %13 = load i32, i32* @my_mod, align 4
  %14 = call i32 @grub_dl_ref(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.grub_iso9660_data* @grub_iso9660_mount(i32 %17)
  store %struct.grub_iso9660_data* %18, %struct.grub_iso9660_data** %9, align 8
  %19 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %9, align 8
  %20 = icmp ne %struct.grub_iso9660_data* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %65

22:                                               ; preds = %4
  %23 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %9, align 8
  %24 = bitcast %struct.grub_iso9660_data* %23 to %struct.grub_fshelp_node*
  %25 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %10, i32 0, i32 3
  store %struct.grub_fshelp_node* %24, %struct.grub_fshelp_node** %25, align 8
  %26 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %9, align 8
  %27 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @grub_le_to_cpu32(i32 %30)
  %32 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %10, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %9, align 8
  %34 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @grub_le_to_cpu32(i32 %37)
  %39 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %10, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast %struct.grub_fshelp_node* %10 to %struct.grub_iso9660_data*
  %42 = bitcast %struct.grub_fshelp_node** %11 to %struct.grub_iso9660_data**
  %43 = load i32, i32* @grub_iso9660_read_symlink, align 4
  %44 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  %45 = call i64 @grub_fshelp_find_file(i8* %40, %struct.grub_iso9660_data* %41, %struct.grub_iso9660_data** %42, i32 (%struct.grub_iso9660_data*, i32, %struct.grub_iso9660_dir_closure*)* @grub_iso9660_iterate_dir, i32 0, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %22
  br label %65

48:                                               ; preds = %22
  %49 = load i32 (i8*, %struct.grub_dirhook_info*, i8*)*, i32 (i8*, %struct.grub_dirhook_info*, i8*)** %7, align 8
  %50 = bitcast i32 (i8*, %struct.grub_dirhook_info*, i8*)* %49 to i32 (i8*, %struct.grub_dirhook_info.0*, i8*)*
  %51 = getelementptr inbounds %struct.grub_iso9660_dir_closure, %struct.grub_iso9660_dir_closure* %12, i32 0, i32 0
  store i32 (i8*, %struct.grub_dirhook_info.0*, i8*)* %50, i32 (i8*, %struct.grub_dirhook_info.0*, i8*)** %51, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds %struct.grub_iso9660_dir_closure, %struct.grub_iso9660_dir_closure* %12, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %11, align 8
  %55 = bitcast %struct.grub_fshelp_node* %54 to %struct.grub_iso9660_data*
  %56 = load i32, i32* @iterate, align 4
  %57 = call i32 @grub_iso9660_iterate_dir(%struct.grub_iso9660_data* %55, i32 %56, %struct.grub_iso9660_dir_closure* %12)
  %58 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %11, align 8
  %59 = icmp ne %struct.grub_fshelp_node* %58, %10
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %11, align 8
  %62 = bitcast %struct.grub_fshelp_node* %61 to %struct.grub_iso9660_data*
  %63 = call i32 @grub_free(%struct.grub_iso9660_data* %62)
  br label %64

64:                                               ; preds = %60, %48
  br label %65

65:                                               ; preds = %64, %47, %21
  %66 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %9, align 8
  %67 = call i32 @grub_free(%struct.grub_iso9660_data* %66)
  %68 = load i32, i32* @my_mod, align 4
  %69 = call i32 @grub_dl_unref(i32 %68)
  %70 = load i32, i32* @grub_errno, align 4
  ret i32 %70
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_iso9660_data* @grub_iso9660_mount(i32) #1

declare dso_local i8* @grub_le_to_cpu32(i32) #1

declare dso_local i64 @grub_fshelp_find_file(i8*, %struct.grub_iso9660_data*, %struct.grub_iso9660_data**, i32 (%struct.grub_iso9660_data*, i32, %struct.grub_iso9660_dir_closure*)*, i32, i32, i32) #1

declare dso_local i32 @grub_iso9660_iterate_dir(%struct.grub_iso9660_data*, i32, %struct.grub_iso9660_dir_closure*) #1

declare dso_local i32 @grub_free(%struct.grub_iso9660_data*) #1

declare dso_local i32 @grub_dl_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
