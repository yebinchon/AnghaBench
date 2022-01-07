; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i32, i32*, i64, i32, i64, i64, i64, i32, i64, i8* }
%struct.TYPE_8__ = type { i32, i32, i32*, i8* }

@TB_DEFAULTPAGESIZE = common dso_local global i32 0, align 4
@TBTS_TOP = common dso_local global i32 0, align 4
@TBS_TOOLTIPS = common dso_local global i32 0, align 4
@TOOLTIPS_CLASSW = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@TTF_IDISHWND = common dso_local global i32 0, align 4
@TTF_TRACK = common dso_local global i32 0, align 4
@TTF_ABSOLUTE = common dso_local global i32 0, align 4
@TTM_ADDTOOLW = common dso_local global i32 0, align 4
@themeClass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_10__*)* @TRACKBAR_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TRACKBAR_Create(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = call %struct.TYPE_9__* @Alloc(i32 104)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %101

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = ptrtoint %struct.TYPE_9__* %15 to i32
  %17 = call i32 @SetWindowLongPtrW(i8* %14, i32 0, i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 14
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 13
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 100, i32* %29, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @TB_DEFAULTPAGESIZE, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 11
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 10
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 9
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @TBTS_TOP, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 6
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = call i32 @TRACKBAR_InitializeThumb(%struct.TYPE_9__* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @TBS_TOOLTIPS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %13
  %64 = load i32, i32* @TOOLTIPS_CLASSW, align 4
  %65 = load i32, i32* @WS_POPUP, align 4
  %66 = load i32, i32* @CW_USEDEFAULT, align 4
  %67 = load i32, i32* @CW_USEDEFAULT, align 4
  %68 = load i32, i32* @CW_USEDEFAULT, align 4
  %69 = load i32, i32* @CW_USEDEFAULT, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = call i64 @CreateWindowExW(i32 0, i32 %64, i32* null, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i8* %70, i32 0, i32 0, i32 0)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  %79 = call i32 @ZeroMemory(%struct.TYPE_8__* %7, i32 24)
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 24, i32* %80, align 8
  %81 = load i32, i32* @TTF_IDISHWND, align 4
  %82 = load i32, i32* @TTF_TRACK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @TTF_ABSOLUTE, align 4
  %85 = or i32 %83, %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i32* %8, i32** %89, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @TTM_ADDTOOLW, align 4
  %94 = ptrtoint %struct.TYPE_8__* %7 to i32
  %95 = call i32 @SendMessageW(i64 %92, i32 %93, i32 0, i32 %94)
  br label %96

96:                                               ; preds = %78, %63
  br label %97

97:                                               ; preds = %96, %13
  %98 = load i8*, i8** %4, align 8
  %99 = load i32, i32* @themeClass, align 4
  %100 = call i32 @OpenThemeData(i8* %98, i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %12
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_9__* @Alloc(i32) #1

declare dso_local i32 @SetWindowLongPtrW(i8*, i32, i32) #1

declare dso_local i32 @TRACKBAR_InitializeThumb(%struct.TYPE_9__*) #1

declare dso_local i64 @CreateWindowExW(i32, i32, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i32 @OpenThemeData(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
