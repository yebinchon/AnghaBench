; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_ht_inc.c_next_idx.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_ht_inc.c_next_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UT32_MAX = common dso_local global i64 0, align 8
@ht_primes_sizes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @next_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @next_idx(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @UT32_MAX, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* @ht_primes_sizes, align 4
  %10 = call i32 @S_ARRAY_SIZE(i32 %9)
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %8, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i64, i64* %3, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %2, align 8
  br label %19

17:                                               ; preds = %7, %1
  %18 = load i64, i64* @UT32_MAX, align 8
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i64, i64* %2, align 8
  ret i64 %20
}

declare dso_local i32 @S_ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
