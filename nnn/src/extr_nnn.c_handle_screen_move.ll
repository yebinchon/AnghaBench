; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_handle_screen_move.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_handle_screen_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ndents = common dso_local global i32 0, align 4
@cur = common dso_local global i32 0, align 4
@xlines = common dso_local global i32 0, align 4
@curscroll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handle_screen_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_screen_move(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %71 [
    i32 131, label %5
    i32 128, label %15
    i32 130, label %27
    i32 134, label %39
    i32 129, label %51
    i32 133, label %60
    i32 132, label %69
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ndents, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, i32* @cur, align 4
  %10 = add nsw i32 %9, 1
  %11 = load i32, i32* @ndents, align 4
  %12 = srem i32 %10, %11
  %13 = call i32 @move_cursor(i32 %12, i32 0)
  br label %14

14:                                               ; preds = %8, %5
  br label %75

15:                                               ; preds = %1
  %16 = load i32, i32* @ndents, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* @cur, align 4
  %20 = load i32, i32* @ndents, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @ndents, align 4
  %24 = srem i32 %22, %23
  %25 = call i32 @move_cursor(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %18, %15
  br label %75

27:                                               ; preds = %1
  %28 = load i32, i32* @xlines, align 4
  %29 = sub nsw i32 %28, 4
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @curscroll, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sub nsw i32 %31, 1
  %33 = add nsw i32 %30, %32
  %34 = call i32 @move_cursor(i32 %33, i32 1)
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @curscroll, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* @curscroll, align 4
  br label %75

39:                                               ; preds = %1
  %40 = load i32, i32* @xlines, align 4
  %41 = sub nsw i32 %40, 4
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @curscroll, align 4
  %43 = load i32, i32* %3, align 4
  %44 = sub nsw i32 %43, 1
  %45 = add nsw i32 %42, %44
  %46 = call i32 @move_cursor(i32 %45, i32 1)
  %47 = load i32, i32* %3, align 4
  %48 = ashr i32 %47, 1
  %49 = load i32, i32* @curscroll, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* @curscroll, align 4
  br label %75

51:                                               ; preds = %1
  %52 = load i32, i32* @xlines, align 4
  %53 = sub nsw i32 %52, 4
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @curscroll, align 4
  %55 = call i32 @move_cursor(i32 %54, i32 1)
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* @curscroll, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* @curscroll, align 4
  br label %75

60:                                               ; preds = %1
  %61 = load i32, i32* @xlines, align 4
  %62 = sub nsw i32 %61, 4
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* @curscroll, align 4
  %64 = call i32 @move_cursor(i32 %63, i32 1)
  %65 = load i32, i32* %3, align 4
  %66 = ashr i32 %65, 1
  %67 = load i32, i32* @curscroll, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* @curscroll, align 4
  br label %75

69:                                               ; preds = %1
  %70 = call i32 @move_cursor(i32 0, i32 1)
  br label %75

71:                                               ; preds = %1
  %72 = load i32, i32* @ndents, align 4
  %73 = sub nsw i32 %72, 1
  %74 = call i32 @move_cursor(i32 %73, i32 1)
  br label %75

75:                                               ; preds = %71, %69, %60, %51, %39, %27, %26, %14
  ret void
}

declare dso_local i32 @move_cursor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
