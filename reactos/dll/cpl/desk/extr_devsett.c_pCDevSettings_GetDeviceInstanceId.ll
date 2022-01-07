; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_devsett.c_pCDevSettings_GetDeviceInstanceId.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_devsett.c_pCDevSettings_GetDeviceInstanceId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"CDevSettings::GetDeviceInstanceId(%ws) UNIMPLEMENTED!\0A\00", align 1
@CM_LOCATE_DEVNODE_NORMAL = common dso_local global i32 0, align 4
@CR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Success1\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Success2\0A\00", align 1
@LMEM_FIXED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Success3\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"instance id: %ws\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @pCDevSettings_GetDeviceInstanceId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pCDevSettings_GetDeviceInstanceId(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = ptrtoint i32* %9 to i32
  %11 = load i32, i32* @CM_LOCATE_DEVNODE_NORMAL, align 4
  %12 = call i64 @CM_Locate_DevNodeW(i32* %3, i32 %10, i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @CR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @CM_Get_Device_ID_Size(i32* %5, i32 %18, i32 0)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @CR_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @LMEM_FIXED, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i32* @LocalAlloc(i32 %25, i32 %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %23
  %35 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* %3, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @CM_Get_Device_IDW(i32 %36, i32* %37, i32 %38, i32 0)
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @CR_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = ptrtoint i32* %44 to i32
  %46 = call i32 @LocalFree(i32 %45)
  store i32* null, i32** %6, align 8
  br label %47

47:                                               ; preds = %43, %34
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %48)
  br label %50

50:                                               ; preds = %47, %23
  br label %51

51:                                               ; preds = %50, %16
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32*, i32** %6, align 8
  ret i32* %53
}

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i64 @CM_Locate_DevNodeW(i32*, i32, i32) #1

declare dso_local i64 @CM_Get_Device_ID_Size(i32*, i32, i32) #1

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i64 @CM_Get_Device_IDW(i32, i32*, i32, i32) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
