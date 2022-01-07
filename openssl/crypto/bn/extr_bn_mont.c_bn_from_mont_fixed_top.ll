; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mont.c_bn_from_mont_fixed_top.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mont.c_bn_from_mont_fixed_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bn_from_mont_fixed_top(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @BN_CTX_start(i32* %12)
  %14 = load i32*, i32** %8, align 8
  %15 = call i32* @BN_CTX_get(i32* %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32* @BN_CTX_get(i32* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %89

21:                                               ; preds = %4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @BN_copy(i32* %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %89

27:                                               ; preds = %21
  %28 = load i32*, i32** %10, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BN_mask_bits(i32* %28, i32 %31)
  %33 = load i32*, i32** %11, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @BN_mul(i32* %33, i32* %34, i32* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %89

41:                                               ; preds = %27
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BN_mask_bits(i32* %42, i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @BN_mul(i32* %47, i32* %48, i32* %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  br label %89

55:                                               ; preds = %41
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @BN_add(i32* %56, i32* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %89

62:                                               ; preds = %55
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @BN_rshift(i32* %63, i32* %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %89

71:                                               ; preds = %62
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i64 @BN_ucmp(i32* %72, i32* %74)
  %76 = icmp sge i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @BN_usub(i32* %78, i32* %79, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %89

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %71
  store i32 1, i32* %9, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @bn_check_top(i32* %87)
  br label %89

89:                                               ; preds = %86, %84, %70, %61, %54, %40, %26, %20
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @BN_CTX_end(i32* %90)
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i64 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_mask_bits(i32*, i32) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_rshift(i32*, i32*, i32) #1

declare dso_local i64 @BN_ucmp(i32*, i32*) #1

declare dso_local i32 @BN_usub(i32*, i32*, i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
