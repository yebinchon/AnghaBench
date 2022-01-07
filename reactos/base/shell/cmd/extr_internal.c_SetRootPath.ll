; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_internal.c_SetRootPath.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_internal.c_SetRootPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@nErrorLevel = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetRootPath(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @StripQuotes(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = call i64 @GetFullPathName(i32* %19, i32 %20, i32* %16, i32* null)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %41

24:                                               ; preds = %2
  %25 = call i32 @GetPathCase(i32* %16, i32* %13)
  %26 = call i64 @_tchdir(i32* %13)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %41

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @_tcsncicmp(i32* %13, i32* %33, i32 2)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @SetCurrentDirectory(i32* %37)
  br label %39

39:                                               ; preds = %36, %32, %29
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %45

41:                                               ; preds = %28, %23
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 @ConErrFormatMessage(i32 %42)
  store i32 1, i32* @nErrorLevel, align 4
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StripQuotes(i32*) #2

declare dso_local i64 @GetFullPathName(i32*, i32, i32*, i32*) #2

declare dso_local i32 @GetPathCase(i32*, i32*) #2

declare dso_local i64 @_tchdir(i32*) #2

declare dso_local i64 @_tcsncicmp(i32*, i32*, i32) #2

declare dso_local i32 @SetCurrentDirectory(i32*) #2

declare dso_local i32 @ConErrFormatMessage(i32) #2

declare dso_local i32 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
