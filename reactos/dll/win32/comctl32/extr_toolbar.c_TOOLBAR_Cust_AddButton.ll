; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_Cust_AddButton.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_Cust_AddButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Add: nIndexAvail %d, nIndexTo %d\0A\00", align 1
@TBN_QUERYINSERT = common dso_local global i32 0, align 4
@IDC_TOOLBARBTN_LBOX = common dso_local global i32 0, align 4
@IDC_AVAILBTN_LBOX = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@LB_GETITEMDATA = common dso_local global i32 0, align 4
@LB_DELETESTRING = common dso_local global i32 0, align 4
@LB_SETCURSEL = common dso_local global i32 0, align 4
@LB_INSERTSTRING = common dso_local global i32 0, align 4
@LB_SETITEMDATA = common dso_local global i32 0, align 4
@TB_INSERTBUTTONW = common dso_local global i32 0, align 4
@TBN_TOOLBARCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32)* @TOOLBAR_Cust_AddButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLBAR_Cust_AddButton(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TBN_QUERYINSERT, align 4
  %26 = call i64 @TOOLBAR_SendNotify(i32* %21, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %99

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IDC_TOOLBARBTN_LBOX, align 4
  %31 = call i32 @GetDlgItem(i32 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IDC_AVAILBTN_LBOX, align 4
  %34 = call i32 @GetDlgItem(i32 %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @LB_GETCOUNT, align 4
  %37 = call i32 @SendMessageW(i32 %35, i32 %36, i32 0, i32 0)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @LB_GETITEMDATA, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @SendMessageW(i32 %38, i32 %39, i32 %40, i32 0)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %28
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @LB_DELETESTRING, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @SendMessageW(i32 %47, i32 %48, i32 %49, i32 0)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @LB_SETCURSEL, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @SendMessageW(i32 %56, i32 %57, i32 %59, i32 0)
  br label %66

61:                                               ; preds = %46
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @LB_SETCURSEL, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @SendMessageW(i32 %62, i32 %63, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %61, %55
  br label %74

67:                                               ; preds = %28
  %68 = call %struct.TYPE_6__* @Alloc(i32 4)
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %15, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = bitcast %struct.TYPE_6__* %69 to i8*
  %72 = bitcast %struct.TYPE_6__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %10, align 8
  br label %74

74:                                               ; preds = %67, %66
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @LB_INSERTSTRING, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @SendMessageW(i32 %75, i32 %76, i32 %77, i32 0)
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @LB_SETITEMDATA, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = ptrtoint %struct.TYPE_6__* %82 to i32
  %84 = call i32 @SendMessageW(i32 %79, i32 %80, i32 %81, i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TB_INSERTBUTTONW, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = ptrtoint i32* %91 to i32
  %93 = call i32 @SendMessageW(i32 %87, i32 %88, i32 %89, i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TBN_TOOLBARCHANGE, align 4
  %98 = call i64 @TOOLBAR_SendNotify(i32* %11, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %74, %4
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i64 @TOOLBAR_SendNotify(i32*, i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @Alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
