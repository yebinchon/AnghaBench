; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_open.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myvfs_file = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@FR_OK = common dso_local global i32 0, align 4
@last_result = common dso_local global i32 0, align 4
@FA_OPEN_ALWAYS = common dso_local global i32 0, align 4
@VFS_FS_FATFS = common dso_local global i32 0, align 4
@myfatfs_file_fns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*)* @myfatfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @myfatfs_open(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.myvfs_file*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @myfatfs_mode2flag(i8* %8)
  store i32 %9, i32* %7, align 4
  %10 = call %struct.myvfs_file* @malloc(i32 24)
  store %struct.myvfs_file* %10, %struct.myvfs_file** %6, align 8
  %11 = icmp ne %struct.myvfs_file* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = load i32, i32* @FR_OK, align 4
  %14 = load %struct.myvfs_file*, %struct.myvfs_file** %6, align 8
  %15 = getelementptr inbounds %struct.myvfs_file, %struct.myvfs_file* %14, i32 0, i32 1
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @f_open(i32* %15, i8* %16, i32 %17)
  store i32 %18, i32* @last_result, align 4
  %19 = icmp eq i32 %13, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @FA_OPEN_ALWAYS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.myvfs_file*, %struct.myvfs_file** %6, align 8
  %27 = getelementptr inbounds %struct.myvfs_file, %struct.myvfs_file* %26, i32 0, i32 1
  %28 = load %struct.myvfs_file*, %struct.myvfs_file** %6, align 8
  %29 = getelementptr inbounds %struct.myvfs_file, %struct.myvfs_file* %28, i32 0, i32 1
  %30 = call i32 @f_size(i32* %29)
  %31 = call i32 @f_lseek(i32* %27, i32 %30)
  br label %32

32:                                               ; preds = %25, %20
  %33 = load i32, i32* @VFS_FS_FATFS, align 4
  %34 = load %struct.myvfs_file*, %struct.myvfs_file** %6, align 8
  %35 = getelementptr inbounds %struct.myvfs_file, %struct.myvfs_file* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.myvfs_file*, %struct.myvfs_file** %6, align 8
  %38 = getelementptr inbounds %struct.myvfs_file, %struct.myvfs_file* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* @myfatfs_file_fns, i32** %39, align 8
  %40 = load %struct.myvfs_file*, %struct.myvfs_file** %6, align 8
  %41 = bitcast %struct.myvfs_file* %40 to i32*
  store i32* %41, i32** %3, align 8
  br label %47

42:                                               ; preds = %12
  %43 = load %struct.myvfs_file*, %struct.myvfs_file** %6, align 8
  %44 = call i32 @free(%struct.myvfs_file* %43)
  br label %45

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %2
  store i32* null, i32** %3, align 8
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32*, i32** %3, align 8
  ret i32* %48
}

declare dso_local i32 @myfatfs_mode2flag(i8*) #1

declare dso_local %struct.myvfs_file* @malloc(i32) #1

declare dso_local i32 @f_open(i32*, i8*, i32) #1

declare dso_local i32 @f_lseek(i32*, i32) #1

declare dso_local i32 @f_size(i32*) #1

declare dso_local i32 @free(%struct.myvfs_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
