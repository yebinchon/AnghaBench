; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_myspiffs_vfs_opendir.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_myspiffs_vfs_opendir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myvfs_dir = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@fs = common dso_local global i32 0, align 4
@VFS_FS_SPIFFS = common dso_local global i32 0, align 4
@myspiffs_dd_fns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @myspiffs_vfs_opendir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @myspiffs_vfs_opendir(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.myvfs_dir*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call i64 @malloc(i32 24)
  %6 = inttoptr i64 %5 to %struct.myvfs_dir*
  store %struct.myvfs_dir* %6, %struct.myvfs_dir** %4, align 8
  %7 = icmp ne %struct.myvfs_dir* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.myvfs_dir*, %struct.myvfs_dir** %4, align 8
  %11 = getelementptr inbounds %struct.myvfs_dir, %struct.myvfs_dir* %10, i32 0, i32 1
  %12 = call i64 @SPIFFS_opendir(i32* @fs, i8* %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load i32, i32* @VFS_FS_SPIFFS, align 4
  %16 = load %struct.myvfs_dir*, %struct.myvfs_dir** %4, align 8
  %17 = getelementptr inbounds %struct.myvfs_dir, %struct.myvfs_dir* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 8
  %19 = load %struct.myvfs_dir*, %struct.myvfs_dir** %4, align 8
  %20 = getelementptr inbounds %struct.myvfs_dir, %struct.myvfs_dir* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* @myspiffs_dd_fns, i32** %21, align 8
  %22 = load %struct.myvfs_dir*, %struct.myvfs_dir** %4, align 8
  %23 = bitcast %struct.myvfs_dir* %22 to i32*
  store i32* %23, i32** %2, align 8
  br label %29

24:                                               ; preds = %8
  %25 = load %struct.myvfs_dir*, %struct.myvfs_dir** %4, align 8
  %26 = call i32 @free(%struct.myvfs_dir* %25)
  br label %27

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %1
  store i32* null, i32** %2, align 8
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i32*, i32** %2, align 8
  ret i32* %30
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @SPIFFS_opendir(i32*, i8*, i32*) #1

declare dso_local i32 @free(%struct.myvfs_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
