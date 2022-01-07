; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fb.c_grub_fbfs_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fb.c_grub_fbfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_file = type { i32, %struct.grub_fb_data*, %struct.TYPE_2__* }
%struct.grub_fb_data = type { %struct.fbm_file*, i64 }
%struct.fbm_file = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@grub_errno = common dso_local global i32 0, align 4
@GRUB_ERR_NONE = common dso_local global i32 0, align 4
@GRUB_ERR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"file not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_file*, i8*)* @grub_fbfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_fbfs_open(%struct.grub_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fbm_file*, align 8
  %7 = alloca %struct.grub_fb_data*, align 8
  store %struct.grub_file* %0, %struct.grub_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %9 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.grub_fb_data* @grub_fbfs_mount(i32 %12)
  store %struct.grub_fb_data* %13, %struct.grub_fb_data** %7, align 8
  %14 = load %struct.grub_fb_data*, %struct.grub_fb_data** %7, align 8
  %15 = icmp ne %struct.grub_fb_data* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @grub_errno, align 4
  store i32 %17, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %24, %18
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 47
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %19

27:                                               ; preds = %19
  %28 = load %struct.grub_fb_data*, %struct.grub_fb_data** %7, align 8
  %29 = getelementptr inbounds %struct.grub_fb_data, %struct.grub_fb_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.fbm_file*
  store %struct.fbm_file* %31, %struct.fbm_file** %6, align 8
  br label %32

32:                                               ; preds = %57, %27
  %33 = load %struct.fbm_file*, %struct.fbm_file** %6, align 8
  %34 = getelementptr inbounds %struct.fbm_file, %struct.fbm_file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.fbm_file*, %struct.fbm_file** %6, align 8
  %40 = getelementptr inbounds %struct.fbm_file, %struct.fbm_file* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @grub_strcasecmp(i8* %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %37
  %45 = load %struct.grub_fb_data*, %struct.grub_fb_data** %7, align 8
  %46 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %47 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %46, i32 0, i32 1
  store %struct.grub_fb_data* %45, %struct.grub_fb_data** %47, align 8
  %48 = load %struct.fbm_file*, %struct.fbm_file** %6, align 8
  %49 = load %struct.grub_fb_data*, %struct.grub_fb_data** %7, align 8
  %50 = getelementptr inbounds %struct.grub_fb_data, %struct.grub_fb_data* %49, i32 0, i32 0
  store %struct.fbm_file* %48, %struct.fbm_file** %50, align 8
  %51 = load %struct.fbm_file*, %struct.fbm_file** %6, align 8
  %52 = getelementptr inbounds %struct.fbm_file, %struct.fbm_file* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %55 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @GRUB_ERR_NONE, align 4
  store i32 %56, i32* %3, align 4
  br label %70

57:                                               ; preds = %37
  %58 = load %struct.fbm_file*, %struct.fbm_file** %6, align 8
  %59 = bitcast %struct.fbm_file* %58 to i8*
  %60 = load %struct.fbm_file*, %struct.fbm_file** %6, align 8
  %61 = getelementptr inbounds %struct.fbm_file, %struct.fbm_file* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = bitcast i8* %65 to %struct.fbm_file*
  store %struct.fbm_file* %66, %struct.fbm_file** %6, align 8
  br label %32

67:                                               ; preds = %32
  %68 = load i32, i32* @GRUB_ERR_FILE_NOT_FOUND, align 4
  %69 = call i32 @grub_error(i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %44, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.grub_fb_data* @grub_fbfs_mount(i32) #1

declare dso_local i32 @grub_strcasecmp(i8*, i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
