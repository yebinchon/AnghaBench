; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_fipsinstall.c_verify_config.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_fipsinstall.c_verify_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_PROV_FIPS_PARAM_INSTALL_VERSION = common dso_local global i32 0, align 4
@VERSION_VAL = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"version not found\0A\00", align 1
@OSSL_PROV_FIPS_PARAM_INSTALL_STATUS = common dso_local global i32 0, align 4
@INSTALL_STATUS_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"install status not found\0A\00", align 1
@OSSL_PROV_FIPS_PARAM_MODULE_MAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Module integrity MAC not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Module integrity mismatch\0A\00", align 1
@OSSL_PROV_FIPS_PARAM_INSTALL_MAC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Install indicator MAC not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Install indicator status mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64, i8*, i64)* @verify_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_config(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i32* null, i32** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @app_load_config(i8* %19)
  store i32* %20, i32** %18, align 8
  %21 = load i32*, i32** %18, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %111

24:                                               ; preds = %6
  %25 = load i32*, i32** %18, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @OSSL_PROV_FIPS_PARAM_INSTALL_VERSION, align 4
  %28 = call i8* @NCONF_get_string(i32* %25, i8* %26, i32 %27)
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load i8*, i8** %14, align 8
  %33 = load i32, i32* @VERSION_VAL, align 4
  %34 = call i64 @strcmp(i8* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %24
  %37 = load i32, i32* @bio_err, align 4
  %38 = call i32 @BIO_printf(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %111

39:                                               ; preds = %31
  %40 = load i32*, i32** %18, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @OSSL_PROV_FIPS_PARAM_INSTALL_STATUS, align 4
  %43 = call i8* @NCONF_get_string(i32* %40, i8* %41, i32 %42)
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load i8*, i8** %14, align 8
  %48 = load i32, i32* @INSTALL_STATUS_VAL, align 4
  %49 = call i64 @strcmp(i8* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %39
  %52 = load i32, i32* @bio_err, align 4
  %53 = call i32 @BIO_printf(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %111

54:                                               ; preds = %46
  %55 = load i32*, i32** %18, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* @OSSL_PROV_FIPS_PARAM_MODULE_MAC, align 4
  %58 = call i8* @NCONF_get_string(i32* %55, i8* %56, i32 %57)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @bio_err, align 4
  %63 = call i32 @BIO_printf(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %111

64:                                               ; preds = %54
  %65 = load i8*, i8** %14, align 8
  %66 = call i8* @OPENSSL_hexstr2buf(i8* %65, i64* %17)
  store i8* %66, i8** %15, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i64 @memcmp(i8* %74, i8* %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %69, %64
  %80 = load i32, i32* @bio_err, align 4
  %81 = call i32 @BIO_printf(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %111

82:                                               ; preds = %73
  %83 = load i32*, i32** %18, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* @OSSL_PROV_FIPS_PARAM_INSTALL_MAC, align 4
  %86 = call i8* @NCONF_get_string(i32* %83, i8* %84, i32 %85)
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @bio_err, align 4
  %91 = call i32 @BIO_printf(i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %111

92:                                               ; preds = %82
  %93 = load i8*, i8** %14, align 8
  %94 = call i8* @OPENSSL_hexstr2buf(i8* %93, i64* %17)
  store i8* %94, i8** %16, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %12, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** %11, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i64 @memcmp(i8* %102, i8* %103, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %97, %92
  %108 = load i32, i32* @bio_err, align 4
  %109 = call i32 @BIO_printf(i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %111

110:                                              ; preds = %101
  store i32 1, i32* %13, align 4
  br label %111

111:                                              ; preds = %110, %107, %89, %79, %61, %51, %36, %23
  %112 = load i8*, i8** %15, align 8
  %113 = call i32 @OPENSSL_free(i8* %112)
  %114 = load i8*, i8** %16, align 8
  %115 = call i32 @OPENSSL_free(i8* %114)
  %116 = load i32*, i32** %18, align 8
  %117 = call i32 @NCONF_free(i32* %116)
  %118 = load i32, i32* %13, align 4
  ret i32 %118
}

declare dso_local i32* @app_load_config(i8*) #1

declare dso_local i8* @NCONF_get_string(i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i8*, i64*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @NCONF_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
