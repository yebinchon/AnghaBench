; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_redir.c_GetHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_redir.c_GetHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdStreams = common dso_local global i32* null, align 8
@ExtraHandles = common dso_local global i32* null, align 8
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetHandle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32*, i32** @StdStreams, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ConStreamGetOSHandle(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32*, i32** @ExtraHandles, align 8
  %16 = call i32 @ARRAYSIZE(i32* %15)
  %17 = add nsw i32 %16, 3
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i32*, i32** @ExtraHandles, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %13
  %27 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %19, %6
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ConStreamGetOSHandle(i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
