; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_Cust_MoveButton.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_Cust_MoveButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"index from %d, index to %d\0A\00", align 1
@TBN_QUERYINSERT = common dso_local global i32 0, align 4
@IDC_TOOLBARBTN_LBOX = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@LB_GETITEMDATA = common dso_local global i32 0, align 4
@LB_DELETESTRING = common dso_local global i32 0, align 4
@LB_INSERTSTRING = common dso_local global i32 0, align 4
@LB_SETITEMDATA = common dso_local global i32 0, align 4
@LB_SETCURSEL = common dso_local global i32 0, align 4
@IDC_MOVEUP_BTN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_MOVEDN_BTN = common dso_local global i32 0, align 4
@TB_DELETEBUTTON = common dso_local global i32 0, align 4
@TB_INSERTBUTTONW = common dso_local global i32 0, align 4
@TBN_TOOLBARCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i64, i64)* @TOOLBAR_Cust_MoveButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLBAR_Cust_MoveButton(%struct.TYPE_7__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %115

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TBN_QUERYINSERT, align 4
  %29 = call i64 @TOOLBAR_SendNotify(i32* %24, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %115

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IDC_TOOLBARBTN_LBOX, align 4
  %34 = call i32 @GetDlgItem(i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @LB_GETCOUNT, align 4
  %37 = call i32 @SendMessageW(i32 %35, i32 %36, i64 0, i32 0)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @LB_GETITEMDATA, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @SendMessageW(i32 %38, i32 %39, i64 %40, i32 0)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @LB_DELETESTRING, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @SendMessageW(i32 %44, i32 %45, i64 %46, i32 0)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @LB_INSERTSTRING, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @SendMessageW(i32 %48, i32 %49, i64 %50, i32 0)
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @LB_SETITEMDATA, align 4
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = ptrtoint %struct.TYPE_5__* %55 to i32
  %57 = call i32 @SendMessageW(i32 %52, i32 %53, i64 %54, i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @LB_SETCURSEL, align 4
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @SendMessageW(i32 %58, i32 %59, i64 %60, i32 0)
  %62 = load i64, i64* %8, align 8
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %31
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @IDC_MOVEUP_BTN, align 4
  %67 = call i32 @GetDlgItem(i32 %65, i32 %66)
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @EnableWindow(i32 %67, i32 %68)
  br label %76

70:                                               ; preds = %31
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @IDC_MOVEUP_BTN, align 4
  %73 = call i32 @GetDlgItem(i32 %71, i32 %72)
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @EnableWindow(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %64
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @IDC_MOVEDN_BTN, align 4
  %85 = call i32 @GetDlgItem(i32 %83, i32 %84)
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @EnableWindow(i32 %85, i32 %86)
  br label %94

88:                                               ; preds = %76
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @IDC_MOVEDN_BTN, align 4
  %91 = call i32 @GetDlgItem(i32 %89, i32 %90)
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @EnableWindow(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TB_DELETEBUTTON, align 4
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @SendMessageW(i32 %97, i32 %98, i64 %99, i32 0)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @TB_INSERTBUTTONW, align 4
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = ptrtoint i32* %107 to i32
  %109 = call i32 @SendMessageW(i32 %103, i32 %104, i64 %105, i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TBN_TOOLBARCHANGE, align 4
  %114 = call i64 @TOOLBAR_SendNotify(i32* %11, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %20, %94, %21
  ret void
}

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i64 @TOOLBAR_SendNotify(i32*, i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i64, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
