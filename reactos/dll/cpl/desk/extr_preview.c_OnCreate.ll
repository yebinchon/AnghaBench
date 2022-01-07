; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_preview.c_OnCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_preview.c_OnCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@DEFAULT_GUI_FONT = common dso_local global i32 0, align 4
@hApplet = common dso_local global i32 0, align 4
@IDR_PREVIEW_MENU = common dso_local global i32 0, align 4
@MF_BYPOSITION = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@MF_HILITE = common dso_local global i32 0, align 4
@IDS_INACTWIN = common dso_local global i32 0, align 4
@IDS_ACTWIN = common dso_local global i32 0, align 4
@IDS_WINTEXT = common dso_local global i32 0, align 4
@IDS_MESSBOX = common dso_local global i32 0, align 4
@IDS_MESSTEXT = common dso_local global i32 0, align 4
@IDS_BUTTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*)* @OnCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnCreate(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %7 = load i32, i32* @DEFAULT_GUI_FONT, align 4
  %8 = call i64 @GetStockObject(i32 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 8
  store i64 %8, i64* %10, align 8
  %11 = load i32, i32* @hApplet, align 4
  %12 = load i32, i32* @IDR_PREVIEW_MENU, align 4
  %13 = call i32 @MAKEINTRESOURCE(i32 %12)
  %14 = call i32 @LoadMenu(i32 %11, i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MF_BYPOSITION, align 4
  %21 = load i32, i32* @MF_GRAYED, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @EnableMenuItem(i32 %19, i32 1, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MF_BYPOSITION, align 4
  %29 = load i32, i32* @MF_HILITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @HiliteMenuItem(i32 %24, i32 %27, i32 2, i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 6
  %34 = load i32, i32* @hApplet, align 4
  %35 = load i32, i32* @IDS_INACTWIN, align 4
  %36 = call i32 @AllocAndLoadString(i32* %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i32, i32* @hApplet, align 4
  %40 = load i32, i32* @IDS_ACTWIN, align 4
  %41 = call i32 @AllocAndLoadString(i32* %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* @hApplet, align 4
  %45 = load i32, i32* @IDS_WINTEXT, align 4
  %46 = call i32 @AllocAndLoadString(i32* %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* @hApplet, align 4
  %50 = load i32, i32* @IDS_MESSBOX, align 4
  %51 = call i32 @AllocAndLoadString(i32* %48, i32 %49, i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* @hApplet, align 4
  %55 = load i32, i32* @IDS_MESSTEXT, align 4
  %56 = call i32 @AllocAndLoadString(i32* %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* @hApplet, align 4
  %60 = load i32, i32* @IDS_BUTTEXT, align 4
  %61 = call i32 @AllocAndLoadString(i32* %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @LoadCurrentScheme(i32* %64)
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @UpdatePreviewTheme(i32 %66, %struct.TYPE_4__* %67, i32* %68)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @LoadMenu(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @EnableMenuItem(i32, i32, i32) #1

declare dso_local i32 @HiliteMenuItem(i32, i32, i32, i32) #1

declare dso_local i32 @AllocAndLoadString(i32*, i32, i32) #1

declare dso_local i32 @LoadCurrentScheme(i32*) #1

declare dso_local i32 @UpdatePreviewTheme(i32, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
