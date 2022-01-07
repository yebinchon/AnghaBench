; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sslinfo/extr_sslinfo.c_ASN1_STRING_to_text.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sslinfo/extr_sslinfo.c_ASN1_STRING_to_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not create OpenSSL BIO structure\00", align 1
@BIO_CLOSE = common dso_local global i32 0, align 4
@ASN1_STRFLGS_RFC2253 = common dso_local global i32 0, align 4
@ASN1_STRFLGS_ESC_MSB = common dso_local global i32 0, align 4
@ASN1_STRFLGS_UTF8_CONVERT = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not free OpenSSL BIO structure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ASN1_STRING_to_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ASN1_STRING_to_text(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = call i32 (...) @BIO_s_mem()
  %11 = call i32* @BIO_new(i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @ereport(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @BIO_CLOSE, align 4
  %23 = call i32 @BIO_set_close(i32* %21, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @ASN1_STRFLGS_RFC2253, align 4
  %27 = load i32, i32* @ASN1_STRFLGS_ESC_MSB, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* @ASN1_STRFLGS_UTF8_CONVERT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ASN1_STRING_print_ex(i32* %24, i32* %25, i32 %31)
  store i8 0, i8* %6, align 1
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @BIO_write(i32* %33, i8* %6, i32 1)
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @BIO_get_mem_data(i32* %35, i8** %7)
  store i64 %36, i64* %5, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub i64 %38, 1
  %40 = load i32, i32* @PG_UTF8, align 4
  %41 = call i8* @pg_any_to_server(i8* %37, i64 %39, i32 %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32* @cstring_to_text(i8* %42)
  store i32* %43, i32** %9, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %20
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @pfree(i8* %48)
  br label %50

50:                                               ; preds = %47, %20
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @BIO_free(i32* %51)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @ERROR, align 4
  %56 = call i32 @elog(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @PG_RETURN_TEXT_P(i32* %58)
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @BIO_set_close(i32*, i32) #1

declare dso_local i32 @ASN1_STRING_print_ex(i32*, i32*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i64 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i8* @pg_any_to_server(i8*, i64, i32) #1

declare dso_local i32* @cstring_to_text(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @PG_RETURN_TEXT_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
