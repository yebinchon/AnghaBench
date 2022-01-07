; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_closedir.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_closedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_dir = type { i32 }

@dp = common dso_local global i32 0, align 4
@last_result = common dso_local global i64 0, align 8
@FR_OK = common dso_local global i64 0, align 8
@VFS_RES_OK = common dso_local global i32 0, align 4
@VFS_RES_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfs_dir*)* @myfatfs_closedir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myfatfs_closedir(%struct.vfs_dir* %0) #0 {
  %2 = alloca %struct.vfs_dir*, align 8
  store %struct.vfs_dir* %0, %struct.vfs_dir** %2, align 8
  %3 = load %struct.vfs_dir*, %struct.vfs_dir** %2, align 8
  %4 = call i32 @GET_DIR_DP(%struct.vfs_dir* %3)
  %5 = load i32, i32* @dp, align 4
  %6 = call i64 @f_closedir(i32 %5)
  store i64 %6, i64* @last_result, align 8
  %7 = load %struct.vfs_dir*, %struct.vfs_dir** %2, align 8
  %8 = bitcast %struct.vfs_dir* %7 to i8*
  %9 = call i32 @free(i8* %8)
  %10 = load i64, i64* @last_result, align 8
  %11 = load i64, i64* @FR_OK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @VFS_RES_OK, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VFS_RES_ERR, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

declare dso_local i32 @GET_DIR_DP(%struct.vfs_dir*) #1

declare dso_local i64 @f_closedir(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
