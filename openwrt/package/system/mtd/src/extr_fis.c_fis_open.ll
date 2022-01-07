; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_fis.c_fis_open.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_fis.c_fis_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fis_image_desc = type { i32 }

@fis_fd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"FIS directory\00", align 1
@erasesize = common dso_local global i32 0, align 4
@fis_erasesize = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_LOCKED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.fis_image_desc* null, align 8
@fis_desc = common dso_local global %struct.fis_image_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fis_image_desc* ()* @fis_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fis_image_desc* @fis_open() #0 {
  %1 = alloca %struct.fis_image_desc*, align 8
  %2 = alloca %struct.fis_image_desc*, align 8
  %3 = load i64, i64* @fis_fd, align 8
  %4 = icmp sge i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (...) @fis_close()
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i64 @mtd_check_open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @fis_fd, align 8
  %9 = load i64, i64* @fis_fd, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %37

12:                                               ; preds = %7
  %13 = load i64, i64* @fis_fd, align 8
  %14 = call i32 @close(i64 %13)
  %15 = call i64 @mtd_open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  store i64 %15, i64* @fis_fd, align 8
  %16 = load i64, i64* @fis_fd, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %37

19:                                               ; preds = %12
  %20 = load i32, i32* @erasesize, align 4
  store i32 %20, i32* @fis_erasesize, align 4
  %21 = load i32, i32* @erasesize, align 4
  %22 = load i32, i32* @PROT_READ, align 4
  %23 = load i32, i32* @PROT_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAP_SHARED, align 4
  %26 = load i32, i32* @MAP_LOCKED, align 4
  %27 = or i32 %25, %26
  %28 = load i64, i64* @fis_fd, align 8
  %29 = call %struct.fis_image_desc* @mmap(i32* null, i32 %21, i32 %24, i32 %27, i64 %28, i32 0)
  store %struct.fis_image_desc* %29, %struct.fis_image_desc** %2, align 8
  %30 = load %struct.fis_image_desc*, %struct.fis_image_desc** %2, align 8
  %31 = load %struct.fis_image_desc*, %struct.fis_image_desc** @MAP_FAILED, align 8
  %32 = icmp eq %struct.fis_image_desc* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %37

34:                                               ; preds = %19
  %35 = load %struct.fis_image_desc*, %struct.fis_image_desc** %2, align 8
  store %struct.fis_image_desc* %35, %struct.fis_image_desc** @fis_desc, align 8
  %36 = load %struct.fis_image_desc*, %struct.fis_image_desc** %2, align 8
  store %struct.fis_image_desc* %36, %struct.fis_image_desc** %1, align 8
  br label %39

37:                                               ; preds = %33, %18, %11
  %38 = call i32 (...) @fis_close()
  store %struct.fis_image_desc* null, %struct.fis_image_desc** %1, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.fis_image_desc*, %struct.fis_image_desc** %1, align 8
  ret %struct.fis_image_desc* %40
}

declare dso_local i32 @fis_close(...) #1

declare dso_local i64 @mtd_check_open(i8*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i64 @mtd_open(i8*, i32) #1

declare dso_local %struct.fis_image_desc* @mmap(i32*, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
