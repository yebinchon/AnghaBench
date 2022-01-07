; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_main.c_PrintPaddedMessageString.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_main.c_PrintPaddedMessageString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_HMODULE = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@hModuleNetMsg = common dso_local global i32 0, align 4
@LANG_USER_DEFAULT = common dso_local global i32 0, align 4
@StdOut = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrintPaddedMessageString(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %9 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @hModuleNetMsg, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %16 = ptrtoint i32** %6 to i32
  %17 = call i64 @FormatMessageW(i32 %12, i32 %13, i64 %14, i32 %15, i32 %16, i32 0, i32* null)
  store i64 %17, i64* %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @StdOut, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ConPuts(i32 %21, i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @LocalFree(i32* %24)
  store i32* null, i32** %6, align 8
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub nsw i64 %31, %32
  %34 = call i32 @PrintPadding(i32 32, i64 %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @FormatMessageW(i32, i32, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @ConPuts(i32, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @PrintPadding(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
