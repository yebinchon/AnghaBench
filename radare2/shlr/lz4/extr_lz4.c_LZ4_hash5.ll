; ModuleID = '/home/carl/AnghaBench/radare2/shlr/lz4/extr_lz4.c_LZ4_hash5.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/lz4/extr_lz4.c_LZ4_hash5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZ4_hash5.prime5bytes = internal constant i32 465362107, align 4
@LZ4_hash5.prime8bytes = internal constant i32 -2048144761, align 4
@byut16 = common dso_local global i64 0, align 8
@LZ4_HASHLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @LZ4_hash5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4_hash5(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @byut16, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @LZ4_HASHLOG, align 4
  %12 = add nsw i32 %11, 1
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @LZ4_HASHLOG, align 4
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %12, %10 ], [ %14, %13 ]
  store i32 %16, i32* %6, align 4
  %17 = call i64 (...) @LZ4_isLittleEndian()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 %20, 24
  %22 = mul nsw i32 %21, 465362107
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 64, %23
  %25 = ashr i32 %22, %24
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 24
  %29 = mul nsw i32 %28, -2048144761
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 64, %30
  %32 = ashr i32 %29, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @LZ4_isLittleEndian(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
