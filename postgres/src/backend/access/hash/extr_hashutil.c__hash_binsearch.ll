; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashutil.c__hash_binsearch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashutil.c__hash_binsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FirstOffsetNumber = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hash_binsearch(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @PageGetMaxOffsetNumber(i32 %10)
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %41, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @OffsetNumberIsValid(i32 %23)
  %25 = call i32 @Assert(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @PageGetItemId(i32 %27, i32 %28)
  %30 = call i64 @PageGetItem(i32 %26, i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @_hash_get_indextuple_hashkey(i64 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %41

39:                                               ; preds = %18
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %36
  br label %14

42:                                               ; preds = %14
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OffsetNumberIsValid(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i64 @_hash_get_indextuple_hashkey(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
