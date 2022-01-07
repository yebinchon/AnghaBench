; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_utils.c_modify_match_busid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_utils.c_modify_match_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.modify_match_busid.attr_name = private unnamed_addr constant [12 x i8] c"match_busid\00", align 1
@SYSFS_BUS_ID_SIZE = common dso_local global i32 0, align 4
@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s/%s/%s/%s/%s/%s\00", align 1
@SYSFS_MNT_PATH = common dso_local global i8* null, align 8
@SYSFS_BUS_NAME = common dso_local global i8* null, align 8
@SYSFS_BUS_TYPE = common dso_local global i8* null, align 8
@SYSFS_DRIVERS_NAME = common dso_local global i8* null, align 8
@USBIP_HOST_DRV_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"add %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"del %s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to write match_busid: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modify_match_busid(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [12 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = bitcast [12 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.modify_match_busid.attr_name, i32 0, i32 0), i64 12, i1 false)
  %14 = load i32, i32* @SYSFS_BUS_ID_SIZE, align 4
  %15 = add nsw i32 %14, 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = trunc i64 %20 to i32
  %23 = load i8*, i8** @SYSFS_MNT_PATH, align 8
  %24 = load i8*, i8** @SYSFS_BUS_NAME, align 8
  %25 = load i8*, i8** @SYSFS_BUS_TYPE, align 8
  %26 = load i8*, i8** @SYSFS_DRIVERS_NAME, align 8
  %27 = load i8*, i8** @USBIP_HOST_DRV_NAME, align 8
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %29 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24, i8* %25, i8* %26, i8* %27, i8* %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load i32, i32* @SYSFS_BUS_ID_SIZE, align 4
  %34 = add nsw i32 %33, 4
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %18, i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 %36, i32* %11, align 4
  br label %42

37:                                               ; preds = %2
  %38 = load i32, i32* @SYSFS_BUS_ID_SIZE, align 4
  %39 = add nsw i32 %38, 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %18, i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @write_sysfs_attribute(i8* %21, i8* %18, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @strerror(i32 %48)
  %50 = call i32 @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %52

51:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #3

declare dso_local i32 @write_sysfs_attribute(i8*, i8*, i32) #3

declare dso_local i32 @dbg(i8*, i32) #3

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
