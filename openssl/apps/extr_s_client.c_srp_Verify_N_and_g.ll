; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_client.c_srp_Verify_N_and_g.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_client.c_srp_Verify_N_and_g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @srp_Verify_N_and_g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_Verify_N_and_g(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i32* (...) @BN_CTX_new()
  store i32* %9, i32** %5, align 8
  %10 = call i32* (...) @BN_new()
  store i32* %10, i32** %6, align 8
  %11 = call i32* (...) @BN_new()
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %62

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %62

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @BN_is_odd(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @BN_check_prime(i32* %25, i32* %26, i32* null)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @BN_rshift1(i32* %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @BN_check_prime(i32* %38, i32* %39, i32* null)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @BN_mod_exp(i32* %46, i32* %47, i32* %48, i32* %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @BN_add_word(i32* %54, i32 1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @BN_cmp(i32* %58, i32* %59)
  %61 = icmp eq i64 %60, 0
  br label %62

62:                                               ; preds = %57, %53, %45, %42, %37, %32, %29, %24, %20, %17, %14, %2
  %63 = phi i1 [ false, %53 ], [ false, %45 ], [ false, %42 ], [ false, %37 ], [ false, %32 ], [ false, %29 ], [ false, %24 ], [ false, %20 ], [ false, %17 ], [ false, %14 ], [ false, %2 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @BN_free(i32* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @BN_free(i32* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @BN_CTX_free(i32* %69)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i32 @BN_check_prime(i32*, i32*, i32*) #1

declare dso_local i64 @BN_rshift1(i32*, i32*) #1

declare dso_local i64 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_add_word(i32*, i32) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
