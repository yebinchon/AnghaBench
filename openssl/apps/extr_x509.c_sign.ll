; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_x509.c_sign.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_x509.c_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32*, i32*, i8*, i32)* @sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sign(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @X509_get_subject_name(i32* %22)
  %24 = call i32 @X509_set_issuer_name(i32* %21, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %9
  br label %83

27:                                               ; preds = %9
  %28 = load i32, i32* %19, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @set_cert_times(i32* %31, i32* null, i32* null, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %83

36:                                               ; preds = %30, %27
  %37 = load i32*, i32** %13, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @X509_set_pubkey(i32* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %83

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %53, %48
  %50 = load i32*, i32** %11, align 8
  %51 = call i64 @X509_get_ext_count(i32* %50)
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @X509_delete_ext(i32* %54, i32 0)
  br label %49

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32*, i32** %17, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @X509_set_version(i32* %61, i32 2)
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @X509V3_set_ctx(i32* %20, i32* %63, i32* %64, i32* null, i32* null, i32 0)
  %66 = load i32*, i32** %17, align 8
  %67 = call i32 @X509V3_set_nconf(i32* %20, i32* %66)
  %68 = load i32*, i32** %17, align 8
  %69 = load i8*, i8** %18, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @X509V3_EXT_add_nconf(i32* %68, i32* %20, i8* %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %60
  br label %83

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 @X509_sign(i32* %76, i32* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br label %83

82:                                               ; preds = %75
  store i32 1, i32* %10, align 4
  br label %86

83:                                               ; preds = %81, %73, %44, %35, %26
  %84 = load i32, i32* @bio_err, align 4
  %85 = call i32 @ERR_print_errors(i32 %84)
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %83, %82
  %87 = load i32, i32* %10, align 4
  ret i32 %87
}

declare dso_local i32 @X509_set_issuer_name(i32*, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32 @set_cert_times(i32*, i32*, i32*, i32) #1

declare dso_local i32 @X509_set_pubkey(i32*, i32*) #1

declare dso_local i64 @X509_get_ext_count(i32*) #1

declare dso_local i32 @X509_delete_ext(i32*, i32) #1

declare dso_local i32 @X509_set_version(i32*, i32) #1

declare dso_local i32 @X509V3_set_ctx(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @X509V3_set_nconf(i32*, i32*) #1

declare dso_local i32 @X509V3_EXT_add_nconf(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @X509_sign(i32*, i32*, i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
