; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_set_cert_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_set_cert_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.TYPE_2__*, i32*, i64, i32, i32, %struct.TYPE_2__* }

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Checking cert chain %d:\0ASubject: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CERT_PKEY_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @set_cert_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_cert_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @SSL_certs_clear(i32* %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %107

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %8, align 8
  br label %17

26:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %102, %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %106

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @SSL_check_chain(i32* %33, i32 %36, i32 %39, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @bio_err, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @BIO_printf(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @bio_err, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @X509_get_subject_name(i32 %50)
  %52 = call i32 (...) @get_nameopt()
  %53 = call i32 @X509_NAME_print_ex(i32 %47, i32 %51, i32 0, i32 %52)
  %54 = load i32, i32* @bio_err, align 4
  %55 = call i32 @BIO_puts(i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @print_chain_flags(i32* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @CERT_PKEY_VALID, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %102

63:                                               ; preds = %30
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SSL_use_certificate(i32* %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @SSL_use_PrivateKey(i32* %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70, %63
  store i32 0, i32* %3, align 4
  br label %107

78:                                               ; preds = %70
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @SSL_build_cert_chain(i32* %84, i32 0)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %107

88:                                               ; preds = %83
  br label %101

89:                                               ; preds = %78
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @SSL_set1_chain(i32* %95, i32* %98)
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %88
  br label %102

102:                                              ; preds = %101, %30
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  store %struct.TYPE_2__* %105, %struct.TYPE_2__** %8, align 8
  br label %27

106:                                              ; preds = %27
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %87, %77, %15
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @SSL_certs_clear(i32*) #1

declare dso_local i32 @SSL_check_chain(i32*, i32, i32, i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i32) #1

declare dso_local i32 @X509_NAME_print_ex(i32, i32, i32, i32) #1

declare dso_local i32 @X509_get_subject_name(i32) #1

declare dso_local i32 @get_nameopt(...) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32 @print_chain_flags(i32*, i32) #1

declare dso_local i32 @SSL_use_certificate(i32*, i32) #1

declare dso_local i32 @SSL_use_PrivateKey(i32*, i32) #1

declare dso_local i32 @SSL_build_cert_chain(i32*, i32) #1

declare dso_local i32 @SSL_set1_chain(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
