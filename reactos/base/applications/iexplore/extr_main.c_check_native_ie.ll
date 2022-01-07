; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/iexplore/extr_main.c_check_native_ie.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/iexplore/extr_main.c_check_native_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@check_native_ie.browseui_dllW = internal constant [13 x i8] c"browseui.dll\00", align 1
@check_native_ie.wineW = internal constant [5 x i8] c"Wine\00", align 1
@check_native_ie.translationW = internal constant [25 x i8] c"\\VarFileInfo\\Translation\00", align 16
@check_native_ie.file_desc_fmtW = internal constant [41 x i8] c"\\StringFileInfo\\%04x%04x\\FileDescription\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_native_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_native_ie() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [48 x i8], align 16
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %7, align 4
  %11 = call i32 @GetFileVersionInfoSizeW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @check_native_ie.browseui_dllW, i64 0, i64 0), i32* %2)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %1, align 4
  br label %54

16:                                               ; preds = %0
  %17 = call i32 (...) @GetProcessHeap()
  %18 = load i32, i32* %3, align 4
  %19 = call i8* @HeapAlloc(i32 %17, i32 0, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @GetFileVersionInfoW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @check_native_ie.browseui_dllW, i64 0, i64 0), i32 0, i32 %20, i8* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i32** %8 to i8**
  %25 = call i64 @VerQueryValueW(i8* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @check_native_ie.translationW, i64 0, i64 0), i8** %24, i32* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %16
  %28 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i64 0, i64 0
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wsprintfW(i8* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @check_native_ie.file_desc_fmtW, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i64 0, i64 0
  %38 = bitcast i32* %4 to i8**
  %39 = call i64 @VerQueryValueW(i8* %36, i8* %37, i8** %38, i32* %5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @strstrW(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @check_native_ie.wineW, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %41, %27
  %47 = phi i1 [ true, %27 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %16
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @HeapFree(i32 %50, i32 0, i8* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %49, %14
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @GetFileVersionInfoSizeW(i8*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetFileVersionInfoW(i8*, i32, i32, i8*) #1

declare dso_local i64 @VerQueryValueW(i8*, i8*, i8**, i32*) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i32, i32) #1

declare dso_local i32 @strstrW(i32, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
