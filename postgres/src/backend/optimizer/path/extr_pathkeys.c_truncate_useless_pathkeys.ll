; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_pathkeys.c_truncate_useless_pathkeys.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_pathkeys.c_truncate_useless_pathkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @truncate_useless_pathkeys(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @pathkeys_useful_for_merging(i32* %10, i32* %11, i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @pathkeys_useful_for_ordering(i32* %14, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32*, i32** @NIL, align 8
  store i32* %26, i32** %4, align 8
  br label %39

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @list_length(i32* %29)
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  store i32* %33, i32** %4, align 8
  br label %39

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @list_copy(i32* %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32* @list_truncate(i32 %36, i32 %37)
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %34, %32, %25
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local i32 @pathkeys_useful_for_merging(i32*, i32*, i32*) #1

declare dso_local i32 @pathkeys_useful_for_ordering(i32*, i32*) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32* @list_truncate(i32, i32) #1

declare dso_local i32 @list_copy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
