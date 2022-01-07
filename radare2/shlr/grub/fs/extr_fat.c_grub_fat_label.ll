; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fat.c_grub_fat_label.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fat.c_grub_fat_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.grub_fat_data = type { i32 }

@my_mod = common dso_local global i32 0, align 4
@GRUB_FAT_ATTR_DIRECTORY = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FILE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not a directory\00", align 1
@grub_fat_label_hook = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**)* @grub_fat_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_fat_label(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.grub_fat_data*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @my_mod, align 4
  %12 = call i32 @grub_dl_ref(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.grub_fat_data* @grub_fat_mount(i32 %13)
  store %struct.grub_fat_data* %14, %struct.grub_fat_data** %6, align 8
  %15 = load %struct.grub_fat_data*, %struct.grub_fat_data** %6, align 8
  %16 = icmp ne %struct.grub_fat_data* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.grub_fat_data*, %struct.grub_fat_data** %6, align 8
  %20 = getelementptr inbounds %struct.grub_fat_data, %struct.grub_fat_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GRUB_FAT_ATTR_DIRECTORY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @GRUB_ERR_BAD_FILE_TYPE, align 4
  %27 = call i32 @grub_error(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %41

28:                                               ; preds = %18
  %29 = load i8**, i8*** %5, align 8
  store i8* null, i8** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.grub_fat_data*, %struct.grub_fat_data** %6, align 8
  %32 = load i32, i32* @grub_fat_label_hook, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = call i32 @grub_fat_iterate_dir(i32 %30, %struct.grub_fat_data* %31, i32 %32, i8** %33)
  br label %35

35:                                               ; preds = %28, %17
  %36 = load i32, i32* @my_mod, align 4
  %37 = call i32 @grub_dl_unref(i32 %36)
  %38 = load %struct.grub_fat_data*, %struct.grub_fat_data** %6, align 8
  %39 = call i32 @grub_free(%struct.grub_fat_data* %38)
  %40 = load i32, i32* @grub_errno, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %25
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_fat_data* @grub_fat_mount(i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_fat_iterate_dir(i32, %struct.grub_fat_data*, i32, i8**) #1

declare dso_local i32 @grub_dl_unref(i32) #1

declare dso_local i32 @grub_free(%struct.grub_fat_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
