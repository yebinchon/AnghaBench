; ModuleID = '/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_g_cube_leaf_consistent.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_g_cube_leaf_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_cube_leaf_consistent(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %27 [
    i32 129, label %9
    i32 128, label %13
    i32 132, label %19
    i32 130, label %19
    i32 133, label %23
    i32 131, label %23
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @cube_overlap_v0(i32* %10, i32* %11)
  store i32 %12, i32* %7, align 4
  br label %28

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @cube_cmp_v0(i32* %14, i32* %15)
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  br label %28

19:                                               ; preds = %3, %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @cube_contains_v0(i32* %20, i32* %21)
  store i32 %22, i32* %7, align 4
  br label %28

23:                                               ; preds = %3, %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @cube_contains_v0(i32* %24, i32* %25)
  store i32 %26, i32* %7, align 4
  br label %28

27:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %23, %19, %13, %9
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @cube_overlap_v0(i32*, i32*) #1

declare dso_local i32 @cube_cmp_v0(i32*, i32*) #1

declare dso_local i32 @cube_contains_v0(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
