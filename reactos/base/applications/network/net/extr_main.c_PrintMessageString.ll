; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_main.c_PrintMessageString.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_main.c_PrintMessageString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_HMODULE = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@hModuleNetMsg = common dso_local global i32 0, align 4
@LANG_USER_DEFAULT = common dso_local global i32 0, align 4
@StdOut = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrintMessageString(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %6 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @hModuleNetMsg, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %13 = ptrtoint i32** %4 to i32
  %14 = call i32 @FormatMessageW(i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 0, i32* null)
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @StdOut, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ConPuts(i32 %18, i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @LocalFree(i32* %21)
  store i32* null, i32** %4, align 8
  br label %23

23:                                               ; preds = %17, %1
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @FormatMessageW(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ConPuts(i32, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
