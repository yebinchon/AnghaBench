; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_div.c_BN_div.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_div.c_BN_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, i32 }

@BN_F_BN_DIV = common dso_local global i32 0, align 4
@BN_R_DIV_BY_ZERO = common dso_local global i32 0, align 4
@BN_R_NOT_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_div(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %14 = call i64 @BN_is_zero(%struct.TYPE_12__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i32, i32* @BN_F_BN_DIV, align 4
  %18 = load i32, i32* @BN_R_DIV_BY_ZERO, align 4
  %19 = call i32 @BNerr(i32 %17, i32 %18)
  store i32 0, i32* %6, align 4
  br label %60

20:                                               ; preds = %5
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load i32, i32* @BN_F_BN_DIV, align 4
  %34 = load i32, i32* @BN_R_NOT_INITIALIZED, align 4
  %35 = call i32 @BNerr(i32 %33, i32 %34)
  store i32 0, i32* %6, align 4
  br label %60

36:                                               ; preds = %20
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @bn_div_fixed_top(%struct.TYPE_12__* %37, %struct.TYPE_12__* %38, %struct.TYPE_12__* %39, %struct.TYPE_12__* %40, i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %36
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = icmp ne %struct.TYPE_12__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = call i32 @bn_correct_top(%struct.TYPE_12__* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = call i32 @bn_correct_top(%struct.TYPE_12__* %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %32, %16
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @BN_is_zero(%struct.TYPE_12__*) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @bn_div_fixed_top(%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @bn_correct_top(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
