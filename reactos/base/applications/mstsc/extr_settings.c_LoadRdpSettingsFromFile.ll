; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_settings.c_LoadRdpSettingsFromFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_settings.c_LoadRdpSettingsFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CSIDL_PERSONAL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i32] [i32 92, i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 46, i32 114, i32 100, i32 112, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadRdpSettingsFromFile(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  store i32* null, i32** %10, align 8
  %20 = load i32, i32* @CSIDL_PERSONAL, align 4
  %21 = call i64 @SHGetFolderLocation(i32* null, i32 %20, i32* null, i32 0, i32** %10)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @SHGetPathFromIDListW(i32* %26, i32* %15)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = call i32 @wcscat(i32* %15, i8* bitcast ([13 x i32]* @.str to i8*))
  store i32* %15, i32** %4, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @CoTaskMemFree(i32* %31)
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %19
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32*, i32** %4, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  store i32* null, i32** %11, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i64 @OpenRdpFile(i32* %39, i32 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = call i32* @ReadRdpFile(i64 %45)
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @ParseSettings(i32 %50, i32* %51)
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @HeapFree(i32 %53, i32 0, i32* %54)
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %49, %44
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @CloseRdpFile(i64 %58)
  br label %60

60:                                               ; preds = %57, %38
  br label %61

61:                                               ; preds = %60, %35
  %62 = load i32, i32* %8, align 4
  %63 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %63)
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SHGetFolderLocation(i32*, i32, i32*, i32, i32**) #2

declare dso_local i64 @SHGetPathFromIDListW(i32*, i32*) #2

declare dso_local i32 @wcscat(i32*, i8*) #2

declare dso_local i32 @CoTaskMemFree(i32*) #2

declare dso_local i64 @OpenRdpFile(i32*, i32) #2

declare dso_local i32* @ReadRdpFile(i64) #2

declare dso_local i32 @ParseSettings(i32, i32*) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @CloseRdpFile(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
