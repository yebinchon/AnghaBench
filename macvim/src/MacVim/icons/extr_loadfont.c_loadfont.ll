; ModuleID = '/home/carl/AnghaBench/macvim/src/MacVim/icons/extr_loadfont.c_loadfont.c'
source_filename = "/home/carl/AnghaBench/macvim/src/MacVim/icons/extr_loadfont.c_loadfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_False = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@kCFURLPOSIXPathStyle = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@kFSCatInfoNone = common dso_local global i32 0, align 4
@kATSFontContextLocal = common dso_local global i32 0, align 4
@kATSFontFormatUnspecified = common dso_local global i32 0, align 4
@kATSOptionFlagsDefault = common dso_local global i32 0, align 4
@Py_True = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @loadfont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @loadfont(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** @Py_False, align 8
  store i32* %15, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @PyArg_ParseTuple(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %2
  %21 = load i32, i32* @kCFAllocatorDefault, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %24 = call i32 @CFStringCreateWithCString(i32 %21, i8* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @kCFAllocatorDefault, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @kCFURLPOSIXPathStyle, align 4
  %28 = call i32 @CFURLCreateWithFileSystemPath(i32 %25, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @CFURLGetFSRef(i32 %29, i32* %10)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %20
  %33 = load i64, i64* @noErr, align 8
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* @kFSCatInfoNone, align 4
  %35 = call i64 @FSGetCatalogInfo(i32* %14, i32 %34, i32* null, i32* null, i32* %13, i32* null)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* @noErr, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @kATSFontContextLocal, align 4
  %40 = load i32, i32* @kATSFontFormatUnspecified, align 4
  %41 = load i32, i32* @kATSOptionFlagsDefault, align 4
  %42 = call i64 @ATSFontActivateFromFileSpecification(i32* %13, i32 %39, i32 %40, i32* null, i32 %41, i32* %12)
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @noErr, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32*, i32** @Py_True, align 8
  store i32* %48, i32** %5, align 8
  br label %49

49:                                               ; preds = %47, %43
  br label %50

50:                                               ; preds = %49, %20
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @CFRelease(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @CFRelease(i32 %53)
  br label %55

55:                                               ; preds = %50, %2
  %56 = load i32*, i32** %5, align 8
  ret i32* %56
}

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i8**) #1

declare dso_local i32 @CFStringCreateWithCString(i32, i8*, i32) #1

declare dso_local i32 @CFURLCreateWithFileSystemPath(i32, i32, i32, i32) #1

declare dso_local i64 @CFURLGetFSRef(i32, i32*) #1

declare dso_local i64 @FSGetCatalogInfo(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ATSFontActivateFromFileSpecification(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @CFRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
