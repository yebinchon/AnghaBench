; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_listview.c_ListViewSelectionChanged.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_listview.c_ListViewSelectionChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_9__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@ID_PROP = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i64 0, align 8
@ID_DELETE = common dso_local global i32 0, align 4
@SB_SETTEXT = common dso_local global i32 0, align 4
@TB_SETSTATE = common dso_local global i32 0, align 4
@TBSTATE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ListViewSelectionChanged(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @GetMenu(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ID_PROP, align 4
  %13 = load i32, i32* @MF_BYCOMMAND, align 4
  %14 = call i64 @GetMenuState(i32 %11, i32 %12, i32 %13)
  %15 = load i64, i64* @MF_ENABLED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ID_PROP, align 4
  %20 = load i64, i64* @MF_ENABLED, align 8
  %21 = call i32 @EnableMenuItem(i32 %18, i32 %19, i64 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @GetSubMenu(i32 %24, i32 0)
  %26 = load i32, i32* @ID_PROP, align 4
  %27 = load i64, i64* @MF_ENABLED, align 8
  %28 = call i32 @EnableMenuItem(i32 %25, i32 %26, i64 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @GetSubMenu(i32 %31, i32 0)
  %33 = load i32, i32* @ID_PROP, align 4
  %34 = load i32, i32* @MF_BYCOMMAND, align 4
  %35 = call i32 @SetMenuDefaultItem(i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %17, %2
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ID_DELETE, align 4
  %39 = load i32, i32* @MF_BYCOMMAND, align 4
  %40 = call i64 @GetMenuState(i32 %37, i32 %38, i32 %39)
  %41 = load i64, i64* @MF_ENABLED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ID_DELETE, align 4
  %46 = load i64, i64* @MF_ENABLED, align 8
  %47 = call i32 @EnableMenuItem(i32 %44, i32 %45, i64 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @GetSubMenu(i32 %50, i32 0)
  %52 = load i32, i32* @ID_DELETE, align 4
  %53 = load i64, i64* @MF_ENABLED, align 8
  %54 = call i32 @EnableMenuItem(i32 %51, i32 %52, i64 %53)
  br label %55

55:                                               ; preds = %43, %36
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = call %struct.TYPE_9__* @GetSelectedService(%struct.TYPE_7__* %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SB_SETTEXT, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @SendMessage(i32 %67, i32 %68, i32 1, i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @TB_SETSTATE, align 4
  %80 = load i32, i32* @ID_PROP, align 4
  %81 = load i32, i32* @TBSTATE_ENABLED, align 4
  %82 = call i64 @MAKELONG(i32 %81, i32 0)
  %83 = trunc i64 %82 to i32
  %84 = call i32 @SendMessage(i32 %78, i32 %79, i32 %80, i32 %83)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i64 @GetMenuState(i32, i32, i32) #1

declare dso_local i32 @EnableMenuItem(i32, i32, i64) #1

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @SetMenuDefaultItem(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @GetSelectedService(%struct.TYPE_7__*) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i64 @MAKELONG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
