; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_afs.c_grub_afs_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_afs.c_grub_afs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_file = type { i64, %struct.grub_fshelp_node*, i32, %struct.TYPE_5__* }
%struct.grub_fshelp_node = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.grub_afs_data = type { %struct.TYPE_7__*, i32 }

@my_mod = common dso_local global i32 0, align 4
@grub_afs_iterate_dir = common dso_local global i32 0, align 4
@grub_afs_read_symlink = common dso_local global i32 0, align 4
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_file*, i8*)* @grub_afs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_afs_open(%struct.grub_file* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.grub_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grub_afs_data*, align 8
  %7 = alloca %struct.grub_fshelp_node*, align 8
  store %struct.grub_file* %0, %struct.grub_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.grub_fshelp_node* null, %struct.grub_fshelp_node** %7, align 8
  %8 = load i32, i32* @my_mod, align 4
  %9 = call i32 @grub_dl_ref(i32 %8)
  %10 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %11 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.grub_fshelp_node* @grub_afs_mount(i32 %14)
  %16 = bitcast %struct.grub_fshelp_node* %15 to %struct.grub_afs_data*
  store %struct.grub_afs_data* %16, %struct.grub_afs_data** %6, align 8
  %17 = load %struct.grub_afs_data*, %struct.grub_afs_data** %6, align 8
  %18 = icmp ne %struct.grub_afs_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %55

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.grub_afs_data*, %struct.grub_afs_data** %6, align 8
  %23 = getelementptr inbounds %struct.grub_afs_data, %struct.grub_afs_data* %22, i32 0, i32 1
  %24 = load i32, i32* @grub_afs_iterate_dir, align 4
  %25 = load i32, i32* @grub_afs_read_symlink, align 4
  %26 = load i32, i32* @GRUB_FSHELP_REG, align 4
  %27 = call i32 @grub_fshelp_find_file(i8* %21, i32* %23, %struct.grub_fshelp_node** %7, i32 %24, i32 0, i32 %25, i32 %26)
  %28 = load i64, i64* @grub_errno, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %55

31:                                               ; preds = %20
  %32 = load %struct.grub_afs_data*, %struct.grub_afs_data** %6, align 8
  %33 = getelementptr inbounds %struct.grub_afs_data, %struct.grub_afs_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %36 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %35, i32 0, i32 0
  %37 = call i32 @grub_memcpy(%struct.TYPE_7__* %34, %struct.TYPE_7__** %36, i32 4)
  %38 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %39 = call i32 @grub_free(%struct.grub_fshelp_node* %38)
  %40 = load %struct.grub_afs_data*, %struct.grub_afs_data** %6, align 8
  %41 = getelementptr inbounds %struct.grub_afs_data, %struct.grub_afs_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @grub_afs_to_cpu64(i32 %45)
  %47 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %48 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.grub_afs_data*, %struct.grub_afs_data** %6, align 8
  %50 = bitcast %struct.grub_afs_data* %49 to %struct.grub_fshelp_node*
  %51 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %52 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %51, i32 0, i32 1
  store %struct.grub_fshelp_node* %50, %struct.grub_fshelp_node** %52, align 8
  %53 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %54 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  store i64 0, i64* %3, align 8
  br label %62

55:                                               ; preds = %30, %19
  %56 = load %struct.grub_afs_data*, %struct.grub_afs_data** %6, align 8
  %57 = bitcast %struct.grub_afs_data* %56 to %struct.grub_fshelp_node*
  %58 = call i32 @grub_free(%struct.grub_fshelp_node* %57)
  %59 = load i32, i32* @my_mod, align 4
  %60 = call i32 @grub_dl_unref(i32 %59)
  %61 = load i64, i64* @grub_errno, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %55, %31
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_fshelp_node* @grub_afs_mount(i32) #1

declare dso_local i32 @grub_fshelp_find_file(i8*, i32*, %struct.grub_fshelp_node**, i32, i32, i32, i32) #1

declare dso_local i32 @grub_memcpy(%struct.TYPE_7__*, %struct.TYPE_7__**, i32) #1

declare dso_local i32 @grub_free(%struct.grub_fshelp_node*) #1

declare dso_local i32 @grub_afs_to_cpu64(i32) #1

declare dso_local i32 @grub_dl_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
