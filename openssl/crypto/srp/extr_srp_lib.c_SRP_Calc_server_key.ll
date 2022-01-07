; ModuleID = '/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_lib.c_SRP_Calc_server_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_lib.c_SRP_Calc_server_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SRP_Calc_server_key(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %10, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %20, %17, %5
  store i32* null, i32** %6, align 8
  br label %77

30:                                               ; preds = %26
  %31 = call i32* (...) @BN_CTX_new()
  store i32* %31, i32** %14, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = call i32* (...) @BN_new()
  store i32* %34, i32** %12, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30
  br label %71

37:                                               ; preds = %33
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @BN_mod_exp(i32* %38, i32* %39, i32* %40, i32* %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %71

46:                                               ; preds = %37
  %47 = load i32*, i32** %12, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @BN_mod_mul(i32* %47, i32* %48, i32* %49, i32* %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %71

55:                                               ; preds = %46
  %56 = call i32* (...) @BN_new()
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32*, i32** %13, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @BN_mod_exp(i32* %60, i32* %61, i32* %62, i32* %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @BN_free(i32* %68)
  store i32* null, i32** %13, align 8
  br label %70

70:                                               ; preds = %67, %59, %55
  br label %71

71:                                               ; preds = %70, %54, %45, %36
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @BN_CTX_free(i32* %72)
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @BN_clear_free(i32* %74)
  %76 = load i32*, i32** %13, align 8
  store i32* %76, i32** %6, align 8
  br label %77

77:                                               ; preds = %71, %29
  %78 = load i32*, i32** %6, align 8
  ret i32* %78
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
