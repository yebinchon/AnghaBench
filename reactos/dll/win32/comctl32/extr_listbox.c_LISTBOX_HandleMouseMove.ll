; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_HandleMouseMove.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_HandleMouseMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i64, i64, i64, i32, i32 }

@LB_TIMER_NONE = common dso_local global i64 0, align 8
@LBS_MULTICOLUMN = common dso_local global i32 0, align 4
@LB_TIMER_LEFT = common dso_local global i64 0, align 8
@LB_TIMER_RIGHT = common dso_local global i64 0, align 8
@LB_TIMER_UP = common dso_local global i64 0, align 8
@LB_TIMER_DOWN = common dso_local global i64 0, align 8
@LB_TIMER_ID = common dso_local global i32 0, align 4
@LB_SCROLL_TIMEOUT = common dso_local global i32 0, align 4
@LISTBOX_Timer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64)* @LISTBOX_HandleMouseMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LISTBOX_HandleMouseMove(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @LB_TIMER_NONE, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %123

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 0, i64* %6, align 8
  br label %46

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = mul nsw i64 %30, %33
  %35 = icmp sge i64 %27, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = mul nsw i64 %39, %42
  %44 = sub nsw i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %36, %26
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i64, i64* %5, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i64, i64* @LB_TIMER_LEFT, align 8
  store i64 %50, i64* %8, align 8
  store i64 0, i64* %5, align 8
  br label %64

51:                                               ; preds = %46
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i64, i64* @LB_TIMER_RIGHT, align 8
  store i64 %58, i64* %8, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, 1
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %49
  br label %80

65:                                               ; preds = %15
  %66 = load i64, i64* %6, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i64, i64* @LB_TIMER_UP, align 8
  store i64 %69, i64* %8, align 8
  br label %79

70:                                               ; preds = %65
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i64, i64* @LB_TIMER_DOWN, align 8
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %76, %70
  br label %79

79:                                               ; preds = %78, %68
  br label %80

80:                                               ; preds = %79, %64
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i64 @LISTBOX_GetItemFromPoint(%struct.TYPE_5__* %81, i64 %82, i64 %83)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp eq i64 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @LISTBOX_HandleTimer(%struct.TYPE_5__* %92, i64 %93, i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = load i64, i64* @LB_TIMER_NONE, align 8
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %97, %91
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @LB_TIMER_NONE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @LB_TIMER_ID, align 4
  %108 = load i32, i32* @LB_SCROLL_TIMEOUT, align 4
  %109 = call i32 @SetSystemTimer(i32 %106, i32 %107, i32 %108, i32* null)
  br label %121

110:                                              ; preds = %99
  %111 = load i64, i64* @LISTBOX_Timer, align 8
  %112 = load i64, i64* @LB_TIMER_NONE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @LB_TIMER_ID, align 4
  %119 = call i32 @KillSystemTimer(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %110
  br label %121

121:                                              ; preds = %120, %103
  %122 = load i64, i64* %8, align 8
  store i64 %122, i64* @LISTBOX_Timer, align 8
  br label %123

123:                                              ; preds = %121, %14
  ret void
}

declare dso_local i64 @LISTBOX_GetItemFromPoint(%struct.TYPE_5__*, i64, i64) #1

declare dso_local i32 @LISTBOX_HandleTimer(%struct.TYPE_5__*, i64, i64) #1

declare dso_local i32 @SetSystemTimer(i32, i32, i32, i32*) #1

declare dso_local i32 @KillSystemTimer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
