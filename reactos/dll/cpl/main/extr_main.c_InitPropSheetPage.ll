; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/main/extr_main.c_InitPropSheetPage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/main/extr_main.c_InitPropSheetPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@MAX_CPL_PAGES = common dso_local global i64 0, align 8
@PSP_DEFAULT = common dso_local global i32 0, align 4
@hApplet = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitPropSheetPage(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_CPL_PAGES, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %3
  %16 = call i32 @ZeroMemory(%struct.TYPE_6__* %9, i32 20)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 20, i32* %17, align 4
  %18 = load i32, i32* @PSP_DEFAULT, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @hApplet, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @MAKEINTRESOURCE(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = call i32* @CreatePropertySheetPage(%struct.TYPE_6__* %9)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %15
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = ptrtoint %struct.TYPE_7__* %32 to i32
  %34 = call i32 @PropSheetAddPage(i32* %31, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32* @CreatePropertySheetPage(%struct.TYPE_6__*) #1

declare dso_local i32 @PropSheetAddPage(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
