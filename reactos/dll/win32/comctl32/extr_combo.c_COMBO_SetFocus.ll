; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_SetFocus.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_SetFocus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@CBF_FOCUSED = common dso_local global i32 0, align 4
@CBS_DROPDOWNLIST = common dso_local global i64 0, align 8
@LB_CARETON = common dso_local global i32 0, align 4
@CBF_EDIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CBN_SETFOCUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @COMBO_SetFocus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @COMBO_SetFocus(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CBF_FOCUSED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = call i64 @CB_GETTYPE(%struct.TYPE_5__* %10)
  %12 = load i64, i64* @CBS_DROPDOWNLIST, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LB_CARETON, align 4
  %19 = call i32 @SendMessageW(i32 %17, i32 %18, i32 0, i32 0)
  br label %20

20:                                               ; preds = %14, %9
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CBF_EDIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @InvalidateRect(i32 %30, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %20
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = load i32, i32* @CBN_SETFOCUS, align 4
  %38 = call i32 @CB_NOTIFY(%struct.TYPE_5__* %36, i32 %37)
  %39 = load i32, i32* @CBF_FOCUSED, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %35, %1
  ret void
}

declare dso_local i64 @CB_GETTYPE(%struct.TYPE_5__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @CB_NOTIFY(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
