; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_hardware.c_LaunchDeviceManager.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_hardware.c_LaunchDeviceManager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"devmgr.dll\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DeviceManager_ExecuteW\00", align 1
@hApplet = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @LaunchDeviceManager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LaunchDeviceManager(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32 (i32, i32, i32*, i32)*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 @_TEXT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @LoadLibrary(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i32 (i32, i32, i32*, i32)*
  store i32 (i32, i32, i32*, i32)* %16, i32 (i32, i32, i32*, i32)** %5, align 8
  %17 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %5, align 8
  %18 = icmp ne i32 (i32, i32, i32*, i32)* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @FreeLibrary(i32 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %32

23:                                               ; preds = %13
  %24 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %5, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @hApplet, align 4
  %27 = load i32, i32* @SW_SHOW, align 4
  %28 = call i32 %24(i32 %25, i32 %26, i32* null, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @FreeLibrary(i32 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %23, %19, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @LoadLibrary(i32) #1

declare dso_local i32 @_TEXT(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @FreeLibrary(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
