; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_hotkey.c_HOTKEY_NCCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_hotkey.c_HOTKEY_NCCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64, i64 }

@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@SM_CXBORDER = common dso_local global i32 0, align 4
@COMCTL32_hModule = common dso_local global i32 0, align 4
@HKY_NONE = common dso_local global i32 0, align 4
@WM_NCCREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @HOTKEY_NCCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HOTKEY_NCCreate(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @GWL_EXSTYLE, align 4
  %9 = call i32 @GetWindowLongW(i32 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @GWL_EXSTYLE, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @SetWindowLongW(i32 %10, i32 %11, i32 %14)
  %16 = call %struct.TYPE_3__* @heap_alloc_zero(i32 48)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = ptrtoint %struct.TYPE_3__* %18 to i32
  %20 = call i32 @SetWindowLongPtrW(i32 %17, i32 0, i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @SM_CXBORDER, align 4
  %30 = call i32 @GetSystemMetrics(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @COMCTL32_hModule, align 4
  %37 = load i32, i32* @HKY_NONE, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @LoadStringW(i32 %36, i32 %37, i32 %40, i32 15)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @WM_NCCREATE, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = ptrtoint i32* %46 to i32
  %48 = call i32 @DefWindowProcW(i32 %44, i32 %45, i32 0, i32 %47)
  ret i32 %48
}

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @SetWindowLongW(i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @heap_alloc_zero(i32) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32, i32) #1

declare dso_local i32 @DefWindowProcW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
