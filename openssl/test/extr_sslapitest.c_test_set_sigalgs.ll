; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_set_sigalgs.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_set_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i32* }

@testsigalgs = common dso_local global %struct.TYPE_4__* null, align 8
@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failure setting sigalgs in SSL_CTX (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Not-failed setting sigalgs in SSL_CTX (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failure setting sigalgs in SSL (%d)\0A\00", align 1
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_set_sigalgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_set_sigalgs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @testsigalgs, align 8
  %16 = call i32 @OSSL_NELEM(%struct.TYPE_4__* %15)
  %17 = mul nsw i32 %16, 2
  %18 = call i32 @TEST_size_t_le(i64 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %175

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @testsigalgs, align 8
  %25 = call i32 @OSSL_NELEM(%struct.TYPE_4__* %24)
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %23, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @testsigalgs, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  br label %44

36:                                               ; preds = %21
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @testsigalgs, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @testsigalgs, align 8
  %40 = call i32 @OSSL_NELEM(%struct.TYPE_4__* %39)
  %41 = sub nsw i32 %38, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %42
  br label %44

44:                                               ; preds = %36, %31
  %45 = phi %struct.TYPE_4__* [ %35, %31 ], [ %43, %36 ]
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %9, align 8
  %46 = call i32 (...) @TLS_server_method()
  %47 = call i32 (...) @TLS_client_method()
  %48 = load i32, i32* @TLS1_VERSION, align 4
  %49 = load i32, i32* @cert, align 4
  %50 = load i32, i32* @privkey, align 4
  %51 = call i32 @create_ssl_ctx_pair(i32 %46, i32 %47, i32 %48, i32 0, i32** %5, i32** %4, i32 %49, i32 %50)
  %52 = call i32 @TEST_true(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %175

55:                                               ; preds = %44
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @TLS1_2_VERSION, align 4
  %58 = call i32 @SSL_CTX_set_max_proto_version(i32* %56, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %103

61:                                               ; preds = %55
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @SSL_CTX_set1_sigalgs(i32* %67, i32* %70, i32 %73)
  store i32 %74, i32* %11, align 4
  br label %81

75:                                               ; preds = %61
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @SSL_CTX_set1_sigalgs_list(i32* %76, i32 %79)
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %75, %66
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @TEST_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %93

92:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %89
  br label %165

94:                                               ; preds = %81
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @TEST_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %165

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %55
  %104 = load i32*, i32** %5, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @create_ssl_objects(i32* %104, i32* %105, i32** %7, i32** %6, i32* null, i32* null)
  %107 = call i32 @TEST_true(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  br label %165

110:                                              ; preds = %103
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %153, label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @SSL_set1_sigalgs(i32* %119, i32* %122, i32 %125)
  store i32 %126, i32* %12, align 4
  br label %133

127:                                              ; preds = %113
  %128 = load i32*, i32** %6, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @SSL_set1_sigalgs_list(i32* %128, i32 %131)
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %127, %118
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %133
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @TEST_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  br label %145

144:                                              ; preds = %136
  store i32 1, i32* %8, align 4
  br label %145

145:                                              ; preds = %144, %141
  br label %165

146:                                              ; preds = %133
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  br label %165

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %110
  %154 = load i32*, i32** %7, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* @SSL_ERROR_NONE, align 4
  %157 = call i32 @create_ssl_connection(i32* %154, i32* %155, i32 %156)
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @TEST_int_eq(i32 %157, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %153
  br label %165

164:                                              ; preds = %153
  store i32 1, i32* %8, align 4
  br label %165

165:                                              ; preds = %164, %163, %151, %145, %109, %99, %93
  %166 = load i32*, i32** %7, align 8
  %167 = call i32 @SSL_free(i32* %166)
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @SSL_free(i32* %168)
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @SSL_CTX_free(i32* %170)
  %172 = load i32*, i32** %4, align 8
  %173 = call i32 @SSL_CTX_free(i32* %172)
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %165, %54, %20
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @TEST_size_t_le(i64, i32) #1

declare dso_local i32 @OSSL_NELEM(%struct.TYPE_4__*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set1_sigalgs(i32*, i32*, i32) #1

declare dso_local i32 @SSL_CTX_set1_sigalgs_list(i32*, i32) #1

declare dso_local i32 @TEST_info(i8*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @SSL_set1_sigalgs(i32*, i32*, i32) #1

declare dso_local i32 @SSL_set1_sigalgs_list(i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
