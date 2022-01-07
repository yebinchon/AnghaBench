; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_move_cursor.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_move_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xlines = common dso_local global i32 0, align 4
@ndents = common dso_local global i32 0, align 4
@cur = common dso_local global i32 0, align 4
@SCROLLOFF = common dso_local global i32 0, align 4
@curscroll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @move_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_cursor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @xlines, align 4
  %9 = sub nsw i32 %8, 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @ndents, align 4
  %11 = sub nsw i32 %10, 1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @MIN(i32 %11, i32 %12)
  %14 = call i32 @MAX(i32 0, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @cur, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* @cur, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %51, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @SCROLLOFF, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 1
  %25 = call i32 @MIN(i32 %22, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @cur, align 4
  %27 = load i32, i32* @curscroll, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31, %21
  %35 = load i32, i32* @cur, align 4
  %36 = load i32, i32* @curscroll, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sub nsw i32 %40, 1
  %42 = icmp sgt i32 %35, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %31
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @curscroll, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* @curscroll, align 4
  br label %50

50:                                               ; preds = %46, %43, %34
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i32, i32* @curscroll, align 4
  %53 = load i32, i32* @cur, align 4
  %54 = load i32, i32* @ndents, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %54, %55
  %57 = call i32 @MIN(i32 %53, i32 %56)
  %58 = call i32 @MIN(i32 %52, i32 %57)
  store i32 %58, i32* @curscroll, align 4
  %59 = load i32, i32* @curscroll, align 4
  %60 = load i32, i32* @cur, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sub nsw i32 %60, %62
  %64 = call i32 @MAX(i32 %63, i32 0)
  %65 = call i32 @MAX(i32 %59, i32 %64)
  store i32 %65, i32* @curscroll, align 4
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
