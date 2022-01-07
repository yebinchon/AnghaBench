; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_bind.c_bind_usbip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_bind.c_bind_usbip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.bind_usbip.attr_name = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s/%s/%s/%s/%s/%s\00", align 1
@SYSFS_MNT_PATH = common dso_local global i8* null, align 8
@SYSFS_BUS_NAME = common dso_local global i8* null, align 8
@SYSFS_BUS_TYPE = common dso_local global i8* null, align 8
@SYSFS_DRIVERS_NAME = common dso_local global i8* null, align 8
@USBIP_HOST_DRV_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"error binding device %s to driver: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bind_usbip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_usbip(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [5 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = bitcast [5 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.bind_usbip.attr_name, i32 0, i32 0), i64 5, i1 false)
  %10 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32 -1, i32* %7, align 4
  %14 = trunc i64 %11 to i32
  %15 = load i8*, i8** @SYSFS_MNT_PATH, align 8
  %16 = load i8*, i8** @SYSFS_BUS_NAME, align 8
  %17 = load i8*, i8** @SYSFS_BUS_TYPE, align 8
  %18 = load i8*, i8** @SYSFS_DRIVERS_NAME, align 8
  %19 = load i8*, i8** @USBIP_HOST_DRV_NAME, align 8
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %21 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16, i8* %17, i8* %18, i8* %19, i8* %20)
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32 @write_sysfs_attribute(i8* %13, i8* %22, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %31)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #3

declare dso_local i32 @write_sysfs_attribute(i8*, i8*, i32) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @err(i8*, i8*, i32) #3

declare dso_local i32 @strerror(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
