; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_get_process_name_from_pid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_get_process_name_from_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@PROCESS_VM_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @get_process_name_from_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_process_name_from_pid(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %12 = load i32, i32* @PROCESS_VM_READ, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @OpenProcess(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @EnumProcessModules(i32 %22, i32* %9, i32 4, i32* %10)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @CloseHandle(i32 %26)
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %4, align 4
  br label %44

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @GetModuleBaseNameW(i32 %30, i32 %31, i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @CloseHandle(i32 %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @CloseHandle(i32 %41)
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %36, %25, %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @EnumProcessModules(i32, i32*, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @GetModuleBaseNameW(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
