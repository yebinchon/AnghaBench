; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ipconfig/extr_ipconfig.c_DoFormatMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ipconfig/extr_ipconfig.c_DoFormatMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DoFormatMessage(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i64 (...) @GetLastError()
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %11 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %14 = or i32 %12, %13
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @LANG_NEUTRAL, align 4
  %17 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %18 = call i32 @MAKELANGID(i32 %16, i32 %17)
  %19 = ptrtoint i64* %4 to i32
  %20 = call i64 @FormatMessage(i32 %14, i32* null, i64 %15, i32 %18, i32 %19, i32 0, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %9
  %23 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* %4, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @_tprintf(i32 %23, i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @LocalFree(i64 %27)
  br label %29

29:                                               ; preds = %22, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @FormatMessage(i32, i32*, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @_tprintf(i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
