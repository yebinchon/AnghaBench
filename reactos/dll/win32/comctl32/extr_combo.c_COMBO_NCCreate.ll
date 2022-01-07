; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_NCCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_NCCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@WS_BORDER = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@CBS_OWNERDRAWFIXED = common dso_local global i32 0, align 4
@CBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@CBS_HASSTRINGS = common dso_local global i32 0, align 4
@WS_EX_NOPARENTNOTIFY = common dso_local global i32 0, align 4
@CBF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"[%p], style = %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @COMBO_NCCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBO_NCCreate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i64 (...) @COMBO_Init()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %82

9:                                                ; preds = %2
  %10 = call %struct.TYPE_4__* @heap_alloc_zero(i32 12)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %82

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = ptrtoint %struct.TYPE_4__* %17 to i32
  %19 = call i32 @SetWindowLongPtrW(i32 %16, i32 0, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @WS_BORDER, align 4
  %22 = load i32, i32* @WS_HSCROLL, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WS_VSCROLL, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %20, %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @GWL_STYLE, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @WS_BORDER, align 4
  %34 = load i32, i32* @WS_HSCROLL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @WS_VSCROLL, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %32, %38
  %40 = call i32 @SetWindowLongW(i32 %30, i32 %31, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @GWL_EXSTYLE, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @GWL_EXSTYLE, align 4
  %45 = call i32 @GetWindowLongW(i32 %43, i32 %44)
  %46 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = call i32 @SetWindowLongW(i32 %41, i32 %42, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @CBS_OWNERDRAWFIXED, align 4
  %52 = load i32, i32* @CBS_OWNERDRAWVARIABLE, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %12
  %57 = load i32, i32* @CBS_HASSTRINGS, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %12
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @GWL_EXSTYLE, align 4
  %65 = call i32 @GetWindowLongW(i32 %63, i32 %64)
  %66 = load i32, i32* @WS_EX_NOPARENTNOTIFY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @CBF_NOTIFY, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %76, i32 %79)
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %3, align 4
  br label %84

82:                                               ; preds = %9, %2
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %75
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @COMBO_Init(...) #1

declare dso_local %struct.TYPE_4__* @heap_alloc_zero(i32) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @SetWindowLongW(i32, i32, i32) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
