; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varchar.c_internal_bpchar_pattern_compare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varchar.c_internal_bpchar_pattern_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @internal_bpchar_pattern_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_bpchar_pattern_compare(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @bcTruelen(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @bcTruelen(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @VARDATA_ANY(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @VARDATA_ANY(i32* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @Min(i32 %17, i32 %18)
  %20 = call i32 @memcmp(i32 %14, i32 %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %36

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %29, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @bcTruelen(i32*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @VARDATA_ANY(i32*) #1

declare dso_local i32 @Min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
