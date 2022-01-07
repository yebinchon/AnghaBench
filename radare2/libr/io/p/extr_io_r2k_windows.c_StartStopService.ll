; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2k_windows.c_StartStopService.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2k_windows.c_StartStopService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SC_MANAGER_CREATE_SERVICE = common dso_local global i32 0, align 4
@SERVICE_START = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@SERVICE_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Service started [OK]\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Service started [FAIL]\0A\00", align 1
@SERVICE_CONTROL_STOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Service Stopped [OK]\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Service Stopped [FAIL]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StartStopService(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @SC_MANAGER_CREATE_SERVICE, align 4
  %11 = call i64 @OpenSCManager(i32* null, i32* null, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SERVICE_START, align 4
  %18 = load i32, i32* @DELETE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SERVICE_STOP, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @OpenService(i64 %15, i32 %16, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @StartService(i64 %29, i32 0, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = call i32 @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %8, align 4
  br label %37

35:                                               ; preds = %28
  %36 = call i32 @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  br label %49

38:                                               ; preds = %25
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* @SERVICE_CONTROL_STOP, align 4
  %41 = call i64 @ControlService(i64 %39, i32 %40, i32* %7)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %8, align 4
  br label %48

46:                                               ; preds = %38
  %47 = call i32 @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @CloseServiceHandle(i64 %50)
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @DeleteService(i64 %52)
  br label %54

54:                                               ; preds = %49, %14
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @CloseServiceHandle(i64 %55)
  br label %57

57:                                               ; preds = %54, %2
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i64 @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i64 @OpenService(i64, i32, i32) #1

declare dso_local i64 @StartService(i64, i32, i32*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i64 @ControlService(i64, i32, i32*) #1

declare dso_local i32 @CloseServiceHandle(i64) #1

declare dso_local i32 @DeleteService(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
