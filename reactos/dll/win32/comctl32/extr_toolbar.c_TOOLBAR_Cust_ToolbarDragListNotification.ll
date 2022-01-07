; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_Cust_ToolbarDragListNotification.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_Cust_ToolbarDragListNotification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@IDC_TOOLBARBTN_LBOX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DL_COPYCURSOR = common dso_local global i32 0, align 4
@IDC_AVAILBTN_LBOX = common dso_local global i32 0, align 4
@DL_STOPCURSOR = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*)* @TOOLBAR_Cust_ToolbarDragListNotification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TOOLBAR_Cust_ToolbarDragListNotification(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @IDC_TOOLBARBTN_LBOX, align 4
  %22 = call i32 @GetDlgItem(i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %149 [
    i32 131, label %26
    i32 129, label %44
    i32 128, label %92
    i32 130, label %145
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @LBItemFromPt(i32 %27, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @LB_GETCOUNT, align 4
  %35 = call i32 @SendMessageW(i32 %33, i32 %34, i32 0, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %4, align 4
  br label %150

42:                                               ; preds = %26
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %4, align 4
  br label %150

44:                                               ; preds = %3
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i32 @LBItemFromPt(i32 %45, i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @LB_GETCOUNT, align 4
  %53 = call i32 @SendMessageW(i32 %51, i32 %52, i32 0, i32 0)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %44
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @DrawInsert(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @DL_COPYCURSOR, align 4
  store i32 %66, i32* %4, align 4
  br label %150

67:                                               ; preds = %56, %44
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @IDC_AVAILBTN_LBOX, align 4
  %76 = call i32 @GetDlgItem(i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @MapWindowPoints(i32* null, i32 %77, i32* %13, i32 1)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @ChildWindowFromPoint(i32 %79, i32 %80)
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = load i32, i32* @DL_COPYCURSOR, align 4
  store i32 %85, i32* %4, align 4
  br label %150

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %67
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @DrawInsert(i32 %88, i32 %89, i32 -1)
  %91 = load i32, i32* @DL_STOPCURSOR, align 4
  store i32 %91, i32* %4, align 4
  br label %150

92:                                               ; preds = %3
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TRUE, align 4
  %98 = call i32 @LBItemFromPt(i32 %93, i32 %96, i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @LB_GETCURSEL, align 4
  %101 = call i32 @SendMessageW(i32 %99, i32 %100, i32 0, i32 0)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @LB_GETCOUNT, align 4
  %104 = call i32 @SendMessageW(i32 %102, i32 %103, i32 0, i32 0)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %92
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %17, align 4
  %110 = sub nsw i32 %109, 1
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @DrawInsert(i32 %113, i32 %114, i32 -1)
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @TOOLBAR_Cust_MoveButton(i32* %116, i32 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %112, %107, %92
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %144

124:                                              ; preds = %121
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @IDC_AVAILBTN_LBOX, align 4
  %130 = call i32 @GetDlgItem(i32 %128, i32 %129)
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @MapWindowPoints(i32* null, i32 %131, i32* %18, i32 1)
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @ChildWindowFromPoint(i32 %133, i32 %134)
  %136 = load i32, i32* %19, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %124
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @TOOLBAR_Cust_RemoveButton(i32* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %124
  br label %144

144:                                              ; preds = %143, %121
  br label %149

145:                                              ; preds = %3
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @DrawInsert(i32 %146, i32 %147, i32 -1)
  br label %149

149:                                              ; preds = %3, %145, %144
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %87, %84, %61, %42, %40
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @LBItemFromPt(i32, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @DrawInsert(i32, i32, i32) #1

declare dso_local i32 @MapWindowPoints(i32*, i32, i32*, i32) #1

declare dso_local i32 @ChildWindowFromPoint(i32, i32) #1

declare dso_local i32 @TOOLBAR_Cust_MoveButton(i32*, i32, i32, i32) #1

declare dso_local i32 @TOOLBAR_Cust_RemoveButton(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
