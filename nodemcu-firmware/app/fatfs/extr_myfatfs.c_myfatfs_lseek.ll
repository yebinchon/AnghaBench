; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_lseek.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_file = type { i32 }

@fp = common dso_local global i32 0, align 4
@last_result = common dso_local global i64 0, align 8
@FR_OK = common dso_local global i64 0, align 8
@VFS_RES_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfs_file*, i32, i32)* @myfatfs_lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myfatfs_lseek(%struct.vfs_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vfs_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vfs_file* %0, %struct.vfs_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vfs_file*, %struct.vfs_file** %4, align 8
  %9 = call i32 @GET_FIL_FP(%struct.vfs_file* %8)
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %11 [
    i32 128, label %12
    i32 130, label %20
    i32 129, label %26
  ]

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %3, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  br label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %7, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load i32, i32* @fp, align 4
  %22 = call i32 @f_tell(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %38

26:                                               ; preds = %3
  %27 = load i32, i32* @fp, align 4
  %28 = call i32 @f_size(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %20, %18
  %39 = load i32, i32* @fp, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @f_lseek(i32 %39, i32 %40)
  store i64 %41, i64* @last_result, align 8
  %42 = load i32, i32* @fp, align 4
  %43 = call i32 @f_tell(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i64, i64* @last_result, align 8
  %45 = load i64, i64* @FR_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  br label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @VFS_RES_ERR, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  ret i32 %52
}

declare dso_local i32 @GET_FIL_FP(%struct.vfs_file*) #1

declare dso_local i32 @f_tell(i32) #1

declare dso_local i32 @f_size(i32) #1

declare dso_local i64 @f_lseek(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
