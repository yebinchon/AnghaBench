; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/doskey/extr_doskey.c_SetMacro.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/doskey/extr_doskey.c_SetMacro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pszExeName = common dso_local global i32 0, align 4
@IDS_INVALID_MACRO_DEF = common dso_local global i32 0, align 4
@szStringBuf = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @SetMacro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetMacro(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  store i32* %8, i32** %4, align 8
  br label %9

9:                                                ; preds = %13, %1
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %4, align 8
  br label %9

16:                                               ; preds = %9
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @wcschr(i32* %17, i32 61)
  store i32* %18, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32* %22, i32** %6, align 8
  br label %23

23:                                               ; preds = %27, %20
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  br label %23

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = icmp ugt i32* %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 -1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 32
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i1 [ false, %31 ], [ %39, %35 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 -1
  store i32* %44, i32** %5, align 8
  br label %31

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @wcschr(i32* %49, i32 32)
  %51 = icmp ne i32* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @pszExeName, align 4
  %56 = call i64 @AddConsoleAliasW(i32* %53, i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %72

59:                                               ; preds = %52, %45
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %16
  %63 = call i32 @GetModuleHandle(i32* null)
  %64 = load i32, i32* @IDS_INVALID_MACRO_DEF, align 4
  %65 = load i8*, i8** @szStringBuf, align 8
  %66 = load i8*, i8** @szStringBuf, align 8
  %67 = call i32 @ARRAYSIZE(i8* %66)
  %68 = call i32 @LoadStringW(i32 %63, i32 %64, i8* %65, i32 %67)
  %69 = load i8*, i8** @szStringBuf, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @wprintf(i8* %69, i32* %70)
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %62, %58
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32* @wcschr(i32*, i32) #1

declare dso_local i64 @AddConsoleAliasW(i32*, i32*, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i32 @GetModuleHandle(i32*) #1

declare dso_local i32 @ARRAYSIZE(i8*) #1

declare dso_local i32 @wprintf(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
