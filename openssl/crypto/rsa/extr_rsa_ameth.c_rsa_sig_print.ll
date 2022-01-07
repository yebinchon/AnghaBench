; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_sig_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_sig_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EVP_PKEY_RSA_PSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32*, i32, i32*)* @rsa_sig_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_sig_print(i32* %0, %struct.TYPE_4__* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @OBJ_obj2nid(i32 %16)
  %18 = load i64, i64* @EVP_PKEY_RSA_PSS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = call i32* @rsa_pss_decode(%struct.TYPE_4__* %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @rsa_pss_param_print(i32* %23, i32 0, i32* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @RSA_PSS_PARAMS_free(i32* %27)
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %48

32:                                               ; preds = %20
  br label %39

33:                                               ; preds = %5
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @BIO_puts(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %48

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @X509_signature_dump(i32* %43, i32* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %48

47:                                               ; preds = %39
  store i32 1, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %42, %37, %31
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i32* @rsa_pss_decode(%struct.TYPE_4__*) #1

declare dso_local i32 @rsa_pss_param_print(i32*, i32, i32*, i32) #1

declare dso_local i32 @RSA_PSS_PARAMS_free(i32*) #1

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @X509_signature_dump(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
