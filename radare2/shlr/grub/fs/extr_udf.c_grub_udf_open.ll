; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_file = type { i32, i64, %struct.grub_fshelp_node*, %struct.TYPE_4__* }
%struct.grub_fshelp_node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.grub_udf_data = type { i32 }

@my_mod = common dso_local global i32 0, align 4
@grub_udf_iterate_dir = common dso_local global i32 0, align 4
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_file*, i8*)* @grub_udf_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_udf_open(%struct.grub_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grub_udf_data*, align 8
  %7 = alloca %struct.grub_fshelp_node, align 4
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
  %16 = call %struct.grub_udf_data* @grub_udf_mount(i32 %15)
  store %struct.grub_udf_data* %16, %struct.grub_udf_data** %6, align 8
  %17 = load %struct.grub_udf_data*, %struct.grub_udf_data** %6, align 8
  %18 = icmp ne %struct.grub_udf_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.grub_udf_data*, %struct.grub_udf_data** %6, align 8
  %22 = load %struct.grub_udf_data*, %struct.grub_udf_data** %6, align 8
  %23 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %22, i32 0, i32 0
  %24 = call i64 @grub_udf_read_icb(%struct.grub_udf_data* %21, i32* %23, %struct.grub_fshelp_node* %7)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %47

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @grub_udf_iterate_dir, align 4
  %30 = load i32, i32* @GRUB_FSHELP_REG, align 4
  %31 = call i64 @grub_fshelp_find_file(i8* %28, %struct.grub_fshelp_node* %7, %struct.grub_fshelp_node** %8, i32 %29, i32 0, i32 0, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %47

34:                                               ; preds = %27
  %35 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %36 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %37 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %36, i32 0, i32 2
  store %struct.grub_fshelp_node* %35, %struct.grub_fshelp_node** %37, align 8
  %38 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %39 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %41 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @U64(i32 %43)
  %45 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %46 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %53

47:                                               ; preds = %33, %26, %19
  %48 = load i32, i32* @my_mod, align 4
  %49 = call i32 @grub_dl_unref(i32 %48)
  %50 = load %struct.grub_udf_data*, %struct.grub_udf_data** %6, align 8
  %51 = call i32 @grub_free(%struct.grub_udf_data* %50)
  %52 = load i32, i32* @grub_errno, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %34
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_udf_data* @grub_udf_mount(i32) #1

declare dso_local i64 @grub_udf_read_icb(%struct.grub_udf_data*, i32*, %struct.grub_fshelp_node*) #1

declare dso_local i64 @grub_fshelp_find_file(i8*, %struct.grub_fshelp_node*, %struct.grub_fshelp_node**, i32, i32, i32, i32) #1

declare dso_local i32 @U64(i32) #1

declare dso_local i32 @grub_dl_unref(i32) #1

declare dso_local i32 @grub_free(%struct.grub_udf_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
