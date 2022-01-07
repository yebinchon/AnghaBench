; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_settings.c_SaveRdpSettingsToFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_settings.c_SaveRdpSettingsToFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CSIDL_PERSONAL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i32] [i32 92, i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 46, i32 114, i32 100, i32 112, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SaveRdpSettingsToFile(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  store i32* null, i32** %10, align 8
  %19 = load i32, i32* @CSIDL_PERSONAL, align 4
  %20 = call i64 @SHGetFolderLocation(i32* null, i32 %19, i32* null, i32 0, i32** %10)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @SHGetPathFromIDListW(i32* %25, i32* %14)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32 @wcscat(i32* %14, i8* bitcast ([13 x i32]* @.str to i8*))
  store i32* %14, i32** %3, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @CoTaskMemFree(i32* %30)
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %18
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32*, i32** %3, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i64 @OpenRdpFile(i32* %38, i32 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @WriteRdpFile(i64 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @CloseRdpFile(i64 %51)
  br label %53

53:                                               ; preds = %50, %37
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %56)
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SHGetFolderLocation(i32*, i32, i32*, i32, i32**) #2

declare dso_local i64 @SHGetPathFromIDListW(i32*, i32*) #2

declare dso_local i32 @wcscat(i32*, i8*) #2

declare dso_local i32 @CoTaskMemFree(i32*) #2

declare dso_local i64 @OpenRdpFile(i32*, i32) #2

declare dso_local i64 @WriteRdpFile(i64, i32) #2

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
