; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_output_formatstring.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_output_formatstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_ERROR = common dso_local global i64 0, align 8
@FORMAT_MESSAGE_FROM_STRING = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not format string: le=%u, fmt=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @output_formatstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_formatstring(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @NO_ERROR, align 8
  %8 = call i32 @SetLastError(i64 %7)
  %9 = load i32, i32* @FORMAT_MESSAGE_FROM_STRING, align 4
  %10 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %11 = or i32 %9, %10
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32** %5 to i32*
  %14 = call i64 @FormatMessageW(i32 %11, i32* %12, i32 0, i32 0, i32* %13, i32 0, i32* %4)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = call i64 (...) @GetLastError()
  %19 = load i64, i64* @NO_ERROR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = call i64 (...) @GetLastError()
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @wine_dbgstr_w(i32* %23)
  %25 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %24)
  br label %32

26:                                               ; preds = %17, %2
  %27 = load i32*, i32** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @output_writeconsole(i32* %27, i64 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @LocalFree(i32* %30)
  br label %32

32:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @SetLastError(i64) #1

declare dso_local i64 @FormatMessageW(i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @WINE_FIXME(i8*, i64, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @output_writeconsole(i32*, i64) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
