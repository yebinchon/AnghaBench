; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_toolspage.c_AddItem.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_toolspage.c_AddItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32*, i64, i64, i32 }

@hInst = common dso_local global i32 0, align 4
@LVIF_TEXT = common dso_local global i32 0, align 4
@hToolsListCtrl = common dso_local global i32 0, align 4
@ListItems_Cmds = common dso_local global i8** null, align 8
@ListItems_Params = common dso_local global i8** null, align 8
@ListItems_Locations = common dso_local global i32* null, align 8
@LVM_SETITEMTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddItem(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i32], align 16
  %12 = alloca %struct.TYPE_4__, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @hInst, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %16 = call i32 @LoadString(i32 %13, i8* %14, i32* %15, i32 256)
  %17 = call i32 @memset(%struct.TYPE_4__* %12, i32 0, i32 48)
  %18 = load i32, i32* @LVIF_TEXT, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i32* %21, i32** %22, align 8
  %23 = load i32, i32* @hToolsListCtrl, align 4
  %24 = call i64 @ListView_GetItemCount(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @hToolsListCtrl, align 4
  %28 = call i32 @ListView_InsertItem(i32 %27, %struct.TYPE_4__* %12)
  %29 = load i8*, i8** %8, align 8
  %30 = load i8**, i8*** @ListItems_Cmds, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %29, i8** %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i8**, i8*** @ListItems_Params, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %34, i8** %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** @ListItems_Locations, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* @hInst, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %47 = call i32 @LoadString(i32 %44, i8* %45, i32* %46, i32 256)
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i32* %48, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @hToolsListCtrl, align 4
  %52 = load i32, i32* @LVM_SETITEMTEXT, align 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = ptrtoint %struct.TYPE_4__* %12 to i32
  %56 = call i32 @SendMessage(i32 %51, i32 %52, i64 %54, i32 %55)
  ret void
}

declare dso_local i32 @LoadString(i32, i8*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @ListView_GetItemCount(i32) #1

declare dso_local i32 @ListView_InsertItem(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @SendMessage(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
