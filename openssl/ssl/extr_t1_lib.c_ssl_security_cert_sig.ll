; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_ssl_security_cert_sig.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_ssl_security_cert_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXFLAG_SS = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @ssl_security_cert_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_security_cert_sig(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @X509_get_extension_flags(i32* %13)
  %15 = load i32, i32* @EXFLAG_SS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %47

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @X509_get_signature_info(i32* %20, i32* %11, i32* %12, i32* %10, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 -1, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @NID_undef, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @ssl_security(i32* %34, i32 %35, i32 %36, i32 %37, i32* %38)
  store i32 %39, i32* %5, align 4
  br label %47

40:                                               ; preds = %30
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @ssl_ctx_security(i32* %41, i32 %42, i32 %43, i32 %44, i32* %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %40, %33, %18
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @X509_get_extension_flags(i32*) #1

declare dso_local i32 @X509_get_signature_info(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ssl_security(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ssl_ctx_security(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
