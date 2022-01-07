; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_executable_exists.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_executable_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@enc_codepage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**)* @executable_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @executable_exists(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load i32, i32* @_MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @_MAX_PATH, align 4
  %16 = call i64 @SearchPath(i32* null, i8* %14, i32* null, i32 %15, i8* %13, i8** %6)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %33

20:                                               ; preds = %2
  %21 = call i64 @mch_isdir(i8* %13)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %33

25:                                               ; preds = %20
  %26 = load i32**, i32*** %5, align 8
  %27 = icmp ne i32** %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32* @vim_strsave(i8* %13)
  %30 = load i32**, i32*** %5, align 8
  store i32* %29, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %23, %18
  %34 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SearchPath(i32*, i8*, i32*, i32, i8*, i8**) #2

declare dso_local i64 @mch_isdir(i8*) #2

declare dso_local i32* @vim_strsave(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
