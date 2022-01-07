; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_format_long_date.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_format_long_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_SLONGDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @format_long_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @format_long_date(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [80 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %8 = load i32, i32* @LOCALE_SLONGDATE, align 4
  %9 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 0
  %10 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 0
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = call i32 @GetLocaleInfoW(i32 %7, i32 %8, i32* %9, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @FileTimeToSystemTime(i32* %13, i32* %6)
  %15 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %16 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 0
  %17 = call i32 @GetDateFormatW(i32 %15, i32 0, i32* %6, i32* %16, i32* null, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32* @HeapAlloc(i32 %21, i32 0, i32 %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %31 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 0
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @GetDateFormatW(i32 %30, i32 0, i32* %6, i32* %31, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %20
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32*, i32** %5, align 8
  ret i32* %37
}

declare dso_local i32 @GetLocaleInfoW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @FileTimeToSystemTime(i32*, i32*) #1

declare dso_local i32 @GetDateFormatW(i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
