; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_set_options.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@key_options = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@SW_SHOWMAXIMIZED = common dso_local global i64 0, align 8
@var_framerect = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@var_maximized = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@key_settings = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registry_set_options(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @key_options, align 4
  %8 = call i64 @registry_get_handle(i32* %3, i32* %4, i32 %7)
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 24, i32* %12, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @GetWindowPlacement(i32 %13, %struct.TYPE_3__* %5)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SW_SHOWMAXIMIZED, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @var_framerect, align 4
  %22 = load i32, i32* @REG_BINARY, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %24 = ptrtoint i32* %23 to i32
  %25 = call i32 @RegSetValueExW(i32 %20, i32 %21, i32 0, i32 %22, i32 %24, i32 4)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @var_maximized, align 4
  %28 = load i32, i32* @REG_DWORD, align 4
  %29 = ptrtoint i32* %6 to i32
  %30 = call i32 @RegSetValueExW(i32 %26, i32 %27, i32 0, i32 %28, i32 %29, i32 4)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @registry_set_pagemargins(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @RegCloseKey(i32 %33)
  br label %35

35:                                               ; preds = %11, %1
  %36 = load i32, i32* @key_settings, align 4
  %37 = call i64 @registry_get_handle(i32* %3, i32* %4, i32 %36)
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @registry_set_previewpages(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @RegCloseKey(i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  ret void
}

declare dso_local i64 @registry_get_handle(i32*, i32*, i32) #1

declare dso_local i32 @GetWindowPlacement(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @RegSetValueExW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @registry_set_pagemargins(i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @registry_set_previewpages(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
