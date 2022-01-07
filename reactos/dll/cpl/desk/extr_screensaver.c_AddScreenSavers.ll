; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_screensaver.c_AddScreenSavers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_screensaver.c_AddScreenSavers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@IDC_SCREENS_LIST = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@hApplet = common dso_local global i32 0, align 4
@IDS_NONE = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @AddScreenSavers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddScreenSavers(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IDC_SCREENS_LIST, align 4
  %15 = call i32 @GetDlgItem(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %11, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @hApplet, align 4
  %30 = load i32, i32* @IDS_NONE, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @LoadString(i32 %29, i32 %30, i64 %33, i32 2)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @CB_ADDSTRING, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @SendMessage(i32 %35, i32 %36, i32 0, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @CB_SETITEMDATA, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @SendMessage(i32 %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @hApplet, align 4
  %49 = load i32, i32* @MAX_PATH, align 4
  %50 = call i32 @GetModuleFileName(i32 %48, i32* %22, i32 %49)
  %51 = call i32 @_T(i8 signext 92)
  %52 = call i8* @_tcsrchr(i32* %22, i32 %51)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %2
  %56 = load i8*, i8** %12, align 8
  store i8 0, i8* %56, align 1
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = call i32 @SearchScreenSavers(i32 %57, i32* %22, %struct.TYPE_6__* %58)
  br label %60

60:                                               ; preds = %55, %2
  %61 = load i32, i32* @MAX_PATH, align 4
  %62 = call i32 @GetSystemDirectory(i32* %19, i32 %61)
  %63 = load i8*, i8** %12, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = call i64 @_tcsicmp(i32* %19, i32* %22)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = call i32 @SearchScreenSavers(i32 %69, i32* %19, %struct.TYPE_6__* %70)
  br label %72

72:                                               ; preds = %68, %65, %60
  %73 = load i32, i32* @MAX_PATH, align 4
  %74 = call i32 @GetWindowsDirectory(i32* %19, i32 %73)
  %75 = load i8*, i8** %12, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = call i64 @_tcsicmp(i32* %19, i32* %22)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = call i32 @SearchScreenSavers(i32 %81, i32* %19, %struct.TYPE_6__* %82)
  br label %84

84:                                               ; preds = %80, %77, %72
  %85 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @LoadString(i32, i32, i64, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @GetModuleFileName(i32, i32*, i32) #1

declare dso_local i8* @_tcsrchr(i32*, i32) #1

declare dso_local i32 @_T(i8 signext) #1

declare dso_local i32 @SearchScreenSavers(i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @GetSystemDirectory(i32*, i32) #1

declare dso_local i64 @_tcsicmp(i32*, i32*) #1

declare dso_local i32 @GetWindowsDirectory(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
