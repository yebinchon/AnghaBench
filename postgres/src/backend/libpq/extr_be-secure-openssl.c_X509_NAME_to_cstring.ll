; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_X509_NAME_to_cstring.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_X509_NAME_to_cstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"/%s=\00", align 1
@ASN1_STRFLGS_RFC2253 = common dso_local global i32 0, align 4
@ASN1_STRFLGS_ESC_MSB = common dso_local global i32 0, align 4
@ASN1_STRFLGS_UTF8_CONVERT = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @X509_NAME_to_cstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @X509_NAME_to_cstring(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %15 = call i32 (...) @BIO_s_mem()
  %16 = call i32* @BIO_new(i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @X509_NAME_entry_count(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @BIO_CLOSE, align 4
  %21 = call i32 @BIO_set_close(i32* %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %55, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32* @X509_NAME_get_entry(i32* %27, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @X509_NAME_ENTRY_get_object(i32* %30)
  %32 = call i32 @OBJ_obj2nid(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32* @X509_NAME_ENTRY_get_data(i32* %33)
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @OBJ_nid2sn(i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = call i8* @OBJ_nid2ln(i32 %40)
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %39, %26
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @BIO_printf(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @ASN1_STRFLGS_RFC2253, align 4
  %49 = load i32, i32* @ASN1_STRFLGS_ESC_MSB, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32, i32* @ASN1_STRFLGS_UTF8_CONVERT, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @ASN1_STRING_print_ex(i32* %46, i32* %47, i32 %53)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %22

58:                                               ; preds = %22
  store i8 0, i8* %11, align 1
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @BIO_write(i32* %59, i8* %11, i32 1)
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @BIO_get_mem_data(i32* %61, i8** %12)
  store i64 %62, i64* %10, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub i64 %64, 1
  %66 = load i32, i32* @PG_UTF8, align 4
  %67 = call i8* @pg_any_to_server(i8* %63, i64 %65, i32 %66)
  store i8* %67, i8** %13, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i8* @pstrdup(i8* %68)
  store i8* %69, i8** %14, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = icmp ne i8* %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @pfree(i8* %74)
  br label %76

76:                                               ; preds = %73, %58
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @BIO_free(i32* %77)
  %79 = load i8*, i8** %14, align 8
  ret i8* %79
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @X509_NAME_entry_count(i32*) #1

declare dso_local i32 @BIO_set_close(i32*, i32) #1

declare dso_local i32* @X509_NAME_get_entry(i32*, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @X509_NAME_ENTRY_get_object(i32*) #1

declare dso_local i32* @X509_NAME_ENTRY_get_data(i32*) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i8* @OBJ_nid2ln(i32) #1

declare dso_local i32 @BIO_printf(i32*, i8*, i8*) #1

declare dso_local i32 @ASN1_STRING_print_ex(i32*, i32*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i64 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i8* @pg_any_to_server(i8*, i64, i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
