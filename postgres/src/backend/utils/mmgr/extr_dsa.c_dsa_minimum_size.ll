; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_dsa_minimum_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_dsa_minimum_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPM_PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dsa_minimum_size() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i64 @MAXALIGN(i32 4)
  %4 = call i64 @MAXALIGN(i32 4)
  %5 = add i64 %3, %4
  store i64 %5, i64* %1, align 8
  br label %6

6:                                                ; preds = %16, %0
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %9 = add i64 %7, %8
  %10 = sub i64 %9, 1
  %11 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %12 = udiv i64 %10, %11
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %6
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  %19 = load i64, i64* %1, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %1, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %25 = mul i64 %23, %24
  ret i64 %25
}

declare dso_local i64 @MAXALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
