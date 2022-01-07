; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_write_rsa.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_write_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32*, i32)* @write_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rsa(i8** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @RSA_size(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @RSA_bits(i32* %19)
  %21 = add nsw i32 %20, 15
  %22 = ashr i32 %21, 4
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @RSA_get0_key(i32* %23, i32** %9, i32** %11, i32** %10)
  %25 = load i8**, i8*** %4, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @write_lebn(i8** %25, i32* %26, i32 4)
  %28 = load i8**, i8*** %4, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @write_lebn(i8** %28, i32* %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %64

35:                                               ; preds = %3
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @RSA_get0_factors(i32* %36, i32** %12, i32** %13)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @RSA_get0_crt_params(i32* %38, i32** %15, i32** %16, i32** %14)
  %40 = load i8**, i8*** %4, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @write_lebn(i8** %40, i32* %41, i32 %42)
  %44 = load i8**, i8*** %4, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @write_lebn(i8** %44, i32* %45, i32 %46)
  %48 = load i8**, i8*** %4, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @write_lebn(i8** %48, i32* %49, i32 %50)
  %52 = load i8**, i8*** %4, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @write_lebn(i8** %52, i32* %53, i32 %54)
  %56 = load i8**, i8*** %4, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @write_lebn(i8** %56, i32* %57, i32 %58)
  %60 = load i8**, i8*** %4, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @write_lebn(i8** %60, i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @RSA_size(i32*) #1

declare dso_local i32 @RSA_bits(i32*) #1

declare dso_local i32 @RSA_get0_key(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @write_lebn(i8**, i32*, i32) #1

declare dso_local i32 @RSA_get0_factors(i32*, i32**, i32**) #1

declare dso_local i32 @RSA_get0_crt_params(i32*, i32**, i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
