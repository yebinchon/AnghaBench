; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_myspiffs_vfs_stat.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_myspiffs_vfs_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_stat = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@fs = common dso_local global i32 0, align 4
@FS_OBJ_NAME_LEN = common dso_local global i32 0, align 4
@VFS_RES_OK = common dso_local global i32 0, align 4
@VFS_RES_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vfs_stat*)* @myspiffs_vfs_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myspiffs_vfs_stat(i8* %0, %struct.vfs_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vfs_stat*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %4, align 8
  store %struct.vfs_stat* %1, %struct.vfs_stat** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @SPIFFS_stat(i32* @fs, i8* %7, %struct.TYPE_3__* %6)
  %9 = icmp sle i64 0, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load %struct.vfs_stat*, %struct.vfs_stat** %5, align 8
  %12 = call i32 @memset(%struct.vfs_stat* %11, i32 0, i32 16)
  %13 = load %struct.vfs_stat*, %struct.vfs_stat** %5, align 8
  %14 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FS_OBJ_NAME_LEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @strncpy(i8* %15, i32 %17, i32 %19)
  %21 = load %struct.vfs_stat*, %struct.vfs_stat** %5, align 8
  %22 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @FS_OBJ_NAME_LEN, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vfs_stat*, %struct.vfs_stat** %5, align 8
  %30 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @VFS_RES_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @VFS_RES_ERR, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @SPIFFS_stat(i32*, i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @memset(%struct.vfs_stat*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
