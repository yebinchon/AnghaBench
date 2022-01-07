; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_redir.c_SetHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_redir.c_SetHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdStreams = common dso_local global i32* null, align 8
@STD_INPUT_HANDLE = common dso_local global i64 0, align 8
@ExtraHandles = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetHandle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load i32*, i32** @StdStreams, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ConStreamSetOSHandle(i32 %13, i32 %14)
  %16 = load i64, i64* @STD_INPUT_HANDLE, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 %16, %18
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @SetStdHandle(i64 %19, i32 %20)
  br label %36

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** @ExtraHandles, align 8
  %25 = call i32 @ARRAYSIZE(i32* %24)
  %26 = add nsw i32 %25, 3
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** @ExtraHandles, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %22
  br label %36

36:                                               ; preds = %35, %8
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ConStreamSetOSHandle(i32, i32) #1

declare dso_local i32 @SetStdHandle(i64, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
