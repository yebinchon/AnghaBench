; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_hashfn.c_hash_uint32_extended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_hashfn.c_hash_uint32_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_uint32_extended(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 -1636608428, i32* %8, align 4
  store i32 -1636608428, i32* %7, align 4
  store i32 -1636608428, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 32
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @mix(i32 %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %11, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @final(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 32
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @PG_RETURN_UINT64(i32 %34)
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @mix(i32, i32, i32) #1

declare dso_local i32 @final(i32, i32, i32) #1

declare dso_local i32 @PG_RETURN_UINT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
