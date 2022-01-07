; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_div.c_bn_left_align.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_div.c_bn_left_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@BN_BITS2 = common dso_local global i32 0, align 4
@BN_MASK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @bn_left_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bn_left_align(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BN_num_bits_word(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @BN_BITS2, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @BN_BITS2, align 4
  %28 = load i32, i32* %8, align 4
  %29 = srem i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 8
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %62, %1
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @BN_MASK2, align 4
  %52 = and i32 %50, %51
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %8, align 4
  %59 = ashr i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %40
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %36

65:                                               ; preds = %36
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @BN_num_bits_word(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
