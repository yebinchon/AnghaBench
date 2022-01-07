; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_dtls_mtu_test.c_mtu_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_dtls_mtu_test.c_mtu_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_OP_NO_ENCRYPT_THEN_MAC = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Channel established\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s%s MTU for record mtu %d = %lu\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-noEtM\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Cipher %s MTU %d\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"record %zu for payload %zu\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"%s: s=%lu, mtus[i]=%lu, reclen=%lu, i=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @mtu_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu_test(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [30 x i64], align 16
  %13 = alloca [600 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %16 = getelementptr inbounds [600 x i8], [600 x i8]* %13, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i32 90, i32 600)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @create_ssl_objects(i32* %18, i32* %19, i32** %7, i32** %8, i32* null, i32* null)
  %21 = call i32 @TEST_true(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %212

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @SSL_OP_NO_ENCRYPT_THEN_MAC, align 4
  %30 = call i32 @SSL_set_options(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32*, i32** %7, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @SSL_set_cipher_list(i32* %32, i8* %33)
  %35 = call i32 @TEST_true(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load i32*, i32** %8, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @SSL_set_cipher_list(i32* %38, i8* %39)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  %45 = call i32* @SSL_get_rbio(i32* %44)
  store i32* %45, i32** %9, align 8
  %46 = call i32 @TEST_ptr(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @SSL_ERROR_NONE, align 4
  %52 = call i32 @create_ssl_connection(i32* %49, i32* %50, i32 %51)
  %53 = call i32 @TEST_true(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48, %43, %37, %31
  br label %212

56:                                               ; preds = %48
  %57 = load i64, i64* @debug, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %103, %61
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 30
  br i1 %64, label %65, label %106

65:                                               ; preds = %62
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 500, %67
  %69 = call i32 @SSL_set_mtu(i32* %66, i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i64 @DTLS_get_data_mtu(i32* %70)
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [30 x i64], [30 x i64]* %12, i64 0, i64 %73
  store i64 %71, i64* %74, align 8
  %75 = load i64, i64* @debug, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %65
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 500, %83
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [30 x i64], [30 x i64]* %12, i64 0, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %78, i8* %82, i32 %84, i64 %88)
  br label %90

90:                                               ; preds = %77, %65
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [30 x i64], [30 x i64]* %12, i64 0, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @TEST_size_t_ne(i64 %94, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 500, %99
  %101 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %98, i32 %100)
  br label %212

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %62

106:                                              ; preds = %62
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @SSL_set_mtu(i32* %107, i32 1000)
  %109 = getelementptr inbounds [30 x i64], [30 x i64]* %12, i64 0, i64 0
  %110 = load i64, i64* %109, align 16
  store i64 %110, i64* %11, align 8
  br label %111

111:                                              ; preds = %203, %106
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds [30 x i64], [30 x i64]* %12, i64 0, i64 29
  %114 = load i64, i64* %113, align 8
  %115 = icmp ule i64 %112, %114
  br i1 %115, label %116, label %206

116:                                              ; preds = %111
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds [600 x i8], [600 x i8]* %13, i64 0, i64 0
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @SSL_write(i32* %117, i8* %118, i64 %119)
  %121 = load i64, i64* %11, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @TEST_int_eq(i32 %120, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %116
  br label %212

126:                                              ; preds = %116
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds [600 x i8], [600 x i8]* %13, i64 0, i64 0
  %129 = call i64 @BIO_read(i32* %127, i8* %128, i32 600)
  store i64 %129, i64* %15, align 8
  %130 = load i64, i64* @debug, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i64, i64* %15, align 8
  %134 = load i64, i64* %11, align 8
  %135 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %133, i64 %134)
  br label %136

136:                                              ; preds = %132, %126
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %199, %136
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %138, 30
  br i1 %139, label %140, label %202

140:                                              ; preds = %137
  %141 = load i64, i64* %11, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [30 x i64], [30 x i64]* %12, i64 0, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp ule i64 %141, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load i64, i64* %15, align 8
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 500, %149
  %151 = sext i32 %150 to i64
  %152 = icmp ugt i64 %148, %151
  br label %153

153:                                              ; preds = %147, %140
  %154 = phi i1 [ false, %140 ], [ %152, %147 ]
  %155 = zext i1 %154 to i32
  %156 = call i32 @TEST_false(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %153
  %159 = load i8*, i8** %5, align 8
  %160 = load i64, i64* %11, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [30 x i64], [30 x i64]* %12, i64 0, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %15, align 8
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 500, %166
  %168 = call i32 @TEST_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %159, i64 %160, i64 %164, i64 %165, i32 %167)
  br label %212

169:                                              ; preds = %153
  %170 = load i64, i64* %11, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [30 x i64], [30 x i64]* %12, i64 0, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp ugt i64 %170, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load i64, i64* %15, align 8
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 500, %178
  %180 = sext i32 %179 to i64
  %181 = icmp ule i64 %177, %180
  br label %182

182:                                              ; preds = %176, %169
  %183 = phi i1 [ false, %169 ], [ %181, %176 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 @TEST_false(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %182
  %188 = load i8*, i8** %5, align 8
  %189 = load i64, i64* %11, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [30 x i64], [30 x i64]* %12, i64 0, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %15, align 8
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 500, %195
  %197 = call i32 @TEST_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %188, i64 %189, i64 %193, i64 %194, i32 %196)
  br label %212

198:                                              ; preds = %182
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  br label %137

202:                                              ; preds = %137
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %11, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %11, align 8
  br label %111

206:                                              ; preds = %111
  store i32 1, i32* %14, align 4
  %207 = load i32*, i32** %8, align 8
  %208 = call i64 @SSL_READ_ETM(i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  store i32 2, i32* %14, align 4
  br label %211

211:                                              ; preds = %210, %206
  br label %212

212:                                              ; preds = %211, %187, %158, %125, %97, %55, %23
  %213 = load i32*, i32** %8, align 8
  %214 = call i32 @SSL_free(i32* %213)
  %215 = load i32*, i32** %7, align 8
  %216 = call i32 @SSL_free(i32* %215)
  %217 = load i32, i32* %14, align 4
  ret i32 %217
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @SSL_set_options(i32*, i32) #1

declare dso_local i32 @SSL_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @SSL_get_rbio(i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_info(i8*, ...) #1

declare dso_local i32 @SSL_set_mtu(i32*, i32) #1

declare dso_local i64 @DTLS_get_data_mtu(i32*) #1

declare dso_local i32 @TEST_size_t_ne(i64, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_write(i32*, i8*, i64) #1

declare dso_local i64 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @TEST_error(i8*, i8*, i64, i64, i64, i32) #1

declare dso_local i64 @SSL_READ_ETM(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
