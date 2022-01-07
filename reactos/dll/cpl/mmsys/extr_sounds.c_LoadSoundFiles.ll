; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_LoadSoundFiles.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_LoadSoundFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@hApplet = common dso_local global i32 0, align 4
@IDS_NO_SOUND = common dso_local global i32 0, align 4
@IDC_SOUND_LIST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i32] [i32 109, i32 101, i32 100, i32 105, i32 97, i32 92, i32 42, i32 0], align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i64 0, align 8
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadSoundFiles(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i32], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* @hApplet, align 4
  %18 = load i32, i32* @IDS_NO_SOUND, align 4
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %21 = call i32 @_countof(i32* %20)
  %22 = call i64 @LoadString(i32 %17, i32 %18, i32* %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = call i32 @TEXT(i8 signext 0)
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %27 = call i32 @_countof(i32* %26)
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @IDC_SOUND_LIST, align 4
  %33 = call i32 @GetDlgItem(i32 %31, i32 %32)
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %35 = call i32 @ComboBox_AddString(i32 %33, i32* %34)
  br label %36

36:                                               ; preds = %24, %1
  %37 = load i32, i32* @MAX_PATH, align 4
  %38 = call i32 @GetWindowsDirectoryW(i32* %16, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @MAX_PATH, align 4
  %44 = sub nsw i32 %43, 9
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %130

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %16, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 92
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %16, i64 %57
  store i32 92, i32* %58, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %55, %48
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %16, i64 %63
  %65 = call i32 @wcscpy(i32* %64, i8* bitcast ([8 x i32]* @.str to i8*))
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 7
  store i32 %67, i32* %11, align 4
  %68 = call i64 @FindFirstFileW(i32* %16, %struct.TYPE_4__* %8)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %130

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %122, %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %122

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32* @wcsrchr(i32* %84, i32 92)
  store i32* %85, i32** %7, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %7, align 8
  br label %94

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %7, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @IDC_SOUND_LIST, align 4
  %97 = load i32, i32* @CB_ADDSTRING, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = ptrtoint i32* %98 to i32
  %100 = call i64 @SendDlgItemMessageW(i32 %95, i32 %96, i32 %97, i32 0, i32 %99)
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @CB_ERR, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %94
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %16, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = bitcast i32* %110 to i8*
  %112 = call i32 @wcscpy(i32* %108, i8* %111)
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @IDC_SOUND_LIST, align 4
  %115 = load i32, i32* @CB_SETITEMDATA, align 4
  %116 = load i64, i64* %10, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i64 @_wcsdup(i32* %16)
  %119 = trunc i64 %118 to i32
  %120 = call i64 @SendDlgItemMessageW(i32 %113, i32 %114, i32 %115, i32 %117, i32 %119)
  br label %121

121:                                              ; preds = %104, %94
  br label %122

122:                                              ; preds = %121, %81
  %123 = load i64, i64* %9, align 8
  %124 = call i64 @FindNextFileW(i64 %123, %struct.TYPE_4__* %8)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %75, label %126

126:                                              ; preds = %122
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @FindClose(i64 %127)
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %130

130:                                              ; preds = %126, %72, %46
  %131 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @LoadString(i32, i32, i32*, i32) #2

declare dso_local i32 @_countof(i32*) #2

declare dso_local i32 @TEXT(i8 signext) #2

declare dso_local i32 @ComboBox_AddString(i32, i32*) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i32 @GetWindowsDirectoryW(i32*, i32) #2

declare dso_local i32 @wcscpy(i32*, i8*) #2

declare dso_local i64 @FindFirstFileW(i32*, %struct.TYPE_4__*) #2

declare dso_local i32* @wcsrchr(i32*, i32) #2

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #2

declare dso_local i64 @_wcsdup(i32*) #2

declare dso_local i64 @FindNextFileW(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @FindClose(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
