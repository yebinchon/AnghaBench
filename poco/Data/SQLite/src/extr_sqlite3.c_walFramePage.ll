; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_walFramePage.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_walFramePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASHTABLE_NPAGE = common dso_local global i32 0, align 4
@HASHTABLE_NPAGE_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @walFramePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walFramePage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @HASHTABLE_NPAGE, align 4
  %6 = add nsw i32 %4, %5
  %7 = load i32, i32* @HASHTABLE_NPAGE_ONE, align 4
  %8 = sub nsw i32 %6, %7
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* @HASHTABLE_NPAGE, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @HASHTABLE_NPAGE_ONE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @HASHTABLE_NPAGE_ONE, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %3, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @HASHTABLE_NPAGE_ONE, align 4
  %31 = load i32, i32* @HASHTABLE_NPAGE, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %3, align 4
  %36 = icmp sge i32 %35, 2
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @HASHTABLE_NPAGE_ONE, align 4
  %40 = load i32, i32* @HASHTABLE_NPAGE, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp sle i32 %38, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %3, align 4
  %45 = icmp sle i32 %44, 2
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @HASHTABLE_NPAGE_ONE, align 4
  %49 = load i32, i32* @HASHTABLE_NPAGE, align 4
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 %48, %50
  %52 = icmp sgt i32 %47, %51
  br label %53

53:                                               ; preds = %46, %43
  %54 = phi i1 [ true, %43 ], [ %52, %46 ]
  br label %55

55:                                               ; preds = %53, %37, %28, %21, %14
  %56 = phi i1 [ false, %37 ], [ false, %28 ], [ false, %21 ], [ false, %14 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
