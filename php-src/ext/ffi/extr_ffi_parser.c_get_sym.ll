; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_get_sym.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_get_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY_EOL = common dso_local global i32 0, align 4
@YY_WS = common dso_local global i32 0, align 4
@YY_ONE_LINE_COMMENT = common dso_local global i32 0, align 4
@YY_COMMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sym() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @get_skip_sym()
  store i32 %2, i32* %1, align 4
  br label %3

3:                                                ; preds = %47, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @YY_EOL, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @YY_WS, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @YY_ONE_LINE_COMMENT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @YY_COMMENT, align 4
  %18 = icmp eq i32 %16, %17
  br label %19

19:                                               ; preds = %15, %11, %7, %3
  %20 = phi i1 [ true, %11 ], [ true, %7 ], [ true, %3 ], [ %18, %15 ]
  br i1 %20, label %21, label %48

21:                                               ; preds = %19
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @YY_EOL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @skip_EOL(i32 %26)
  store i32 %27, i32* %1, align 4
  br label %47

28:                                               ; preds = %21
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @YY_WS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @skip_WS(i32 %33)
  store i32 %34, i32* %1, align 4
  br label %46

35:                                               ; preds = %28
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @YY_ONE_LINE_COMMENT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @skip_ONE_LINE_COMMENT(i32 %40)
  store i32 %41, i32* %1, align 4
  br label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @skip_COMMENT(i32 %43)
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %32
  br label %47

47:                                               ; preds = %46, %25
  br label %3

48:                                               ; preds = %19
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @get_skip_sym(...) #1

declare dso_local i32 @skip_EOL(i32) #1

declare dso_local i32 @skip_WS(i32) #1

declare dso_local i32 @skip_ONE_LINE_COMMENT(i32) #1

declare dso_local i32 @skip_COMMENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
