; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssl_test_ctx_test.c_test_good_configuration.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssl_test_ctx_test.c_test_good_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_12__, i32, i32, i32, i8*, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i8*, i8*, i32 }

@fixture = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"ssltest_good\00", align 1
@SSL_TEST_METHOD_DTLS = common dso_local global i32 0, align 4
@SSL_TEST_HANDSHAKE_RESUME = common dso_local global i32 0, align 4
@SSL_TEST_SERVER_FAIL = common dso_local global i32 0, align 4
@SSL_AD_UNKNOWN_CA = common dso_local global i32 0, align 4
@TLS1_1_VERSION = common dso_local global i32 0, align 4
@SSL_TEST_SERVERNAME_SERVER2 = common dso_local global i8* null, align 8
@SSL_TEST_SESSION_TICKET_YES = common dso_local global i32 0, align 4
@SSL_TEST_COMPRESSION_NO = common dso_local global i32 0, align 4
@SSL_TEST_SESSION_ID_IGNORE = common dso_local global i32 0, align 4
@SSL_TEST_VERIFY_REJECT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"foo,bar\00", align 1
@SSL_TEST_SERVERNAME_IGNORE_MISMATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@SSL_TEST_CT_VALIDATION_STRICT = common dso_local global i32 0, align 4
@result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_good_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_good_configuration() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @SETUP_SSL_TEST_CTX_TEST_FIXTURE()
  %3 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %4 = icmp eq %struct.TYPE_17__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %151

6:                                                ; preds = %0
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load i32, i32* @SSL_TEST_METHOD_DTLS, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 14
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* @SSL_TEST_HANDSHAKE_RESUME, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 13
  store i32 %14, i32* %18, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  store i32 1024, i32* %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store i32 2048, i32* %26, align 4
  %27 = load i32, i32* @SSL_TEST_SERVER_FAIL, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 12
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @SSL_AD_UNKNOWN_CA, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 11
  store i32 %32, i32* %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 10
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @TLS1_1_VERSION, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 9
  store i32 %41, i32* %45, align 8
  %46 = load i8*, i8** @SSL_TEST_SERVERNAME_SERVER2, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 8
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* @SSL_TEST_SESSION_TICKET_YES, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 7
  store i32 %51, i32* %55, align 8
  %56 = load i32, i32* @SSL_TEST_COMPRESSION_NO, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 6
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* @SSL_TEST_SESSION_ID_IGNORE, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 5
  store i32 %61, i32* %65, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* @SSL_TEST_VERIFY_REJECT_ALL, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  store i32 %70, i32* %76, align 8
  %77 = load i8*, i8** @SSL_TEST_SERVERNAME_SERVER2, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  store i8* %77, i8** %83, align 8
  %84 = call i8* @OPENSSL_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i8* %84, i8** %90, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @TEST_ptr(i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %6
  br label %148

101:                                              ; preds = %6
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @SSL_TEST_SERVERNAME_IGNORE_MISMATCH, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store i32 %108, i32* %114, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = call i8* @OPENSSL_strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  store i8* %121, i8** %127, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @TEST_ptr(i8* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %101
  br label %148

138:                                              ; preds = %101
  %139 = load i32, i32* @SSL_TEST_CT_VALIDATION_STRICT, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  store i32 %139, i32* %145, align 8
  %146 = call i32 (...) @EXECUTE_SSL_TEST_CTX_TEST()
  %147 = load i32, i32* @result, align 4
  store i32 %147, i32* %1, align 4
  br label %151

148:                                              ; preds = %137, %100
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** @fixture, align 8
  %150 = call i32 @tear_down(%struct.TYPE_17__* %149)
  store i32 0, i32* %1, align 4
  br label %151

151:                                              ; preds = %148, %138, %5
  %152 = load i32, i32* %1, align 4
  ret i32 %152
}

declare dso_local i32 @SETUP_SSL_TEST_CTX_TEST_FIXTURE(...) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i32 @EXECUTE_SSL_TEST_CTX_TEST(...) #1

declare dso_local i32 @tear_down(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
