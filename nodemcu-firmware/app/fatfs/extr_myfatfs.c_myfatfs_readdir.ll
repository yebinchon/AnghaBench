; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_readdir.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_dir = type { i32 }
%struct.vfs_stat = type { i32 }
%struct.TYPE_4__ = type { i8* }

@FR_OK = common dso_local global i32 0, align 4
@dp = common dso_local global i32 0, align 4
@last_result = common dso_local global i32 0, align 4
@VFS_RES_OK = common dso_local global i32 0, align 4
@VFS_RES_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfs_dir*, %struct.vfs_stat*)* @myfatfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myfatfs_readdir(%struct.vfs_dir* %0, %struct.vfs_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfs_dir*, align 8
  %5 = alloca %struct.vfs_stat*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  store %struct.vfs_dir* %0, %struct.vfs_dir** %4, align 8
  store %struct.vfs_stat* %1, %struct.vfs_stat** %5, align 8
  %7 = load %struct.vfs_dir*, %struct.vfs_dir** %4, align 8
  %8 = call i32 @GET_DIR_DP(%struct.vfs_dir* %7)
  %9 = load i32, i32* @FR_OK, align 4
  %10 = load i32, i32* @dp, align 4
  %11 = call i32 @f_readdir(i32 %10, %struct.TYPE_4__* %6)
  store i32 %11, i32* @last_result, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.vfs_stat*, %struct.vfs_stat** %5, align 8
  %22 = call i32 @myfatfs_fill_stat(%struct.TYPE_4__* %6, %struct.vfs_stat* %21)
  %23 = load i32, i32* @VFS_RES_OK, align 4
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32, i32* @VFS_RES_ERR, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @GET_DIR_DP(%struct.vfs_dir*) #1

declare dso_local i32 @f_readdir(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @myfatfs_fill_stat(%struct.TYPE_4__*, %struct.vfs_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
