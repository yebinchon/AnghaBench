; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/atl/extr_atl_ax.c_get_content_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/atl/extr_atl_ax.c_get_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_content_type.mshtml_prefixW = internal constant [8 x i8] c"mshtml:\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"name %s\0A\00", align 1
@IsEmpty = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@IsGUID = common dso_local global i32 0, align 4
@URL_APPLY_GUESSSCHEME = common dso_local global i32 0, align 4
@URL_APPLY_GUESSFILE = common dso_local global i32 0, align 4
@CLSID_WebBrowser = common dso_local global i32 0, align 4
@IsURL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"mshtml prefix not implemented\0A\00", align 1
@IsHTML = common dso_local global i32 0, align 4
@IsUnknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @get_content_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_content_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17, %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @wine_dbgstr_w(i32* %23)
  %25 = call i32 @WARN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @IsEmpty, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %68

27:                                               ; preds = %17
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @CLSIDFromString(i32* %28, i32* %29)
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @CLSIDFromProgID(i32* %34, i32* %35)
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %27
  %40 = load i32, i32* @IsGUID, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %68

41:                                               ; preds = %33
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @PathIsURLW(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @URL_APPLY_GUESSSCHEME, align 4
  %48 = load i32, i32* @URL_APPLY_GUESSFILE, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @UrlApplySchemeW(i32* %46, i8* %13, i32* %8, i32 %49)
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45, %41
  %54 = load i32, i32* @CLSID_WebBrowser, align 4
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @IsURL, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %68

57:                                               ; preds = %45
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @_wcsnicmp(i32* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_content_type.mshtml_prefixW, i64 0, i64 0), i32 7)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @CLSID_WebBrowser, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @IsHTML, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @IsUnknown, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %68

68:                                               ; preds = %66, %61, %53, %39, %22
  %69 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WARN(i8*, i32) #2

declare dso_local i32 @wine_dbgstr_w(i32*) #2

declare dso_local i64 @CLSIDFromString(i32*, i32*) #2

declare dso_local i64 @CLSIDFromProgID(i32*, i32*) #2

declare dso_local i64 @PathIsURLW(i32*) #2

declare dso_local i64 @UrlApplySchemeW(i32*, i8*, i32*, i32) #2

declare dso_local i32 @_wcsnicmp(i32*, i8*, i32) #2

declare dso_local i32 @FIXME(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
