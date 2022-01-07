; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asynciotest.c_test_asyncio.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asynciotest.c_test_asyncio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_asyncio.testdata = private unnamed_addr constant [10 x i8] c"Test data\00", align 1
@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@fragment = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@SSL_ERROR_SYSCALL = common dso_local global i32 0, align 4
@SSL_ERROR_SSL = common dso_local global i32 0, align 4
@MAX_ATTEMPTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_asyncio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_asyncio(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [10 x i8], align 1
  %14 = alloca [10 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = bitcast [10 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_asyncio.testdata, i32 0, i32 0), i64 10, i1 false)
  %19 = call i32 (...) @TLS_server_method()
  %20 = call i32 (...) @TLS_client_method()
  %21 = load i32, i32* @TLS1_VERSION, align 4
  %22 = load i32, i32* @cert, align 4
  %23 = load i32, i32* @privkey, align 4
  %24 = call i32 @create_ssl_ctx_pair(i32 %19, i32 %20, i32 %21, i32 0, i32** %3, i32** %4, i32 %22, i32 %23)
  %25 = call i32 @TEST_true(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %189

28:                                               ; preds = %1
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* @fragment, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = call i32 (...) @bio_f_async_filter()
  %34 = call i32* @BIO_new(i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = call i32 (...) @bio_f_async_filter()
  %36 = call i32* @BIO_new(i32 %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @TEST_ptr(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @TEST_ptr(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40, %32
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @BIO_free(i32* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @BIO_free(i32* %47)
  br label %189

49:                                               ; preds = %40
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @create_ssl_objects(i32* %50, i32* %51, i32** %5, i32** %6, i32* %52, i32* %53)
  %55 = call i32 @TEST_true(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @SSL_ERROR_NONE, align 4
  %61 = call i32 @create_ssl_connection(i32* %58, i32* %59, i32 %60)
  %62 = call i32 @TEST_true(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57, %49
  br label %189

65:                                               ; preds = %57
  store i64 0, i64* %12, align 8
  br label %66

66:                                               ; preds = %181, %65
  %67 = load i64, i64* %12, align 8
  %68 = icmp ult i64 %67, 2
  br i1 %68, label %69, label %184

69:                                               ; preds = %66
  store i32 -1, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %115, %69
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %72, 10
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = icmp ult i64 %75, 2
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi i1 [ false, %70 ], [ %76, %74 ]
  br i1 %78, label %79, label %118

79:                                               ; preds = %77
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 10, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @SSL_write(i32* %80, i8* %84, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %79
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %15, align 4
  br label %114

96:                                               ; preds = %79
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @SSL_get_error(i32* %97, i32 %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* @SSL_ERROR_SSL, align 4
  %106 = icmp eq i32 %104, %105
  br label %107

107:                                              ; preds = %103, %96
  %108 = phi i1 [ true, %96 ], [ %106, %103 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @TEST_false(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %189

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %92
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %11, align 8
  br label %70

118:                                              ; preds = %77
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @TEST_size_t_eq(i32 %119, i32 10)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  br label %189

123:                                              ; preds = %118
  store i32 -1, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %170, %123
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp ne i64 %126, 10
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* @MAX_ATTEMPTS, align 8
  %131 = icmp ult i64 %129, %130
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi i1 [ false, %124 ], [ %131, %128 ]
  br i1 %133, label %134, label %173

134:                                              ; preds = %132
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = sub i64 10, %141
  %143 = trunc i64 %142 to i32
  %144 = call i32 @SSL_read(i32* %135, i8* %139, i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %134
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %15, align 4
  br label %169

151:                                              ; preds = %134
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @SSL_get_error(i32* %152, i32 %153)
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* @SSL_ERROR_SSL, align 4
  %161 = icmp eq i32 %159, %160
  br label %162

162:                                              ; preds = %158, %151
  %163 = phi i1 [ true, %151 ], [ %161, %158 ]
  %164 = zext i1 %163 to i32
  %165 = call i32 @TEST_false(i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %162
  br label %189

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168, %147
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %11, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %11, align 8
  br label %124

173:                                              ; preds = %132
  %174 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %175 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %176 = load i32, i32* %15, align 4
  %177 = call i32 @TEST_mem_eq(i8* %174, i32 10, i8* %175, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  br label %189

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %12, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %12, align 8
  br label %66

184:                                              ; preds = %66
  %185 = load i32*, i32** %6, align 8
  %186 = call i32 @SSL_free(i32* %185)
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @SSL_free(i32* %187)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %9, align 4
  br label %189

189:                                              ; preds = %184, %179, %167, %122, %112, %64, %44, %27
  %190 = load i32*, i32** %6, align 8
  %191 = call i32 @SSL_free(i32* %190)
  %192 = load i32*, i32** %5, align 8
  %193 = call i32 @SSL_free(i32* %192)
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @SSL_CTX_free(i32* %194)
  %196 = load i32*, i32** %3, align 8
  %197 = call i32 @SSL_CTX_free(i32* %196)
  %198 = load i32, i32* %9, align 4
  ret i32 %198
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #2

declare dso_local i32 @TLS_server_method(...) #2

declare dso_local i32 @TLS_client_method(...) #2

declare dso_local i32* @BIO_new(i32) #2

declare dso_local i32 @bio_f_async_filter(...) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32 @BIO_free(i32*) #2

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #2

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #2

declare dso_local i32 @SSL_write(i32*, i8*, i32) #2

declare dso_local i32 @SSL_get_error(i32*, i32) #2

declare dso_local i32 @TEST_false(i32) #2

declare dso_local i32 @TEST_size_t_eq(i32, i32) #2

declare dso_local i32 @SSL_read(i32*, i8*, i32) #2

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #2

declare dso_local i32 @SSL_free(i32*) #2

declare dso_local i32 @SSL_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
