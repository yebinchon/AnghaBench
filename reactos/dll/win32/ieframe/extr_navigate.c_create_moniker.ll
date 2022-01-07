; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_create_moniker.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_create_moniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@URL_APPLY_GUESSSCHEME = common dso_local global i32 0, align 4
@URL_APPLY_GUESSFILE = common dso_local global i32 0, align 4
@URL_APPLY_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"was %s got %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"UrlApplyScheme failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @create_moniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_moniker(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %11 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @PathIsURLW(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32**, i32*** %5, align 8
  %21 = call i32 @CreateURLMoniker(i32* null, i32* %19, i32** %20)
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %45

22:                                               ; preds = %2
  %23 = call i32 @ARRAY_SIZE(i32* %14)
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @URL_APPLY_GUESSSCHEME, align 4
  %26 = load i32, i32* @URL_APPLY_GUESSFILE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @URL_APPLY_DEFAULT, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @UrlApplySchemeW(i32* %24, i32* %14, i32* %8, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @debugstr_w(i32* %31)
  %33 = call i32 @debugstr_w(i32* %14)
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %45

42:                                               ; preds = %22
  %43 = load i32**, i32*** %5, align 8
  %44 = call i32 @CreateURLMoniker(i32* null, i32* %14, i32** %43)
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %38, %18
  %46 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @PathIsURLW(i32*) #2

declare dso_local i32 @CreateURLMoniker(i32*, i32*, i32**) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @UrlApplySchemeW(i32*, i32*, i32*, i32) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @WARN(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
