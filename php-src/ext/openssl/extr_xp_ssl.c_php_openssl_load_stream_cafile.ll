; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_load_stream_cafile.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_load_stream_cafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed loading cafile stream: `%s'\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"remote cafile streams are disabled for security purposes\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"-----BEGIN CERTIFICATE-----\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"-----BEGIN CERTIFICATE-----\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"-----END CERTIFICATE-----\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"-----END CERTIFICATE-----\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"-----END CERTIFICATE-----\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"no valid certs found cafile stream: `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*)* @php_openssl_load_stream_cafile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @php_openssl_load_stream_cafile(i32* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.TYPE_7__* @php_stream_open_wrapper(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @E_WARNING, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i32, i8*, ...) @php_error(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  store i64 0, i64* %3, align 8
  br label %120

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = call i32 @php_stream_close(%struct.TYPE_7__* %29)
  %31 = load i32, i32* @E_WARNING, align 4
  %32 = call i32 (i32, i8*, ...) @php_error(i32 %31, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %120

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %102, %52, %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = call i8* @php_stream_get_line(%struct.TYPE_7__* %36, i32* null, i32 0, i64* %11)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %103

41:                                               ; preds = %35
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45, %41
  %50 = call i32 (...) @BIO_s_mem()
  %51 = call i32* @BIO_new(i32 %50)
  store i32* %51, i32** %8, align 8
  store i32 1, i32* %9, align 4
  br label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @efree(i8* %53)
  br label %35

55:                                               ; preds = %79, %49
  %56 = load i32*, i32** %8, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @BIO_puts(i32* %56, i8* %57)
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @efree(i8* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = call i8* @php_stream_get_line(%struct.TYPE_7__* %61, i32* null, i32 0, i64* %11)
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %103

66:                                               ; preds = %55
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74, %70, %66
  br label %80

79:                                               ; preds = %74
  br label %55

80:                                               ; preds = %78
  %81 = load i32*, i32** %8, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @BIO_puts(i32* %81, i8* %82)
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @efree(i8* %84)
  %86 = load i32*, i32** %8, align 8
  %87 = call i32* @PEM_read_bio_X509(i32* %86, i32* null, i32 0, i32* null)
  store i32* %87, i32** %7, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @BIO_free(i32* %88)
  store i32 0, i32* %9, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %80
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i64 @X509_STORE_add_cert(i32* %93, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i64, i64* %12, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %12, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @X509_free(i32* %100)
  br label %102

102:                                              ; preds = %97, %92, %80
  br label %35

103:                                              ; preds = %65, %40
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = call i32 @php_stream_close(%struct.TYPE_7__* %104)
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @BIO_free(i32* %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i64, i64* %12, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* @E_WARNING, align 4
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 (i32, i8*, ...) @php_error(i32 %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %114, %111
  %119 = load i64, i64* %12, align 8
  store i64 %119, i64* %3, align 8
  br label %120

120:                                              ; preds = %118, %28, %17
  %121 = load i64, i64* %3, align 8
  ret i64 %121
}

declare dso_local %struct.TYPE_7__* @php_stream_open_wrapper(i8*, i8*, i32, i32*) #1

declare dso_local i32 @php_error(i32, i8*, ...) #1

declare dso_local i32 @php_stream_close(%struct.TYPE_7__*) #1

declare dso_local i8* @php_stream_get_line(%struct.TYPE_7__*, i32*, i32, i64*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i64 @X509_STORE_add_cert(i32*, i32*) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
