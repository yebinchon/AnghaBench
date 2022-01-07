; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_input_list.c_InputList_AddInputMethodToUserRegistry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_input_list.c_InputList_AddInputMethodToUserRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 117, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 56, i32 88, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i32] [i32 75, i32 101, i32 121, i32 98, i32 111, i32 97, i32 114, i32 100, i32 32, i32 76, i32 97, i32 121, i32 111, i32 117, i32 116, i32 92, i32 80, i32 114, i32 101, i32 108, i32 111, i32 97, i32 100, i32 0], align 4
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i32] [i32 75, i32 101, i32 121, i32 98, i32 111, i32 97, i32 114, i32 100, i32 32, i32 76, i32 97, i32 121, i32 111, i32 117, i32 116, i32 92, i32 83, i32 117, i32 98, i32 115, i32 116, i32 105, i32 116, i32 117, i32 116, i32 101, i32 115, i32 0], align 4
@INPUT_LIST_NODE_FLAG_ADDED = common dso_local global i32 0, align 4
@INPUT_LIST_NODE_FLAG_EDITED = common dso_local global i32 0, align 4
@KLF_SUBSTITUTE_OK = common dso_local global i32 0, align 4
@KLF_NOTELLSHELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*)* @InputList_AddInputMethodToUserRegistry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InputList_AddInputMethodToUserRegistry(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %9, align 8
  %21 = call i32 @ARRAYSIZE(i32* %16)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @StringCchPrintfW(i32* %16, i32 %21, i8* bitcast ([4 x i32]* @.str to i8*), i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @HIWORD(i32 %28)
  %30 = and i32 %29, 61440
  %31 = icmp eq i32 %30, 57344
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = call i32 @ARRAYSIZE(i32* %19)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @StringCchPrintfW(i32* %19, i32 %33, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 %38)
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %9, align 8
  br label %49

41:                                               ; preds = %2
  %42 = call i32 @ARRAYSIZE(i32* %19)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @StringCchPrintfW(i32* %19, i32 %42, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 %47)
  br label %49

49:                                               ; preds = %41, %32
  %50 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %51 = load i32, i32* @KEY_SET_VALUE, align 4
  %52 = call i64 @RegOpenKeyExW(i32 %50, i8* bitcast ([24 x i32]* @.str.2 to i8*), i32 0, i32 %51, i32* %10)
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @REG_SZ, align 4
  %58 = ptrtoint i32* %19 to i32
  %59 = call i32 @wcslen(i32* %19)
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @RegSetValueExW(i32 %56, i32* %16, i32 0, i32 %57, i32 %58, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @RegCloseKey(i32 %65)
  br label %67

67:                                               ; preds = %55, %49
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %72, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %67
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* @FALSE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %79
  %84 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %85 = load i32, i32* @KEY_SET_VALUE, align 4
  %86 = call i64 @RegOpenKeyExW(i32 %84, i8* bitcast ([28 x i32]* @.str.3 to i8*), i32 0, i32 %85, i32* %10)
  %87 = load i64, i64* @ERROR_SUCCESS, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %83
  %90 = load i32, i32* @MAX_PATH, align 4
  %91 = zext i32 %90 to i64
  %92 = call i8* @llvm.stacksave()
  store i8* %92, i8** %11, align 8
  %93 = alloca i32, i64 %91, align 16
  store i64 %91, i64* %12, align 8
  %94 = call i32 @ARRAYSIZE(i32* %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @StringCchPrintfW(i32* %93, i32 %94, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 %99)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @REG_SZ, align 4
  %103 = ptrtoint i32* %93 to i32
  %104 = call i32 @wcslen(i32* %93)
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i32 @RegSetValueExW(i32 %101, i32* %19, i32 0, i32 %102, i32 %103, i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @RegCloseKey(i32 %110)
  %112 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %112)
  br label %113

113:                                              ; preds = %89, %83
  br label %114

114:                                              ; preds = %113, %79, %67
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @INPUT_LIST_NODE_FLAG_ADDED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @INPUT_LIST_NODE_FLAG_EDITED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121, %114
  %129 = load i32, i32* @KLF_SUBSTITUTE_OK, align 4
  %130 = load i32, i32* @KLF_NOTELLSHELL, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @LoadKeyboardLayoutW(i32* %19, i32 %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %128, %121
  %136 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StringCchPrintfW(i32*, i32, i8*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @HIWORD(i32) #2

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @RegSetValueExW(i32, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @LoadKeyboardLayoutW(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
