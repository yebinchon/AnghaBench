; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_prepaint_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_prepaint_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@LVS_EX_FULLROWSELECT = common dso_local global i32 0, align 4
@CDIS_SELECTED = common dso_local global i32 0, align 4
@comctl32_color = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@LVS_SHOWSELALWAYS = common dso_local global i32 0, align 4
@CLR_DEFAULT = common dso_local global i64 0, align 8
@CLR_NONE = common dso_local global i64 0, align 8
@OPAQUE = common dso_local global i32 0, align 4
@TRANSPARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, %struct.TYPE_8__*, i32)* @prepaint_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepaint_setup(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @LVS_EX_FULLROWSELECT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %13, %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CDIS_SELECTED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %20
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 0), align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 1), align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %55

40:                                               ; preds = %28
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @LVS_SHOWSELALWAYS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 2), align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 3), align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %40
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55, %20
  br label %57

57:                                               ; preds = %56, %13
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %9, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @CLR_DEFAULT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 4), align 8
  store i64 %68, i64* %9, align 8
  br label %69

69:                                               ; preds = %67, %57
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @CLR_DEFAULT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 5), align 8
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @CLR_NONE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @OPAQUE, align 4
  %82 = call i32 @SetBkMode(i32 %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @SetBkColor(i32 %83, i64 %84)
  br label %90

86:                                               ; preds = %75
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @TRANSPARENT, align 4
  %89 = call i32 @SetBkMode(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %79
  %91 = load i32, i32* %6, align 4
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @SetTextColor(i32 %91, i64 %92)
  ret void
}

declare dso_local i32 @SetBkMode(i32, i32) #1

declare dso_local i32 @SetBkColor(i32, i64) #1

declare dso_local i32 @SetTextColor(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
