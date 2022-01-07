; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tab.c_TAB_SetCurSel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tab.c_TAB_SetCurSel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%p %d)\0A\00", align 1
@TCIS_BUTTONPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64)* @TAB_SetCurSel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TAB_SetCurSel(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %10, i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* @TCIS_BUTTONPRESSED, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.TYPE_9__* @TAB_GetItem(%struct.TYPE_8__* %29, i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %28
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %26, %23
  %36 = load i64, i64* %5, align 8
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32, i32* @TCIS_BUTTONPRESSED, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call %struct.TYPE_9__* @TAB_GetItem(%struct.TYPE_8__* %40, i64 %41)
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %5, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %58

53:                                               ; preds = %35
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i64 -1, i64* %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 -1, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %38
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = call i32 @TAB_EnsureSelectionVisible(%struct.TYPE_8__* %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = call i32 @TAB_InvalidateTabArea(%struct.TYPE_8__* %61)
  br label %63

63:                                               ; preds = %58, %19
  %64 = load i64, i64* %6, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*, i64) #1

declare dso_local %struct.TYPE_9__* @TAB_GetItem(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @TAB_EnsureSelectionVisible(%struct.TYPE_8__*) #1

declare dso_local i32 @TAB_InvalidateTabArea(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
