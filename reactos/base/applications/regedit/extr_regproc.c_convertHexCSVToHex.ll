; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_convertHexCSVToHex.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_convertHexCSVToHex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%S: ERROR converting CSV hex stream. Invalid value at '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @convertHexCSVToHex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convertHexCSVToHex(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @lstrlenW(i8* %12)
  %14 = add nsw i32 %13, 1
  %15 = sdiv i32 %14, 2
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = call i32 (...) @GetProcessHeap()
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @HeapAlloc(i32 %17, i32 0, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @CHECK_ENOUGH_MEMORY(i8* %21)
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i32*, i32** %5, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %77, %2
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %79

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strtoulW(i8* %32, i8** %10, i32 16)
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %50, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 255
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 44
  br i1 %49, label %50, label %63

50:                                               ; preds = %45, %37, %31
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @GetMultiByteString(i8* %51)
  store i8* %52, i8** %11, align 8
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (...) @getAppName()
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %54, i8* %55)
  %57 = call i32 (...) @GetProcessHeap()
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @HeapFree(i32 %57, i32 0, i8* %58)
  %60 = call i32 (...) @GetProcessHeap()
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @HeapFree(i32 %60, i32 0, i8* %61)
  store i8* null, i8** %3, align 8
  br label %81

63:                                               ; preds = %45, %40
  %64 = load i32, i32* %9, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %7, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  br label %77

77:                                               ; preds = %74, %63
  %78 = load i8*, i8** %10, align 8
  store i8* %78, i8** %6, align 8
  br label %26

79:                                               ; preds = %26
  %80 = load i8*, i8** %8, align 8
  store i8* %80, i8** %3, align 8
  br label %81

81:                                               ; preds = %79, %50
  %82 = load i8*, i8** %3, align 8
  ret i8* %82
}

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CHECK_ENOUGH_MEMORY(i8*) #1

declare dso_local i32 @strtoulW(i8*, i8**, i32) #1

declare dso_local i8* @GetMultiByteString(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @getAppName(...) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
