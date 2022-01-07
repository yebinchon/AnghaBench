; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_read_options.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_read_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@key_options = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@key_settings = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registry_read_options() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @key_options, align 4
  %3 = call i64 @registry_get_handle(i32** %1, i32 0, i32 %2)
  %4 = load i64, i64* @ERROR_SUCCESS, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @registry_read_pagemargins(i32* null)
  br label %13

8:                                                ; preds = %0
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @registry_read_pagemargins(i32* %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @RegCloseKey(i32* %11)
  br label %13

13:                                               ; preds = %8, %6
  %14 = load i32, i32* @key_settings, align 4
  %15 = call i64 @registry_get_handle(i32** %1, i32 0, i32 %14)
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @registry_read_previewpages(i32* null)
  br label %25

20:                                               ; preds = %13
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @registry_read_previewpages(i32* %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @RegCloseKey(i32* %23)
  br label %25

25:                                               ; preds = %20, %18
  ret void
}

declare dso_local i64 @registry_get_handle(i32**, i32, i32) #1

declare dso_local i32 @registry_read_pagemargins(i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @registry_read_previewpages(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
