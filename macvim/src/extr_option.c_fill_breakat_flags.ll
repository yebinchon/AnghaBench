; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_option.c_fill_breakat_flags.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_option.c_fill_breakat_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@breakat_flags = common dso_local global i32* null, align 8
@p_breakat = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fill_breakat_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_breakat_flags() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %12, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 256
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load i32, i32* @FALSE, align 4
  %8 = load i32*, i32** @breakat_flags, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32 %7, i32* %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %3

15:                                               ; preds = %3
  %16 = load i32*, i32** @p_breakat, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i32*, i32** @p_breakat, align 8
  store i32* %19, i32** %1, align 8
  br label %20

20:                                               ; preds = %31, %18
  %21 = load i32*, i32** %1, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32*, i32** @breakat_flags, align 8
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %25, i32* %30, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i32*, i32** %1, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %1, align 8
  br label %20

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
