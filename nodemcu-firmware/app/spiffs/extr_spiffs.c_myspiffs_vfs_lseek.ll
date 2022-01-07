; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_myspiffs_vfs_lseek.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs.c_myspiffs_vfs_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_file = type { i32 }

@SPIFFS_SEEK_SET = common dso_local global i32 0, align 4
@SPIFFS_SEEK_CUR = common dso_local global i32 0, align 4
@SPIFFS_SEEK_END = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@fh = common dso_local global i32 0, align 4
@VFS_RES_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vfs_file*, i64, i32)* @myspiffs_vfs_lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @myspiffs_vfs_lseek(%struct.vfs_file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vfs_file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.vfs_file* %0, %struct.vfs_file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vfs_file*, %struct.vfs_file** %4, align 8
  %10 = call i32 @GET_FILE_FH(%struct.vfs_file* %9)
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %12 [
    i32 128, label %13
    i32 130, label %15
    i32 129, label %17
  ]

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %3, %12
  %14 = load i32, i32* @SPIFFS_SEEK_SET, align 4
  store i32 %14, i32* %7, align 4
  br label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @SPIFFS_SEEK_CUR, align 4
  store i32 %16, i32* %7, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @SPIFFS_SEEK_END, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %15, %13
  %20 = load i32, i32* @fh, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @SPIFFS_lseek(i32* @fs, i32 %20, i64 %21, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  br label %30

28:                                               ; preds = %19
  %29 = load i64, i64* @VFS_RES_ERR, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

declare dso_local i32 @GET_FILE_FH(%struct.vfs_file*) #1

declare dso_local i64 @SPIFFS_lseek(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
