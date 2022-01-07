; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_Cust_AvailDragListNotification.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_Cust_AvailDragListNotification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@IDC_TOOLBARBTN_LBOX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@DL_COPYCURSOR = common dso_local global i32 0, align 4
@IDC_AVAILBTN_LBOX = common dso_local global i32 0, align 4
@DL_STOPCURSOR = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*)* @TOOLBAR_Cust_AvailDragListNotification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TOOLBAR_Cust_AvailDragListNotification(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IDC_TOOLBARBTN_LBOX, align 4
  %18 = call i32 @GetDlgItem(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %105 [
    i32 131, label %22
    i32 129, label %24
    i32 128, label %71
    i32 130, label %101
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %4, align 4
  br label %106

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @LBItemFromPt(i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @LB_GETCOUNT, align 4
  %33 = call i32 @SendMessageW(i32 %31, i32 %32, i32 0, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @DrawInsert(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @DL_COPYCURSOR, align 4
  store i32 %45, i32* %4, align 4
  br label %106

46:                                               ; preds = %36, %24
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @IDC_AVAILBTN_LBOX, align 4
  %55 = call i32 @GetDlgItem(i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @MapWindowPoints(i32* null, i32 %56, i32* %11, i32 1)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @ChildWindowFromPoint(i32 %58, i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32, i32* @DL_COPYCURSOR, align 4
  store i32 %64, i32* %4, align 4
  br label %106

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @DrawInsert(i32 %67, i32 %68, i32 -1)
  %70 = load i32, i32* @DL_STOPCURSOR, align 4
  store i32 %70, i32* %4, align 4
  br label %106

71:                                               ; preds = %3
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TRUE, align 4
  %77 = call i32 @LBItemFromPt(i32 %72, i32 %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @LB_GETCOUNT, align 4
  %80 = call i32 @SendMessageW(i32 %78, i32 %79, i32 0, i32 0)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @IDC_AVAILBTN_LBOX, align 4
  %83 = load i32, i32* @LB_GETCURSEL, align 4
  %84 = call i32 @SendDlgItemMessageW(i32 %81, i32 %82, i32 %83, i32 0, i32 0)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %71
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @DrawInsert(i32 %92, i32 %93, i32 -1)
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @TOOLBAR_Cust_AddButton(i32* %95, i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %91, %87, %71
  br label %101

101:                                              ; preds = %3, %100
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @DrawInsert(i32 %102, i32 %103, i32 -1)
  br label %105

105:                                              ; preds = %3, %101
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %66, %63, %40, %22
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @LBItemFromPt(i32, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @DrawInsert(i32, i32, i32) #1

declare dso_local i32 @MapWindowPoints(i32*, i32, i32*, i32) #1

declare dso_local i32 @ChildWindowFromPoint(i32, i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TOOLBAR_Cust_AddButton(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
