; ModuleID = '/home/carl/AnghaBench/reactos/base/system/format/extr_format.c_PrintWin32Error.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/format/extr_format.c_PrintWin32Error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdErr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 37, i32 115, i32 58, i32 32, i32 0], align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@LANG_USER_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @PrintWin32Error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrintWin32Error(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @StdErr, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ConPrintf(i32 %6, i8* bitcast ([5 x i32]* @.str to i8*), i32 %7)
  %9 = load i32, i32* @StdErr, align 4
  %10 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %13 = call i32 @ConMsgPuts(i32 %9, i32 %10, i32* null, i32 %11, i32 %12)
  %14 = load i32, i32* @StdErr, align 4
  %15 = call i32 @ConPuts(i32 %14, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @ConPrintf(i32, i8*, i32) #1

declare dso_local i32 @ConMsgPuts(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
