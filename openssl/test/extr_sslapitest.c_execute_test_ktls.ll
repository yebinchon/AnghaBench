; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_execute_test_ktls.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_execute_test_ktls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@TLS1_2_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"AES128-GCM-SHA256\00", align 1
@SSL_MODE_NO_KTLS_TX = common dso_local global i32 0, align 4
@SSL_MODE_NO_KTLS_RX = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @execute_test_ktls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_test_ktls(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = call i32 @create_test_sockets(i32* %15, i32* %16)
  %18 = call i32 @TEST_true(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %196

21:                                               ; preds = %4
  %22 = load i32, i32* %15, align 4
  %23 = call i32 @ktls_chk_platform(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %218

26:                                               ; preds = %21
  %27 = call i32 (...) @TLS_server_method()
  %28 = call i32 (...) @TLS_client_method()
  %29 = load i32, i32* @TLS1_2_VERSION, align 4
  %30 = load i32, i32* @TLS1_2_VERSION, align 4
  %31 = load i32, i32* @cert, align 4
  %32 = load i32, i32* @privkey, align 4
  %33 = call i32 @create_ssl_ctx_pair(i32 %27, i32 %28, i32 %29, i32 %30, i32** %11, i32** %10, i32 %31, i32 %32)
  %34 = call i32 @TEST_true(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %26
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @SSL_CTX_set_cipher_list(i32* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @TEST_true(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32*, i32** %11, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @create_ssl_objects2(i32* %42, i32* %43, %struct.TYPE_11__** %13, %struct.TYPE_11__** %12, i32 %44, i32 %45)
  %47 = call i32 @TEST_true(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41, %36, %26
  br label %196

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = load i32, i32* @SSL_MODE_NO_KTLS_TX, align 4
  %56 = call i32 @SSL_set_mode(%struct.TYPE_11__* %54, i32 %55)
  %57 = call i32 @TEST_true(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %196

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %66 = load i32, i32* @SSL_MODE_NO_KTLS_TX, align 4
  %67 = call i32 @SSL_set_mode(%struct.TYPE_11__* %65, i32 %66)
  %68 = call i32 @TEST_true(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %196

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %77 = load i32, i32* @SSL_MODE_NO_KTLS_RX, align 4
  %78 = call i32 @SSL_set_mode(%struct.TYPE_11__* %76, i32 %77)
  %79 = call i32 @TEST_true(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br label %196

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %72
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %88 = load i32, i32* @SSL_MODE_NO_KTLS_RX, align 4
  %89 = call i32 @SSL_set_mode(%struct.TYPE_11__* %87, i32 %88)
  %90 = call i32 @TEST_true(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  br label %196

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %83
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %97 = load i32, i32* @SSL_ERROR_NONE, align 4
  %98 = call i32 @create_ssl_connection(%struct.TYPE_11__* %95, %struct.TYPE_11__* %96, i32 %97)
  %99 = call i32 @TEST_true(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  br label %196

102:                                              ; preds = %94
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @BIO_get_ktls_send(i32 %108)
  %110 = call i32 @TEST_false(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %196

113:                                              ; preds = %105
  br label %123

114:                                              ; preds = %102
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @BIO_get_ktls_send(i32 %117)
  %119 = call i32 @TEST_true(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  br label %196

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %113
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %123
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @BIO_get_ktls_send(i32 %129)
  %131 = call i32 @TEST_false(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  br label %196

134:                                              ; preds = %126
  br label %144

135:                                              ; preds = %123
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @BIO_get_ktls_send(i32 %138)
  %140 = call i32 @TEST_true(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  br label %196

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %134
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %144
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @BIO_get_ktls_recv(i32 %150)
  %152 = call i32 @TEST_false(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %147
  br label %196

155:                                              ; preds = %147
  br label %165

156:                                              ; preds = %144
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @BIO_get_ktls_recv(i32 %159)
  %161 = call i32 @TEST_true(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %156
  br label %196

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %155
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %165
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @BIO_get_ktls_recv(i32 %171)
  %173 = call i32 @TEST_false(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %168
  br label %196

176:                                              ; preds = %168
  br label %186

177:                                              ; preds = %165
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @BIO_get_ktls_recv(i32 %180)
  %182 = call i32 @TEST_true(i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %177
  br label %196

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %185, %176
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %16, align 4
  %191 = call i32 @ping_pong_query(%struct.TYPE_11__* %187, %struct.TYPE_11__* %188, i32 %189, i32 %190)
  %192 = call i32 @TEST_true(i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %186
  br label %196

195:                                              ; preds = %186
  store i32 1, i32* %14, align 4
  br label %196

196:                                              ; preds = %195, %194, %184, %175, %163, %154, %142, %133, %121, %112, %101, %92, %81, %70, %59, %49, %20
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %198 = icmp ne %struct.TYPE_11__* %197, null
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %201 = call i32 @SSL_shutdown(%struct.TYPE_11__* %200)
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %203 = call i32 @SSL_free(%struct.TYPE_11__* %202)
  br label %204

204:                                              ; preds = %199, %196
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %206 = icmp ne %struct.TYPE_11__* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %209 = call i32 @SSL_shutdown(%struct.TYPE_11__* %208)
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %211 = call i32 @SSL_free(%struct.TYPE_11__* %210)
  br label %212

212:                                              ; preds = %207, %204
  %213 = load i32*, i32** %11, align 8
  %214 = call i32 @SSL_CTX_free(i32* %213)
  %215 = load i32*, i32** %10, align 8
  %216 = call i32 @SSL_CTX_free(i32* %215)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  %217 = load i32, i32* %14, align 4
  store i32 %217, i32* %5, align 4
  br label %218

218:                                              ; preds = %212, %25
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_test_sockets(i32*, i32*) #1

declare dso_local i32 @ktls_chk_platform(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @create_ssl_objects2(i32*, i32*, %struct.TYPE_11__**, %struct.TYPE_11__**, i32, i32) #1

declare dso_local i32 @SSL_set_mode(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @create_ssl_connection(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @BIO_get_ktls_send(i32) #1

declare dso_local i32 @BIO_get_ktls_recv(i32) #1

declare dso_local i32 @ping_pong_query(%struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @SSL_shutdown(%struct.TYPE_11__*) #1

declare dso_local i32 @SSL_free(%struct.TYPE_11__*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
