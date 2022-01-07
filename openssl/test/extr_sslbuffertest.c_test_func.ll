; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslbuffertest.c_test_func.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslbuffertest.c_test_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_func.testdata = private unnamed_addr constant [10 x i8] c"Test data\00", align 1
@serverctx = common dso_local global i32 0, align 4
@clientctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Test %d failed: Create SSL objects failed\0A\00", align 1
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Test %d failed: Create SSL connection failed\0A\00", align 1
@SSL_ERROR_SYSCALL = common dso_local global i32 0, align 4
@SSL_ERROR_SSL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Test %d failed: Failed to write app data\0A\00", align 1
@MAX_ATTEMPTS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Test %d failed: Failed to read app data\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_func(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [10 x i8], align 1
  %10 = alloca [10 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %14 = bitcast [10 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_func.testdata, i32 0, i32 0), i64 10, i1 false)
  %15 = load i32, i32* @serverctx, align 4
  %16 = load i32, i32* @clientctx, align 4
  %17 = call i32 @create_ssl_objects(i32 %15, i32 %16, i32** %4, i32** %5, i32* null, i32* null)
  %18 = call i32 @TEST_true(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @TEST_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %219

23:                                               ; preds = %1
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @SSL_ERROR_NONE, align 4
  %27 = call i32 @create_ssl_connection(i32* %24, i32* %25, i32 %26)
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @TEST_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %219

33:                                               ; preds = %23
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %215, %33
  %35 = load i64, i64* %8, align 8
  %36 = icmp ult i64 %35, 2
  br i1 %36, label %37, label %218

37:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %116, %37
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 10
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %43, 2
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i1 [ false, %38 ], [ %44, %42 ]
  br i1 %46, label %47, label %119

47:                                               ; preds = %45
  %48 = load i32, i32* %2, align 4
  %49 = icmp sge i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @SSL_free_buffers(i32* %51)
  %53 = call i32 @TEST_true(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %219

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %2, align 4
  %58 = icmp sge i32 %57, 2
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @SSL_alloc_buffers(i32* %60)
  %62 = call i32 @TEST_true(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %219

65:                                               ; preds = %59, %56
  %66 = load i32, i32* %2, align 4
  %67 = icmp sge i32 %66, 3
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @SSL_alloc_buffers(i32* %69)
  %71 = call i32 @TEST_true(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %219

74:                                               ; preds = %68, %65
  %75 = load i32, i32* %2, align 4
  %76 = icmp sge i32 %75, 4
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @SSL_free_buffers(i32* %78)
  %80 = call i32 @TEST_true(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %219

83:                                               ; preds = %77, %74
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 10, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 @SSL_write(i32* %84, i8* %88, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %83
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %115

100:                                              ; preds = %83
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @SSL_get_error(i32* %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @SSL_ERROR_SSL, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107, %100
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @TEST_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %219

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %96
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %7, align 8
  br label %38

119:                                              ; preds = %45
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @TEST_size_t_eq(i32 %120, i32 10)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  br label %219

124:                                              ; preds = %119
  store i32 -1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %204, %124
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ne i64 %127, 10
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @MAX_ATTEMPTS, align 8
  %132 = icmp ult i64 %130, %131
  br label %133

133:                                              ; preds = %129, %125
  %134 = phi i1 [ false, %125 ], [ %132, %129 ]
  br i1 %134, label %135, label %207

135:                                              ; preds = %133
  %136 = load i32, i32* %2, align 4
  %137 = icmp sge i32 %136, 5
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @SSL_free_buffers(i32* %139)
  %141 = call i32 @TEST_true(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  br label %219

144:                                              ; preds = %138, %135
  %145 = load i32, i32* %2, align 4
  %146 = icmp sge i32 %145, 6
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @SSL_free_buffers(i32* %148)
  %150 = call i32 @TEST_true(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  br label %219

153:                                              ; preds = %147, %144
  %154 = load i32, i32* %2, align 4
  %155 = icmp sge i32 %154, 7
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @SSL_alloc_buffers(i32* %157)
  %159 = call i32 @TEST_true(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  br label %219

162:                                              ; preds = %156, %153
  %163 = load i32, i32* %2, align 4
  %164 = icmp sge i32 %163, 8
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @SSL_free_buffers(i32* %166)
  %168 = call i32 @TEST_true(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  br label %219

171:                                              ; preds = %165, %162
  %172 = load i32*, i32** %4, align 8
  %173 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = sub i64 10, %178
  %180 = trunc i64 %179 to i32
  %181 = call i32 @SSL_read(i32* %172, i8* %176, i32 %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %171
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %11, align 4
  br label %203

188:                                              ; preds = %171
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @SSL_get_error(i32* %189, i32 %190)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %199, label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* @SSL_ERROR_SSL, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %195, %188
  %200 = load i32, i32* %2, align 4
  %201 = call i32 @TEST_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %200)
  br label %219

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202, %184
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %7, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %7, align 8
  br label %125

207:                                              ; preds = %133
  %208 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %209 = load i32, i32* %11, align 4
  %210 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %211 = call i32 @TEST_mem_eq(i8* %208, i32 %209, i8* %210, i32 10)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %207
  br label %219

214:                                              ; preds = %207
  br label %215

215:                                              ; preds = %214
  %216 = load i64, i64* %8, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %8, align 8
  br label %34

218:                                              ; preds = %34
  store i32 1, i32* %3, align 4
  br label %219

219:                                              ; preds = %218, %213, %199, %170, %161, %152, %143, %123, %111, %82, %73, %64, %55, %30, %20
  %220 = load i32, i32* %3, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* @stderr, align 4
  %224 = call i32 @ERR_print_errors_fp(i32 %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32*, i32** %5, align 8
  %227 = call i32 @SSL_free(i32* %226)
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @SSL_free(i32* %228)
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @create_ssl_objects(i32, i32, i32**, i32**, i32*, i32*) #2

declare dso_local i32 @TEST_error(i8*, i32) #2

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #2

declare dso_local i32 @SSL_free_buffers(i32*) #2

declare dso_local i32 @SSL_alloc_buffers(i32*) #2

declare dso_local i32 @SSL_write(i32*, i8*, i32) #2

declare dso_local i32 @SSL_get_error(i32*, i32) #2

declare dso_local i32 @TEST_size_t_eq(i32, i32) #2

declare dso_local i32 @SSL_read(i32*, i8*, i32) #2

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #2

declare dso_local i32 @ERR_print_errors_fp(i32) #2

declare dso_local i32 @SSL_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
