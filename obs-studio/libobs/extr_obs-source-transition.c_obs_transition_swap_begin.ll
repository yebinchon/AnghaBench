; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_swap_begin.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_swap_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_transition_swap_begin(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x i32*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %50

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @lock_textures(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lock_textures(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @lock_transition(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lock_transition(i32* %19)
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %31, %12
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %22, 2
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32* @copy_source_state(i32* %25, i32* %26, i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 %29
  store i32* %28, i32** %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %21

34:                                               ; preds = %21
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @unlock_transition(i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @unlock_transition(i32* %37)
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %47, %34
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %40, 2
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @obs_source_release(i32* %45)
  br label %47

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %39

50:                                               ; preds = %11, %39
  ret void
}

declare dso_local i32 @lock_textures(i32*) #1

declare dso_local i32 @lock_transition(i32*) #1

declare dso_local i32* @copy_source_state(i32*, i32*, i64) #1

declare dso_local i32 @unlock_transition(i32*) #1

declare dso_local i32 @obs_source_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
