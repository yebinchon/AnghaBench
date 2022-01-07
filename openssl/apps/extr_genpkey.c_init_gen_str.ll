; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_genpkey.c_init_gen_str.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_genpkey.c_init_gen_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Algorithm already set!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Algorithm %s not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error initializing %s context\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_gen_str(i32** %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %12, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @bio_err, align 4
  %19 = call i32 @BIO_puts(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %77

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32* @EVP_PKEY_asn1_find_str(i32** %12, i8* %21, i32 -1)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32* @ENGINE_get_pkey_asn1_meth_str(i32* %29, i8* %30, i32 -1)
  store i32* %31, i32** %11, align 8
  br label %32

32:                                               ; preds = %28, %25, %20
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @bio_err, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @BIO_printf(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 0, i32* %5, align 4
  br label %77

39:                                               ; preds = %32
  %40 = call i32 (...) @ERR_clear_error()
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @EVP_PKEY_asn1_get0_info(i32* %13, i32* null, i32* null, i32* null, i32* null, i32* %41)
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @ENGINE_finish(i32* %43)
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32* @EVP_PKEY_CTX_new_id(i32 %45, i32* %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %69

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @EVP_PKEY_paramgen_init(i32* %55)
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %69

59:                                               ; preds = %54
  br label %66

60:                                               ; preds = %51
  %61 = load i32*, i32** %10, align 8
  %62 = call i64 @EVP_PKEY_keygen_init(i32* %61)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %69

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i32*, i32** %10, align 8
  %68 = load i32**, i32*** %6, align 8
  store i32* %67, i32** %68, align 8
  store i32 1, i32* %5, align 4
  br label %77

69:                                               ; preds = %64, %58, %50
  %70 = load i32, i32* @bio_err, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @BIO_printf(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @bio_err, align 4
  %74 = call i32 @ERR_print_errors(i32 %73)
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @EVP_PKEY_CTX_free(i32* %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %69, %66, %35, %17
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32* @EVP_PKEY_asn1_find_str(i32**, i8*, i32) #1

declare dso_local i32* @ENGINE_get_pkey_asn1_meth_str(i32*, i8*, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @EVP_PKEY_asn1_get0_info(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i64 @EVP_PKEY_paramgen_init(i32*) #1

declare dso_local i64 @EVP_PKEY_keygen_init(i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
