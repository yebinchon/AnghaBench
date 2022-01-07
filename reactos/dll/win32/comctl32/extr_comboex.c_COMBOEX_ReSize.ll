; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_ReSize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_ReSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }

@CBE_EXTRA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"upgraded height due to image:  height=%d\0A\00", align 1
@CB_SETITEMHEIGHT = common dso_local global i32 0, align 4
@CBES_EX_NOSIZELIMIT = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOREDRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @COMBOEX_ReSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @COMBOEX_ReSize(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = call i32 @COMBOEX_GetComboFontSize(%struct.TYPE_15__* %8, %struct.TYPE_12__* %3)
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CBE_EXTRA, align 8
  %13 = add nsw i64 %11, %12
  store i64 %13, i64* %4, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @ImageList_GetImageInfo(i64 %21, i32 0, %struct.TYPE_14__* %5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @max(i64 %31, i64 %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %24, %18, %1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @CB_SETITEMHEIGHT, align 4
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @SendMessageW(i64 %39, i32 %40, i32 -1, i64 %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %98

47:                                               ; preds = %36
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @CB_SETITEMHEIGHT, align 4
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @SendMessageW(i64 %50, i32 %51, i32 0, i64 %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CBES_EX_NOSIZELIMIT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %97, label %60

60:                                               ; preds = %47
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @GetWindowRect(i64 %63, %struct.TYPE_13__* %6)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @GetWindowRect(i64 %67, %struct.TYPE_13__* %7)
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %70, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %60
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %79, %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %84, %86
  %88 = load i32, i32* @SWP_NOMOVE, align 4
  %89 = load i32, i32* @SWP_NOZORDER, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @SWP_NOACTIVATE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @SWP_NOREDRAW, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @SetWindowPos(i64 %77, i32 0, i32 0, i32 0, i64 %82, i64 %87, i32 %94)
  br label %96

96:                                               ; preds = %74, %60
  br label %97

97:                                               ; preds = %96, %47
  br label %98

98:                                               ; preds = %97, %36
  ret void
}

declare dso_local i32 @COMBOEX_GetComboFontSize(%struct.TYPE_15__*, %struct.TYPE_12__*) #1

declare dso_local i64 @ImageList_GetImageInfo(i64, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i64) #1

declare dso_local i32 @GetWindowRect(i64, %struct.TYPE_13__*) #1

declare dso_local i32 @SetWindowPos(i64, i32, i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
