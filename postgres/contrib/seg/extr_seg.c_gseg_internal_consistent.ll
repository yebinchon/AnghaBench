; ModuleID = '/home/carl/AnghaBench/postgres/contrib/seg/extr_seg.c_gseg_internal_consistent.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/seg/extr_seg.c_gseg_internal_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seg_over_right = common dso_local global i32 0, align 4
@seg_right = common dso_local global i32 0, align 4
@seg_overlap = common dso_local global i32 0, align 4
@seg_left = common dso_local global i32 0, align 4
@seg_over_left = common dso_local global i32 0, align 4
@seg_contains = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @gseg_internal_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gseg_internal_consistent(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %64 [
    i32 135, label %10
    i32 132, label %19
    i32 130, label %28
    i32 131, label %34
    i32 129, label %43
    i32 128, label %52
    i32 136, label %52
    i32 133, label %52
    i32 137, label %58
    i32 134, label %58
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @seg_over_right, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @DirectFunctionCall2(i32 %11, i32 %12, i32 %13)
  %15 = call i32 @DatumGetBool(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load i32, i32* @seg_right, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @DirectFunctionCall2(i32 %20, i32 %21, i32 %22)
  %24 = call i32 @DatumGetBool(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  br label %65

28:                                               ; preds = %3
  %29 = load i32, i32* @seg_overlap, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @DirectFunctionCall2(i32 %29, i32 %30, i32 %31)
  %33 = call i32 @DatumGetBool(i32 %32)
  store i32 %33, i32* %8, align 4
  br label %65

34:                                               ; preds = %3
  %35 = load i32, i32* @seg_left, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @DirectFunctionCall2(i32 %35, i32 %36, i32 %37)
  %39 = call i32 @DatumGetBool(i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %8, align 4
  br label %65

43:                                               ; preds = %3
  %44 = load i32, i32* @seg_over_left, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @DirectFunctionCall2(i32 %44, i32 %45, i32 %46)
  %48 = call i32 @DatumGetBool(i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %65

52:                                               ; preds = %3, %3, %3
  %53 = load i32, i32* @seg_contains, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @DirectFunctionCall2(i32 %53, i32 %54, i32 %55)
  %57 = call i32 @DatumGetBool(i32 %56)
  store i32 %57, i32* %8, align 4
  br label %65

58:                                               ; preds = %3, %3
  %59 = load i32, i32* @seg_overlap, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @DirectFunctionCall2(i32 %59, i32 %60, i32 %61)
  %63 = call i32 @DatumGetBool(i32 %62)
  store i32 %63, i32* %8, align 4
  br label %65

64:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %58, %52, %43, %34, %28, %19, %10
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @PG_RETURN_BOOL(i32 %66)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @PG_RETURN_BOOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
