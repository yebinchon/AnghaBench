; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_SetItemHeight.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_SetItemHeight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }

@CB_SETITEMHEIGHT = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"EX window=(%s), client=(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"CB window=(%s), EX setting=(0,0)-(%d,%d)\0A\00", align 1
@HWND_TOP = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64, i64)* @COMBOEX_SetItemHeight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @COMBOEX_SetItemHeight(%struct.TYPE_8__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @CB_SETITEMHEIGHT, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @SendMessageW(i64 %18, i32 %19, i64 %20, i64 %21)
  %23 = load i64, i64* @CB_ERR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i64, i64* @CB_ERR, align 8
  store i64 %26, i64* %4, align 8
  br label %86

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @GetWindowRect(i64 %31, %struct.TYPE_7__* %8)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @GetWindowRect(i64 %35, %struct.TYPE_7__* %9)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @GetClientRect(i64 %39, %struct.TYPE_7__* %10)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %42, %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %45, %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %48, %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %53, %55
  %57 = sub nsw i64 %51, %56
  store i64 %57, i64* %7, align 8
  %58 = call i32 @wine_dbgstr_rect(%struct.TYPE_7__* %9)
  %59 = call i32 @wine_dbgstr_rect(%struct.TYPE_7__* %10)
  %60 = sext i32 %59 to i64
  %61 = call i32 (i8*, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %60)
  %62 = call i32 @wine_dbgstr_rect(%struct.TYPE_7__* %9)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %64, %66
  %68 = load i64, i64* %7, align 8
  %69 = call i32 (i8*, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %62, i64 %67, i64 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @HWND_TOP, align 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %75, %77
  %79 = load i64, i64* %7, align 8
  %80 = load i32, i32* @SWP_NOACTIVATE, align 4
  %81 = load i32, i32* @SWP_NOZORDER, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SWP_NOMOVE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @SetWindowPos(i64 %72, i32 %73, i32 0, i32 0, i64 %78, i64 %79, i32 %84)
  store i64 0, i64* %4, align 8
  br label %86

86:                                               ; preds = %28, %25
  %87 = load i64, i64* %4, align 8
  ret i64 %87
}

declare dso_local i64 @SendMessageW(i64, i32, i64, i64) #1

declare dso_local i32 @GetWindowRect(i64, %struct.TYPE_7__*) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_7__*) #1

declare dso_local i32 @TRACE(i8*, i32, i64, ...) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_7__*) #1

declare dso_local i32 @SetWindowPos(i64, i32, i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
