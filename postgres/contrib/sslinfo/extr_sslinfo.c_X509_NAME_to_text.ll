; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sslinfo/extr_sslinfo.c_X509_NAME_to_text.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sslinfo/extr_sslinfo.c_X509_NAME_to_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not create OpenSSL BIO structure\00", align 1
@BIO_CLOSE = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not get NID for ASN1_OBJECT object\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"could not convert NID %d to an ASN1_OBJECT structure\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/%s=\00", align 1
@ASN1_STRFLGS_RFC2253 = common dso_local global i32 0, align 4
@ASN1_STRFLGS_ESC_MSB = common dso_local global i32 0, align 4
@ASN1_STRFLGS_UTF8_CONVERT = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"could not free OpenSSL BIO structure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @X509_NAME_to_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @X509_NAME_to_text(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %16 = call i32 (...) @BIO_s_mem()
  %17 = call i32* @BIO_new(i32 %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @X509_NAME_entry_count(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @BIO_CLOSE, align 4
  %31 = call i32 @BIO_set_close(i32* %29, i32 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %85, %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %88

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32* @X509_NAME_get_entry(i32* %37, i32 %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @X509_NAME_ENTRY_get_object(i32* %40)
  %42 = call i32 @OBJ_obj2nid(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @NID_undef, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @ereport(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %36
  %53 = load i32*, i32** %8, align 8
  %54 = call i32* @X509_NAME_ENTRY_get_data(i32* %53)
  store i32* %54, i32** %9, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i8* @OBJ_nid2sn(i32 %55)
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = call i8* @OBJ_nid2ln(i32 %60)
  store i8* %61, i8** %10, align 8
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i8*, i8** %10, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = call i32 @ereport(i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %65, %62
  %73 = load i32*, i32** %4, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @BIO_printf(i32* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* @ASN1_STRFLGS_RFC2253, align 4
  %79 = load i32, i32* @ASN1_STRFLGS_ESC_MSB, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = load i32, i32* @ASN1_STRFLGS_UTF8_CONVERT, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @ASN1_STRING_print_ex(i32* %76, i32* %77, i32 %83)
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %32

88:                                               ; preds = %32
  store i8 0, i8* %12, align 1
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @BIO_write(i32* %89, i8* %12, i32 1)
  %91 = load i32*, i32** %4, align 8
  %92 = call i64 @BIO_get_mem_data(i32* %91, i8** %13)
  store i64 %92, i64* %11, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load i64, i64* %11, align 8
  %95 = sub i64 %94, 1
  %96 = load i32, i32* @PG_UTF8, align 4
  %97 = call i8* @pg_any_to_server(i8* %93, i64 %95, i32 %96)
  store i8* %97, i8** %14, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = call i32* @cstring_to_text(i8* %98)
  store i32* %99, i32** %15, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = icmp ne i8* %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %88
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 @pfree(i8* %104)
  br label %106

106:                                              ; preds = %103, %88
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @BIO_free(i32* %107)
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @ERROR, align 4
  %112 = call i32 @elog(i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %106
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @PG_RETURN_TEXT_P(i32* %114)
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @X509_NAME_entry_count(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

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
