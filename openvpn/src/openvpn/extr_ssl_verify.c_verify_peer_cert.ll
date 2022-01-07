; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_peer_cert.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_peer_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_options = type { i64, i64*, i64, i32, i32* }

@NS_CERT_CHECK_NONE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@D_HANDSHAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"VERIFY OK: nsCertType=%s\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"VERIFY nsCertType ERROR: %s, require nsCertType=%s\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@MAX_PARMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"VERIFY KU OK\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"VERIFY KU ERROR\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"VERIFY EKU OK\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"VERIFY EKU ERROR\00", align 1
@VERIFY_X509_NONE = common dso_local global i64 0, align 8
@VERIFY_X509_SUBJECT_DN = common dso_local global i64 0, align 8
@VERIFY_X509_SUBJECT_RDN = common dso_local global i64 0, align 8
@VERIFY_X509_SUBJECT_RDN_PREFIX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"VERIFY X509NAME OK: %s\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"VERIFY X509NAME ERROR: %s, must be %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tls_options*, i32*, i8*, i8*)* @verify_peer_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @verify_peer_cert(%struct.tls_options* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tls_options*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.tls_options* %0, %struct.tls_options** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %11 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NS_CERT_CHECK_NONE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %4
  %16 = load i64, i64* @SUCCESS, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %19 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @x509_verify_ns_cert_type(i32* %17, i64 %20)
  %22 = icmp eq i64 %16, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32, i32* @D_HANDSHAKE, align 4
  %25 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %26 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @print_nsCertType(i64 %27)
  %29 = call i32 (i32, i8*, ...) @msg(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %39

30:                                               ; preds = %15
  %31 = load i32, i32* @D_HANDSHAKE, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %34 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @print_nsCertType(i64 %35)
  %37 = call i32 (i32, i8*, ...) @msg(i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %36)
  %38 = load i64, i64* @FAILURE, align 8
  store i64 %38, i64* %5, align 8
  br label %149

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %42 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load i64, i64* @SUCCESS, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %51 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* @MAX_PARMS, align 4
  %54 = call i64 @x509_verify_cert_ku(i32* %49, i64* %52, i32 %53)
  %55 = icmp eq i64 %48, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @D_HANDSHAKE, align 4
  %58 = call i32 (i32, i8*, ...) @msg(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %63

59:                                               ; preds = %47
  %60 = load i32, i32* @D_HANDSHAKE, align 4
  %61 = call i32 (i32, i8*, ...) @msg(i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i64, i64* @FAILURE, align 8
  store i64 %62, i64* %5, align 8
  br label %149

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %40
  %65 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %66 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = load i64, i64* @SUCCESS, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %73 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @x509_verify_cert_eku(i32* %71, i32* %74)
  %76 = icmp eq i64 %70, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* @D_HANDSHAKE, align 4
  %79 = call i32 (i32, i8*, ...) @msg(i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %84

80:                                               ; preds = %69
  %81 = load i32, i32* @D_HANDSHAKE, align 4
  %82 = call i32 (i32, i8*, ...) @msg(i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i64, i64* @FAILURE, align 8
  store i64 %83, i64* %5, align 8
  br label %149

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %64
  %86 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %87 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VERIFY_X509_NONE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %147

91:                                               ; preds = %85
  %92 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %93 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VERIFY_X509_SUBJECT_DN, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %99 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i64 @strcmp(i32 %100, i8* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %134, label %104

104:                                              ; preds = %97, %91
  %105 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %106 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @VERIFY_X509_SUBJECT_RDN, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %112 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i64 @strcmp(i32 %113, i8* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %110, %104
  %118 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %119 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @VERIFY_X509_SUBJECT_RDN_PREFIX, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %125 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %129 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @strlen(i32 %130)
  %132 = call i64 @strncmp(i32 %126, i8* %127, i32 %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %123, %110, %97
  %135 = load i32, i32* @D_HANDSHAKE, align 4
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 (i32, i8*, ...) @msg(i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %136)
  br label %146

138:                                              ; preds = %123, %117
  %139 = load i32, i32* @D_HANDSHAKE, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = load %struct.tls_options*, %struct.tls_options** %6, align 8
  %142 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, ...) @msg(i32 %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %140, i32 %143)
  %145 = load i64, i64* @FAILURE, align 8
  store i64 %145, i64* %5, align 8
  br label %149

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146, %85
  %148 = load i64, i64* @SUCCESS, align 8
  store i64 %148, i64* %5, align 8
  br label %149

149:                                              ; preds = %147, %138, %80, %59, %30
  %150 = load i64, i64* %5, align 8
  ret i64 %150
}

declare dso_local i64 @x509_verify_ns_cert_type(i32*, i64) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @print_nsCertType(i64) #1

declare dso_local i64 @x509_verify_cert_ku(i32*, i64*, i32) #1

declare dso_local i64 @x509_verify_cert_eku(i32*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
