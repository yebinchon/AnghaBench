; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_check.c_rsa_check_private_exponent.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_check.c_rsa_check_private_exponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_check_private_exponent(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BN_num_bits(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 1
  %21 = icmp sle i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @BN_CTX_start(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @BN_CTX_get(i32* %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @BN_CTX_get(i32* %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32* @BN_CTX_get(i32* %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @BN_CTX_get(i32* %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32* @BN_CTX_get(i32* %34)
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @BN_CTX_get(i32* %36)
  store i32* %37, i32** %14, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %78

40:                                               ; preds = %23
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @rsa_get_lcm(i32* %41, i32 %44, i32 %47, i32* %48, i32* %49, i32* %50, i32* %51, i32* %52)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %78

55:                                               ; preds = %40
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = call i64 @BN_cmp(i32 %58, i32* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @BN_mod_mul(i32* %63, i32 %66, i32 %69, i32* %70, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load i32*, i32** %9, align 8
  %76 = call i64 @BN_is_one(i32* %75)
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %74, %62, %55, %40, %23
  %79 = phi i1 [ false, %62 ], [ false, %55 ], [ false, %40 ], [ false, %23 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %8, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @BN_clear(i32* %81)
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @BN_clear(i32* %83)
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @BN_clear(i32* %85)
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @BN_clear(i32* %87)
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @BN_CTX_end(i32* %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %78, %22
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @BN_num_bits(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @rsa_get_lcm(i32*, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32, i32*) #1

declare dso_local i64 @BN_mod_mul(i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i32 @BN_clear(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
