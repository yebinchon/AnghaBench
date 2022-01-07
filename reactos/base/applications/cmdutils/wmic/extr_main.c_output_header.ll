; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wmic/extr_main.c_output_header.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wmic/extr_main.c_output_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_header.bomW = internal constant [1 x i32] [i32 65279], align 4
@output_header.fmtW = internal constant [7 x i32] [i32 37, i32 45, i32 42, i32 115, i32 13, i32 10, i32 0], align 16
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @output_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_header(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8192 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [8192 x i32], [8192 x i32]* %7, i64 0, i64 0
  %9 = getelementptr inbounds [8192 x i32], [8192 x i32]* %7, i64 0, i64 0
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @snprintfW(i32* %8, i32 %10, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @output_header.fmtW, i64 0, i64 0), i32 %11, i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %15 = call i32 @GetStdHandle(i32 %14)
  %16 = getelementptr inbounds [8192 x i32], [8192 x i32]* %7, i64 0, i64 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @WriteConsoleW(i32 %15, i32* %16, i32 %17, i32* %6, i32* null)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %22 = call i32 @GetStdHandle(i32 %21)
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @WriteFile(i32 %22, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @output_header.bomW, i64 0, i64 0), i32 4, i32* %6, i32 %23)
  %25 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %26 = call i32 @GetStdHandle(i32 %25)
  %27 = getelementptr inbounds [8192 x i32], [8192 x i32]* %7, i64 0, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @WriteFile(i32 %26, i32* %27, i32 %31, i32* %6, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %20, %2
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @snprintfW(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @WriteConsoleW(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @WriteFile(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
