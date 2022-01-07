; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_AddSoundProfile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_AddSoundProfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@IDC_SOUND_SCHEME = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AddSoundProfile(i32 %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @KEY_READ, align 4
  %25 = call i64 @RegOpenKeyEx(i32 %22, i32* %23, i32 0, i32 %24, i32* %10)
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %93

30:                                               ; preds = %4
  %31 = mul nuw i64 4, %19
  store i64 %31, i64* %13, align 8
  %32 = load i32, i32* %10, align 4
  %33 = ptrtoint i32* %21 to i32
  %34 = call i64 @RegQueryValueEx(i32 %32, i32* null, i32* null, i32* null, i32 %33, i64* %13)
  store i64 %34, i64* %14, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @RegCloseKey(i32 %35)
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %93

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @IDC_SOUND_SCHEME, align 4
  %45 = call i32 @GetDlgItem(i32 %43, i32 %44)
  %46 = call i64 @ComboBox_AddString(i32 %45, i32* %21)
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* @CB_ERR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i64, i64* @FALSE, align 8
  store i64 %51, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %93

52:                                               ; preds = %42
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %55 = call %struct.TYPE_4__* @HeapAlloc(i32 %53, i32 %54, i32 4)
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %16, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %57 = icmp eq %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @IDC_SOUND_SCHEME, align 4
  %61 = call i32 @GetDlgItem(i32 %59, i32 %60)
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @ComboBox_DeleteString(i32 %61, i64 %62)
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %93

65:                                               ; preds = %52
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MAX_PATH, align 4
  %70 = call i32 @StringCchCopy(i32 %68, i32 %69, i32* %21)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MAX_PATH, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @StringCchCopy(i32 %73, i32 %74, i32* %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @IDC_SOUND_SCHEME, align 4
  %79 = call i32 @GetDlgItem(i32 %77, i32 %78)
  %80 = load i64, i64* %15, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %82 = call i32 @ComboBox_SetItemData(i32 %79, i64 %80, %struct.TYPE_4__* %81)
  %83 = load i64, i64* %9, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %65
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @IDC_SOUND_SCHEME, align 4
  %88 = call i32 @GetDlgItem(i32 %86, i32 %87)
  %89 = load i64, i64* %15, align 8
  %90 = call i32 @ComboBox_SetCurSel(i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %85, %65
  %92 = load i64, i64* @TRUE, align 8
  store i64 %92, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %93

93:                                               ; preds = %91, %58, %50, %40, %28
  %94 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyEx(i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueEx(i32, i32*, i32*, i32*, i32, i64*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i64 @ComboBox_AddString(i32, i32*) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @ComboBox_DeleteString(i32, i64) #2

declare dso_local i32 @StringCchCopy(i32, i32, i32*) #2

declare dso_local i32 @ComboBox_SetItemData(i32, i64, %struct.TYPE_4__*) #2

declare dso_local i32 @ComboBox_SetCurSel(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
