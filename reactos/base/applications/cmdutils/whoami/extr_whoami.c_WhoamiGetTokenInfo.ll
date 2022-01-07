; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/whoami/extr_whoami.c_WhoamiGetTokenInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/whoami/extr_whoami.c_WhoamiGetTokenInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_READ = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i32] [i32 69, i32 82, i32 82, i32 79, i32 82, i32 58, i32 32, i32 110, i32 111, i32 116, i32 32, i32 101, i32 110, i32 111, i32 117, i32 103, i32 104, i32 32, i32 109, i32 101, i32 109, i32 111, i32 114, i32 121, i32 32, i32 116, i32 111, i32 32, i32 97, i32 108, i32 108, i32 111, i32 99, i32 97, i32 116, i32 101, i32 32, i32 116, i32 104, i32 101, i32 32, i32 116, i32 111, i32 107, i32 101, i32 110, i32 32, i32 115, i32 116, i32 114, i32 117, i32 99, i32 116, i32 117, i32 114, i32 101, i32 46, i32 13, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [47 x i32] [i32 69, i32 82, i32 82, i32 79, i32 82, i32 32, i32 48, i32 120, i32 37, i32 120, i32 58, i32 32, i32 99, i32 111, i32 117, i32 108, i32 100, i32 32, i32 110, i32 111, i32 116, i32 32, i32 103, i32 101, i32 116, i32 32, i32 116, i32 111, i32 107, i32 101, i32 110, i32 32, i32 105, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 46, i32 13, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @WhoamiGetTokenInfo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %6 = call i32 (...) @GetCurrentProcess()
  %7 = load i32, i32* @TOKEN_READ, align 4
  %8 = call i64 @OpenProcessToken(i32 %6, i32 %7, i32* %3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @GetTokenInformation(i32 %11, i32 %12, i32* null, i32 %13, i32* %4)
  %15 = call i32 (...) @GetLastError()
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32* @HeapAlloc(i32 %20, i32 %21, i32 %22)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = call i32 (i8*, ...) @wprintf(i8* bitcast ([60 x i32]* @.str to i8*))
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %10
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @GetTokenInformation(i32 %31, i32 %32, i32* %33, i32 %34, i32* %4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 (i8*, ...) @wprintf(i8* bitcast ([47 x i32]* @.str.1 to i8*), i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @WhoamiFree(i32* %40)
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %30
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @CloseHandle(i32 %44)
  br label %46

46:                                               ; preds = %43, %1
  %47 = load i32*, i32** %5, align 8
  ret i32* %47
}

declare dso_local i64 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @GetTokenInformation(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @wprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @WhoamiFree(i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
