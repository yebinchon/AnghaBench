; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_directorymanagement.c_wceex_getcwd.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_directorymanagement.c_wceex_getcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@Cwd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wceex_getcwd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @malloc(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %30

15:                                               ; preds = %8, %2
  %16 = call i64 (...) @InitCwd()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %30

19:                                               ; preds = %15
  %20 = load i32, i32* @CP_ACP, align 4
  %21 = load i32, i32* @Cwd, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @WideCharToMultiByte(i32 %20, i32 0, i32 %21, i32 -1, i8* %22, i32 %23, i32* null, i32* null)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = call i32 (...) @GetLastError()
  store i32 %27, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %30

28:                                               ; preds = %19
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %28, %26, %18, %13
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @InitCwd(...) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
