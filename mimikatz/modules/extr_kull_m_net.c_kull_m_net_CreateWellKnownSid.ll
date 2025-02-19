; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_net.c_kull_m_net_CreateWellKnownSid.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_net.c_kull_m_net_CreateWellKnownSid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_net_CreateWellKnownSid(i32 %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @CreateWellKnownSid(i32 %11, i32* %12, i32* null, i64* %8)
  %14 = call i64 (...) @GetLastError()
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @LPTR, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @LocalAlloc(i32 %23, i64 %24)
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32**, i32*** %6, align 8
  store i32* %26, i32** %27, align 8
  %28 = icmp ne i32* %26, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32**, i32*** %6, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @CreateWellKnownSid(i32 %30, i32* %31, i32* %33, i64* %8)
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i32**, i32*** %6, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = call i32* @LocalFree(i32* %38)
  %40 = load i32**, i32*** %6, align 8
  store i32* %39, i32** %40, align 8
  br label %41

41:                                               ; preds = %36, %29
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @CreateWellKnownSid(i32, i32*, i32*, i64*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i32* @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
