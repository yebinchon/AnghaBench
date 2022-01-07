; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/fdebug/extr_rs232.c_Rs232ReadByteWin32.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/fdebug/extr_rs232.c_Rs232ReadByteWin32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hPortHandle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ReadFile() failed. GetLastError() = %lu.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Rs232ReadByteWin32(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @hPortHandle, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @ReadFile(i32 %6, i32* %7, i32 1, i32* %4, i32* null)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = call i32 (...) @GetLastError()
  store i32 %11, i32* %5, align 4
  %12 = call i32 @TEXT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @_tprintf(i32 %12, i32 %13)
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %19, %10
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @ReadFile(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @_tprintf(i32, i32) #1

declare dso_local i32 @TEXT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
