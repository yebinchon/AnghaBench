; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mmc/extr_console.c_FrameOnCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mmc/extr_console.c_FrameOnCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@hAppHeap = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@hAppInstance = common dso_local global i32 0, align 4
@IDM_CONSOLE_SMALL = common dso_local global i32 0, align 4
@IDM_CONSOLE_LARGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"ReactOS Management Console\00", align 1
@IDM_MDI_FIRSTCHILD = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 77, i32 68, i32 73, i32 67, i32 76, i32 73, i32 69, i32 78, i32 84, i32 0], align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@hwndMDIClient = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @FrameOnCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FrameOnCreate(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_6__*
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* @hAppHeap, align 4
  %15 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %16 = call %struct.TYPE_5__* @HeapAlloc(i32 %14, i32 %15, i32 4)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %95

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = ptrtoint %struct.TYPE_5__* %25 to i32
  %27 = call i32 @SetWindowLongPtr(i32 %24, i32 0, i32 %26)
  %28 = load i32, i32* @hAppInstance, align 4
  %29 = load i32, i32* @IDM_CONSOLE_SMALL, align 4
  %30 = call i32 @MAKEINTRESOURCE(i32 %29)
  %31 = call i8* @LoadMenu(i32 %28, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @hAppInstance, align 4
  %35 = load i32, i32* @IDM_CONSOLE_LARGE, align 4
  %36 = call i32 @MAKEINTRESOURCE(i32 %35)
  %37 = call i8* @LoadMenu(i32 %34, i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %20
  %43 = load i8*, i8** @TRUE, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  br label %50

46:                                               ; preds = %20
  %47 = load i8*, i8** @TRUE, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @SetMenu(i32 %53, i8* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @TEXT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @SetWindowText(i32 %60, i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @GetSubMenu(i8* %65, i32 1)
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @IDM_MDI_FIRSTCHILD, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %71 = load i32, i32* @WS_CHILD, align 4
  %72 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @WS_VSCROLL, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @WS_HSCROLL, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @WS_VISIBLE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @WS_BORDER, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @CW_USEDEFAULT, align 4
  %83 = load i32, i32* @CW_USEDEFAULT, align 4
  %84 = load i32, i32* @CW_USEDEFAULT, align 4
  %85 = load i32, i32* @CW_USEDEFAULT, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @hAppInstance, align 4
  %88 = ptrtoint %struct.TYPE_7__* %7 to i32
  %89 = call i32 @CreateWindowEx(i32 %70, i8* bitcast ([10 x i32]* @.str.1 to i8*), i32* null, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 3244, i32 %87, i32 %88)
  store i32 %89, i32* @hwndMDIClient, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SW_SHOW, align 4
  %94 = call i32 @ShowWindow(i32 %92, i32 %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %50, %19
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @SetWindowLongPtr(i32, i32, i32) #1

declare dso_local i8* @LoadMenu(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @SetMenu(i32, i8*) #1

declare dso_local i32 @SetWindowText(i32, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @GetSubMenu(i8*, i32) #1

declare dso_local i32 @CreateWindowEx(i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
