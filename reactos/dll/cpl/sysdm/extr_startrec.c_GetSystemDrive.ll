; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_startrec.c_GetSystemDrive.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_startrec.c_GetSystemDrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 68, i32 114, i32 105, i32 118, i32 101, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @GetSystemDrive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetSystemDrive(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  %7 = call i32 (...) @GetProcessHeap()
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = call i32* @HeapAlloc(i32 %7, i32 0, i32 %11)
  %13 = load i32**, i32*** %3, align 8
  store i32* %12, i32** %13, align 8
  %14 = load i32**, i32*** %3, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %65

17:                                               ; preds = %1
  %18 = load i32**, i32*** %3, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = call i32 @GetEnvironmentVariableW(i8* bitcast ([12 x i32]* @.str to i8*), i32* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %17
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load i32**, i32*** %3, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32* @HeapReAlloc(i32 %26, i32 0, i32* %28, i32 %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %56

37:                                               ; preds = %25
  %38 = load i32*, i32** %5, align 8
  %39 = load i32**, i32*** %3, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i32**, i32*** %3, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @GetEnvironmentVariableW(i8* bitcast ([12 x i32]* @.str to i8*), i32* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %37
  br label %56

51:                                               ; preds = %47
  br label %63

52:                                               ; preds = %17
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55, %50, %36
  %57 = call i32 (...) @GetProcessHeap()
  %58 = load i32**, i32*** %3, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @HeapFree(i32 %57, i32 0, i32* %59)
  %61 = load i32**, i32*** %3, align 8
  store i32* null, i32** %61, align 8
  store i32 0, i32* %2, align 4
  br label %66

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %63, %56
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetEnvironmentVariableW(i8*, i32*, i32) #1

declare dso_local i32* @HeapReAlloc(i32, i32, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
