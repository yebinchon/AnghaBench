; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_file = type { i64, i8*, %struct.grub_iso9660_data*, %struct.TYPE_4__* }
%struct.grub_iso9660_data = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.grub_fshelp_node = type { i8*, i8*, %struct.grub_iso9660_data* }

@my_mod = common dso_local global i32 0, align 4
@grub_iso9660_iterate_dir = common dso_local global i32 0, align 4
@grub_iso9660_read_symlink = common dso_local global i32 0, align 4
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_file*, i8*)* @grub_iso9660_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_iso9660_open(%struct.grub_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grub_iso9660_data*, align 8
  %7 = alloca %struct.grub_fshelp_node, align 8
  %8 = alloca %struct.grub_fshelp_node*, align 8
  store %struct.grub_file* %0, %struct.grub_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @my_mod, align 4
  %10 = call i32 @grub_dl_ref(i32 %9)
  %11 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %12 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.grub_iso9660_data* @grub_iso9660_mount(i32 %15)
  store %struct.grub_iso9660_data* %16, %struct.grub_iso9660_data** %6, align 8
  %17 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %6, align 8
  %18 = icmp ne %struct.grub_iso9660_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %6, align 8
  %22 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %7, i32 0, i32 2
  store %struct.grub_iso9660_data* %21, %struct.grub_iso9660_data** %22, align 8
  %23 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %6, align 8
  %24 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @grub_le_to_cpu32(i32 %27)
  %29 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %7, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %6, align 8
  %31 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @grub_le_to_cpu32(i32 %34)
  %36 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %7, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @grub_iso9660_iterate_dir, align 4
  %39 = load i32, i32* @grub_iso9660_read_symlink, align 4
  %40 = load i32, i32* @GRUB_FSHELP_REG, align 4
  %41 = call i64 @grub_fshelp_find_file(i8* %37, %struct.grub_fshelp_node* %7, %struct.grub_fshelp_node** %8, i32 %38, i32 0, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  br label %60

44:                                               ; preds = %20
  %45 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %46 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %6, align 8
  %49 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %6, align 8
  %51 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %52 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %51, i32 0, i32 2
  store %struct.grub_iso9660_data* %50, %struct.grub_iso9660_data** %52, align 8
  %53 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %54 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %57 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %59 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  store i32 0, i32* %3, align 4
  br label %66

60:                                               ; preds = %43, %19
  %61 = load i32, i32* @my_mod, align 4
  %62 = call i32 @grub_dl_unref(i32 %61)
  %63 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %6, align 8
  %64 = call i32 @grub_free(%struct.grub_iso9660_data* %63)
  %65 = load i32, i32* @grub_errno, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %44
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_iso9660_data* @grub_iso9660_mount(i32) #1

declare dso_local i8* @grub_le_to_cpu32(i32) #1

declare dso_local i64 @grub_fshelp_find_file(i8*, %struct.grub_fshelp_node*, %struct.grub_fshelp_node**, i32, i32, i32, i32) #1

declare dso_local i32 @grub_dl_unref(i32) #1

declare dso_local i32 @grub_free(%struct.grub_iso9660_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
