; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_get_wine_loader_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_get_wine_loader_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_wine_loader_name.is_win64 = internal constant i32 1, align 4
@get_wine_loader_name.wineW = internal constant [5 x i8] c"wine\00", align 1
@get_wine_loader_name.suffixW = internal constant [3 x i8] c"64\00", align 1
@get_wine_loader_name.loader = internal global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"WINELOADER\00", align 1
@CP_UNIXCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_wine_loader_name() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i8*, i8** @get_wine_loader_name.loader, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %57, label %7

7:                                                ; preds = %0
  %8 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i32, i32* @CP_UNIXCP, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @MultiByteToWideChar(i32 %11, i32 0, i8* %12, i32 -1, i8* null, i32 0)
  %14 = add nsw i32 2, %13
  store i32 %14, i32* %4, align 4
  %15 = call i32 (...) @GetProcessHeap()
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = call i8* @HeapAlloc(i32 %15, i32 0, i32 %19)
  store i8* %20, i8** %2, align 8
  %21 = load i32, i32* @CP_UNIXCP, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @MultiByteToWideChar(i32 %21, i32 0, i8* %22, i32 -1, i8* %23, i32 %24)
  br label %31

26:                                               ; preds = %7
  %27 = call i32 (...) @GetProcessHeap()
  %28 = call i8* @HeapAlloc(i32 %27, i32 0, i32 7)
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @strcpyW(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_wine_loader_name.wineW, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %10
  %32 = load i8*, i8** %2, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @strlenW(i8* %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = call i32 @strlenW(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @get_wine_loader_name.suffixW, i64 0, i64 0))
  %38 = sext i32 %37 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8* %40, i8** %1, align 8
  %41 = load i8*, i8** %1, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = icmp ugt i8* %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load i8*, i8** %1, align 8
  %46 = call i32 @strcmpW(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @get_wine_loader_name.suffixW, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %52

49:                                               ; preds = %44, %31
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @strcatW(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @get_wine_loader_name.suffixW, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %48
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @debugstr_w(i8* %53)
  %55 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** %2, align 8
  store i8* %56, i8** @get_wine_loader_name.loader, align 8
  br label %57

57:                                               ; preds = %52, %0
  %58 = load i8*, i8** @get_wine_loader_name.loader, align 8
  ret i8* %58
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @strcmpW(i8*, i8*) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
