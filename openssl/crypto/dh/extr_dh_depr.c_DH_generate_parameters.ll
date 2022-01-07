; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_depr.c_DH_generate_parameters.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_depr.c_DH_generate_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DH_generate_parameters(i32 %0, i32 %1, void (i32, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca void (i32, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store void (i32, i32, i8*)* %2, void (i32, i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  %12 = call i32* (...) @DH_new()
  store i32* %12, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %42

15:                                               ; preds = %4
  %16 = call i32* (...) @BN_GENCB_new()
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @DH_free(i32* %20)
  store i32* null, i32** %5, align 8
  br label %42

22:                                               ; preds = %15
  %23 = load i32*, i32** %10, align 8
  %24 = load void (i32, i32, i8*)*, void (i32, i32, i8*)** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @BN_GENCB_set_old(i32* %23, void (i32, i32, i8*)* %24, i8* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call i64 @DH_generate_parameters_ex(i32* %27, i32 %28, i32 %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @BN_GENCB_free(i32* %34)
  %36 = load i32*, i32** %11, align 8
  store i32* %36, i32** %5, align 8
  br label %42

37:                                               ; preds = %22
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @BN_GENCB_free(i32* %38)
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @DH_free(i32* %40)
  store i32* null, i32** %5, align 8
  br label %42

42:                                               ; preds = %37, %33, %19, %14
  %43 = load i32*, i32** %5, align 8
  ret i32* %43
}

declare dso_local i32* @DH_new(...) #1

declare dso_local i32* @BN_GENCB_new(...) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @BN_GENCB_set_old(i32*, void (i32, i32, i8*)*, i8*) #1

declare dso_local i64 @DH_generate_parameters_ex(i32*, i32, i32, i32*) #1

declare dso_local i32 @BN_GENCB_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
