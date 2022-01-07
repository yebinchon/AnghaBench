; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_profile.c_PROFILE_WriteLine.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_profile.c_PROFILE_WriteLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"writing: %s\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"encoding type %d not implemented\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32)* @PROFILE_WriteLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PROFILE_WriteLine(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @debugstr_wn(i8* %12, i32 %13)
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %86 [
    i32 131, label %17
    i32 128, label %42
    i32 129, label %67
    i32 130, label %75
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* @CP_ACP, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @WideCharToMultiByte(i32 %18, i32 0, i8* %19, i32 %20, i8* null, i32 0, i32* null, i32* null)
  store i32 %21, i32* %10, align 4
  %22 = call i32 (...) @GetProcessHeap()
  %23 = load i32, i32* %10, align 4
  %24 = call i8* @HeapAlloc(i32 %22, i32 0, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %89

28:                                               ; preds = %17
  %29 = load i32, i32* @CP_ACP, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @WideCharToMultiByte(i32 %29, i32 0, i8* %30, i32 %31, i8* %32, i32 %33, i32* null, i32* null)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @WriteFile(i32 %35, i8* %36, i32 %37, i32* %11, i32* null)
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @HeapFree(i32 %39, i32 0, i8* %40)
  br label %89

42:                                               ; preds = %4
  %43 = load i32, i32* @CP_UTF8, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @WideCharToMultiByte(i32 %43, i32 0, i8* %44, i32 %45, i8* null, i32 0, i32* null, i32* null)
  store i32 %46, i32* %10, align 4
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i32, i32* %10, align 4
  %49 = call i8* @HeapAlloc(i32 %47, i32 0, i32 %48)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  br label %89

53:                                               ; preds = %42
  %54 = load i32, i32* @CP_UTF8, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @WideCharToMultiByte(i32 %54, i32 0, i8* %55, i32 %56, i8* %57, i32 %58, i32* null, i32* null)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @WriteFile(i32 %60, i8* %61, i32 %62, i32* %11, i32* null)
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @HeapFree(i32 %64, i32 0, i8* %65)
  br label %89

67:                                               ; preds = %4
  %68 = load i32, i32* %5, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 1
  %73 = trunc i64 %72 to i32
  %74 = call i32 @WriteFile(i32 %68, i8* %69, i32 %73, i32* %11, i32* null)
  br label %89

75:                                               ; preds = %4
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @PROFILE_ByteSwapShortBuffer(i8* %76, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = call i32 @WriteFile(i32 %79, i8* %80, i32 %84, i32* %11, i32* null)
  br label %89

86:                                               ; preds = %4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %27, %52, %86, %75, %67, %53, %28
  ret void
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_wn(i8*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WriteFile(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @PROFILE_ByteSwapShortBuffer(i8*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
