; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_SetFont.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_SetFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to create link font!\0A\00", align 1
@RDW_INVALIDATE = common dso_local global i32 0, align 4
@RDW_UPDATENOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i64)* @SYSLINK_SetFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SYSLINK_SetFont(%struct.TYPE_10__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @DeleteObject(i32* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %22, %3
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @GetClientRect(i32 %32, i32* %10)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @GetDC(i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @GetTextMetricsW(i32* %43, %struct.TYPE_9__* %9)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @GetObjectW(i32 %49, i32 4, %struct.TYPE_11__* %8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i32, i32* @TRUE, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = call i32* @CreateFontIndirectW(%struct.TYPE_11__* %8)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %64

62:                                               ; preds = %46, %42
  %63 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %52
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @SYSLINK_Render(%struct.TYPE_10__* %65, i32* %66, i32* %10)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @ReleaseDC(i32 %70, i32* %71)
  br label %73

73:                                               ; preds = %64, %35
  br label %74

74:                                               ; preds = %73, %29
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RDW_INVALIDATE, align 4
  %82 = load i32, i32* @RDW_UPDATENOW, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @RedrawWindow(i32 %80, i32* null, i32* null, i32 %83)
  br label %85

85:                                               ; preds = %77, %74
  %86 = load i32, i32* %11, align 4
  ret i32 %86
}

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i64 @GetClientRect(i32, i32*) #1

declare dso_local i32* @GetDC(i32) #1

declare dso_local i64 @GetTextMetricsW(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @GetObjectW(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32* @CreateFontIndirectW(%struct.TYPE_11__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @SYSLINK_Render(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

declare dso_local i32 @RedrawWindow(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
