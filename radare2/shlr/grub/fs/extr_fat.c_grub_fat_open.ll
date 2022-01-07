; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fat.c_grub_fat_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fat.c_grub_fat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.grub_fat_data*, %struct.TYPE_4__* }
%struct.grub_fat_data = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@my_mod = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@GRUB_FAT_ATTR_DIRECTORY = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FILE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"not a file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i8*)* @grub_fat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_fat_open(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grub_fat_data*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.grub_fat_data* null, %struct.grub_fat_data** %6, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i32, i32* @my_mod, align 4
  %10 = call i32 @grub_dl_ref(i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.grub_fat_data* @grub_fat_mount(i32 %15)
  store %struct.grub_fat_data* %16, %struct.grub_fat_data** %6, align 8
  %17 = load %struct.grub_fat_data*, %struct.grub_fat_data** %6, align 8
  %18 = icmp ne %struct.grub_fat_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %58

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %35, %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.grub_fat_data*, %struct.grub_fat_data** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @grub_fat_find_dir(i32 %26, %struct.grub_fat_data* %27, i8* %28, i32 0, i32 0)
  store i8* %29, i8** %7, align 8
  %30 = load i64, i64* @grub_errno, align 8
  %31 = load i64, i64* @GRUB_ERR_NONE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %58

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %21, label %38

38:                                               ; preds = %35
  %39 = load %struct.grub_fat_data*, %struct.grub_fat_data** %6, align 8
  %40 = getelementptr inbounds %struct.grub_fat_data, %struct.grub_fat_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GRUB_FAT_ATTR_DIRECTORY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @GRUB_ERR_BAD_FILE_TYPE, align 4
  %47 = call i32 @grub_error(i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %58

48:                                               ; preds = %38
  %49 = load %struct.grub_fat_data*, %struct.grub_fat_data** %6, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store %struct.grub_fat_data* %49, %struct.grub_fat_data** %51, align 8
  %52 = load %struct.grub_fat_data*, %struct.grub_fat_data** %6, align 8
  %53 = getelementptr inbounds %struct.grub_fat_data, %struct.grub_fat_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %57, i64* %3, align 8
  br label %64

58:                                               ; preds = %45, %33, %19
  %59 = load %struct.grub_fat_data*, %struct.grub_fat_data** %6, align 8
  %60 = call i32 @grub_free(%struct.grub_fat_data* %59)
  %61 = load i32, i32* @my_mod, align 4
  %62 = call i32 @grub_dl_unref(i32 %61)
  %63 = load i64, i64* @grub_errno, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %58, %48
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_fat_data* @grub_fat_mount(i32) #1

declare dso_local i8* @grub_fat_find_dir(i32, %struct.grub_fat_data*, i8*, i32, i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_free(%struct.grub_fat_data*) #1

declare dso_local i32 @grub_dl_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
