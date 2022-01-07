; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_init_crc_table.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_init_crc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_crc_table.p = internal constant [14 x i32] [i32 0, i32 1, i32 2, i32 4, i32 5, i32 7, i32 8, i32 10, i32 11, i32 12, i32 16, i32 22, i32 23, i32 26], align 16
@crc_32_tab = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_crc_table() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 14
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [14 x i32], [14 x i32]* @init_crc_table.p, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 31, %13
  %15 = zext i32 %14 to i64
  %16 = shl i64 1, %15
  %17 = load i64, i64* %2, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5

22:                                               ; preds = %5
  %23 = load i64*, i64** @crc_32_tab, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 0, i64* %24, align 8
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %65, %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %28, label %68

28:                                               ; preds = %25
  store i64 0, i64* %1, align 8
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, 256
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %56, %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load i64, i64* %1, align 8
  %36 = and i64 %35, 1
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i64, i64* %1, align 8
  %40 = ashr i64 %39, 1
  %41 = load i64, i64* %2, align 8
  %42 = xor i64 %40, %41
  br label %46

43:                                               ; preds = %34
  %44 = load i64, i64* %1, align 8
  %45 = ashr i64 %44, 1
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i64 [ %42, %38 ], [ %45, %43 ]
  store i64 %47, i64* %1, align 8
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i64, i64* %2, align 8
  %53 = load i64, i64* %1, align 8
  %54 = xor i64 %53, %52
  store i64 %54, i64* %1, align 8
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load i64, i64* %1, align 8
  %61 = load i64*, i64** @crc_32_tab, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %60, i64* %64, align 8
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %25

68:                                               ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
