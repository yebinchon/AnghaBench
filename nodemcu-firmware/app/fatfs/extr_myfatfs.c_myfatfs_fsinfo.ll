; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_fsinfo.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@last_result = common dso_local global i64 0, align 8
@FR_OK = common dso_local global i64 0, align 8
@FF_MAX_SS = common dso_local global i32 0, align 4
@VFS_RES_OK = common dso_local global i32 0, align 4
@VFS_RES_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @myfatfs_fsinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myfatfs_fsinfo(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i64 @f_getfree(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %5, %struct.TYPE_3__** %6)
  store i64 %7, i64* @last_result, align 8
  %8 = load i64, i64* @FR_OK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = load i32, i32* @FF_MAX_SS, align 4
  %19 = sdiv i32 1024, %18
  %20 = sdiv i32 %17, %19
  %21 = load i32*, i32** %3, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load i32, i32* @FF_MAX_SS, align 4
  %30 = sdiv i32 1024, %29
  %31 = sdiv i32 %28, %30
  %32 = sub nsw i32 %23, %31
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %10, %2
  %35 = load i64, i64* @last_result, align 8
  %36 = load i64, i64* @FR_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @VFS_RES_OK, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @VFS_RES_ERR, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  ret i32 %43
}

declare dso_local i64 @f_getfree(i8*, i32*, %struct.TYPE_3__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
