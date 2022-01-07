; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_file_regex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_file_regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @file_regex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @file_regex(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10, %1
  %15 = call i32 (...) @GetProcessHeap()
  %16 = call i32* @HeapAlloc(i32 %15, i32 0, i32 12)
  store i32* %16, i32** %4, align 8
  store i32* %16, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %88

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  store i32 63, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  store i32 35, i32* %22, align 4
  br label %85

24:                                               ; preds = %10
  %25 = load i32, i32* @CP_ACP, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @MultiByteToWideChar(i32 %25, i32 0, i8* %26, i32 -1, i32* null, i32 0)
  store i32 %27, i32* %6, align 4
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = mul nsw i32 5, %30
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32* @HeapAlloc(i32 %28, i32 0, i32 %37)
  store i32* %38, i32** %4, align 8
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %24
  store i32* null, i32** %2, align 8
  br label %88

42:                                               ; preds = %24
  %43 = load i32*, i32** %4, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = mul nsw i32 5, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32* %49, i32** %7, align 8
  %50 = load i32, i32* @CP_ACP, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @MultiByteToWideChar(i32 %50, i32 0, i8* %51, i32 -1, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %81, %42
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %76 [
    i32 92, label %62
    i32 47, label %62
    i32 46, label %73
  ]

62:                                               ; preds = %59, %59
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %5, align 8
  store i32 91, i32* %63, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %5, align 8
  store i32 92, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %5, align 8
  store i32 92, i32* %67, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %5, align 8
  store i32 47, i32* %69, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %5, align 8
  store i32 93, i32* %71, align 4
  br label %81

73:                                               ; preds = %59
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %5, align 8
  store i32 63, i32* %74, align 4
  br label %81

76:                                               ; preds = %59
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  br label %81

81:                                               ; preds = %76, %73, %62
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %7, align 8
  br label %55

84:                                               ; preds = %55
  br label %85

85:                                               ; preds = %84, %19
  %86 = load i32*, i32** %5, align 8
  store i32 0, i32* %86, align 4
  %87 = load i32*, i32** %4, align 8
  store i32* %87, i32** %2, align 8
  br label %88

88:                                               ; preds = %85, %41, %18
  %89 = load i32*, i32** %2, align 8
  ret i32* %89
}

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
