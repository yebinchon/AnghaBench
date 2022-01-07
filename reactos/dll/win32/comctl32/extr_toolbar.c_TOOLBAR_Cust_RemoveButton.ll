; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_Cust_RemoveButton.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_Cust_RemoveButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@IDC_TOOLBARBTN_LBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Remove: index %d\0A\00", align 1
@LB_GETITEMDATA = common dso_local global i32 0, align 4
@LB_DELETESTRING = common dso_local global i32 0, align 4
@LB_SETCURSEL = common dso_local global i32 0, align 4
@TB_DELETEBUTTON = common dso_local global i32 0, align 4
@BTNS_SEP = common dso_local global i32 0, align 4
@TBN_TOOLBARCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32)* @TOOLBAR_Cust_RemoveButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLBAR_Cust_RemoveButton(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IDC_TOOLBARBTN_LBOX, align 4
  %12 = call i32 @GetDlgItem(i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @LB_GETITEMDATA, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @SendMessageW(i32 %15, i32 %16, i32 %17, i32 0)
  %19 = inttoptr i64 %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = call i64 @TOOLBAR_IsButtonRemovable(i32 %22, i32 %23, %struct.TYPE_9__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @LB_DELETESTRING, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @SendMessageW(i32 %28, i32 %29, i32 %30, i32 0)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @LB_SETCURSEL, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @SendMessageW(i32 %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TB_DELETEBUTTON, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @SendMessageW(i32 %38, i32 %39, i32 %40, i32 0)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BTNS_SEP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %27
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = call i32 @TOOLBAR_Cust_InsertAvailButton(i32 %50, %struct.TYPE_9__* %51)
  br label %56

53:                                               ; preds = %27
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = call i32 @Free(%struct.TYPE_9__* %54)
  br label %56

56:                                               ; preds = %53, %49
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TBN_TOOLBARCHANGE, align 4
  %61 = call i32 @TOOLBAR_SendNotify(i32* %9, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %3
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @TOOLBAR_IsButtonRemovable(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @TOOLBAR_Cust_InsertAvailButton(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @Free(%struct.TYPE_9__*) #1

declare dso_local i32 @TOOLBAR_SendNotify(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
