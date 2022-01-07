; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_verify_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_verify_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@verify_args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"depth=%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<no cert>\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"verify error:num=%d:%s\0A\00", align 1
@X509_V_ERR_CERT_CHAIN_TOO_LONG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"issuer= \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"notBefore=\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"notAfter=\00", align 1
@X509_V_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"verify return:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_callback(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @X509_STORE_CTX_get_current_cert(i32* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @X509_STORE_CTX_get_error(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @X509_STORE_CTX_get_error_depth(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 2), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @bio_err, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, ...) @BIO_printf(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* @bio_err, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @X509_get_subject_name(i32* %27)
  %29 = call i32 (...) @get_nameopt()
  %30 = call i32 @X509_NAME_print_ex(i32 %26, i32 %28, i32 0, i32 %29)
  %31 = load i32, i32* @bio_err, align 4
  %32 = call i32 @BIO_puts(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %36

33:                                               ; preds = %19
  %34 = load i32, i32* @bio_err, align 4
  %35 = call i32 @BIO_puts(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %25
  br label %37

37:                                               ; preds = %36, %16
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @bio_err, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @X509_verify_cert_error_string(i32 %43)
  %45 = call i32 (i32, i8*, ...) @BIO_printf(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 0), align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 0), align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48, %40
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 3), align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 1), align 4
  br label %60

58:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  %59 = load i32, i32* @X509_V_ERR_CERT_CHAIN_TOO_LONG, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 1), align 4
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i32, i32* %6, align 4
  switch i32 %62, label %98 [
    i32 128, label %63
    i32 132, label %73
    i32 130, label %73
    i32 133, label %82
    i32 131, label %82
    i32 129, label %91
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* @bio_err, align 4
  %65 = call i32 @BIO_puts(i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @bio_err, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @X509_get_issuer_name(i32* %67)
  %69 = call i32 (...) @get_nameopt()
  %70 = call i32 @X509_NAME_print_ex(i32 %66, i32 %68, i32 0, i32 %69)
  %71 = load i32, i32* @bio_err, align 4
  %72 = call i32 @BIO_puts(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %98

73:                                               ; preds = %61, %61
  %74 = load i32, i32* @bio_err, align 4
  %75 = call i32 (i32, i8*, ...) @BIO_printf(i32 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* @bio_err, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @X509_get0_notBefore(i32* %77)
  %79 = call i32 @ASN1_TIME_print(i32 %76, i32 %78)
  %80 = load i32, i32* @bio_err, align 4
  %81 = call i32 (i32, i8*, ...) @BIO_printf(i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %98

82:                                               ; preds = %61, %61
  %83 = load i32, i32* @bio_err, align 4
  %84 = call i32 (i32, i8*, ...) @BIO_printf(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32, i32* @bio_err, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @X509_get0_notAfter(i32* %86)
  %88 = call i32 @ASN1_TIME_print(i32 %85, i32 %87)
  %89 = load i32, i32* @bio_err, align 4
  %90 = call i32 (i32, i8*, ...) @BIO_printf(i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %98

91:                                               ; preds = %61
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 2), align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @policies_print(i32* %95)
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %61, %97, %82, %73, %63
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @X509_V_OK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load i32, i32* %3, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 2), align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @policies_print(i32* %109)
  br label %111

111:                                              ; preds = %108, %105, %102, %98
  %112 = load i32, i32* %3, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 2), align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @bio_err, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 (i32, i8*, ...) @BIO_printf(i32 %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %114, %111
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32* @X509_STORE_CTX_get_current_cert(i32*) #1

declare dso_local i32 @X509_STORE_CTX_get_error(i32*) #1

declare dso_local i32 @X509_STORE_CTX_get_error_depth(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @X509_NAME_print_ex(i32, i32, i32, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32 @get_nameopt(...) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32 @X509_verify_cert_error_string(i32) #1

declare dso_local i32 @X509_get_issuer_name(i32*) #1

declare dso_local i32 @ASN1_TIME_print(i32, i32) #1

declare dso_local i32 @X509_get0_notBefore(i32*) #1

declare dso_local i32 @X509_get0_notAfter(i32*) #1

declare dso_local i32 @policies_print(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
