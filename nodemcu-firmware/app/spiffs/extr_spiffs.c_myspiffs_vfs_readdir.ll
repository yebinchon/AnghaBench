; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_myspiffs_vfs_readdir.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_myspiffs_vfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_dir = type { i32 }
%struct.vfs_stat = type { i8*, i32 }
%struct.spiffs_dirent = type { i32, i32 }

@d = common dso_local global i32 0, align 4
@FS_OBJ_NAME_LEN = common dso_local global i32 0, align 4
@VFS_RES_OK = common dso_local global i32 0, align 4
@VFS_RES_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfs_dir*, %struct.vfs_stat*)* @myspiffs_vfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myspiffs_vfs_readdir(%struct.vfs_dir* %0, %struct.vfs_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfs_dir*, align 8
  %5 = alloca %struct.vfs_stat*, align 8
  %6 = alloca %struct.spiffs_dirent, align 4
  store %struct.vfs_dir* %0, %struct.vfs_dir** %4, align 8
  store %struct.vfs_stat* %1, %struct.vfs_stat** %5, align 8
  %7 = load %struct.vfs_dir*, %struct.vfs_dir** %4, align 8
  %8 = call i32 @GET_DIR_D(%struct.vfs_dir* %7)
  %9 = load i32, i32* @d, align 4
  %10 = call i64 @SPIFFS_readdir(i32 %9, %struct.spiffs_dirent* %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.vfs_stat*, %struct.vfs_stat** %5, align 8
  %14 = call i32 @memset(%struct.vfs_stat* %13, i32 0, i32 16)
  %15 = load %struct.vfs_stat*, %struct.vfs_stat** %5, align 8
  %16 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FS_OBJ_NAME_LEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @strncpy(i8* %17, i32 %19, i32 %21)
  %23 = load %struct.vfs_stat*, %struct.vfs_stat** %5, align 8
  %24 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @FS_OBJ_NAME_LEN, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vfs_stat*, %struct.vfs_stat** %5, align 8
  %32 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @VFS_RES_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @VFS_RES_ERR, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @GET_DIR_D(%struct.vfs_dir*) #1

declare dso_local i64 @SPIFFS_readdir(i32, %struct.spiffs_dirent*) #1

declare dso_local i32 @memset(%struct.vfs_stat*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
