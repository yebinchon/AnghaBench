; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bf_lbuf.c_linebuffer_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bf_lbuf.c_linebuffer_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i64 }
%struct.TYPE_7__ = type { i32, i8*, i32 }

@DEFAULT_LINEBUFFER_SIZE = common dso_local global i32 0, align 4
@BIO_F_LINEBUFFER_CTRL = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32, i64, i8*)* @linebuffer_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @linebuffer_ctrl(%struct.TYPE_8__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 1, i64* %12, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %11, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %238 [
    i32 131, label %21
    i32 132, label %37
    i32 130, label %42
    i32 128, label %64
    i32 129, label %123
    i32 133, label %141
    i32 134, label %227
  ]

21:                                               ; preds = %4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %258

29:                                               ; preds = %21
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @BIO_ctrl(i32* %32, i32 %33, i64 %34, i8* %35)
  store i64 %36, i64* %12, align 8
  br label %252

37:                                               ; preds = %4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %12, align 8
  br label %252

42:                                               ; preds = %4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i64 0, i64* %5, align 8
  br label %258

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i64, i64* %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @BIO_ctrl(i32* %58, i32 %59, i64 %60, i8* %61)
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %55, %42
  br label %252

64:                                               ; preds = %4
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %15, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %13, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @DEFAULT_LINEBUFFER_SIZE, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %64
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i64, i64* %8, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i8* @OPENSSL_malloc(i32 %81)
  store i8* %82, i8** %13, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %254

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %73, %64
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ne i8* %90, %91
  br i1 %92, label %93, label %122

93:                                               ; preds = %87
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %93
  %104 = load i8*, i8** %13, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @memcpy(i8* %104, i8* %107, i32 %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @OPENSSL_free(i8* %114)
  %116 = load i8*, i8** %13, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %103, %87
  br label %252

123:                                              ; preds = %4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i64 0, i64* %5, align 8
  br label %258

129:                                              ; preds = %123
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %131 = call i32 @BIO_clear_retry_flags(%struct.TYPE_8__* %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i64, i64* %8, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = call i64 @BIO_ctrl(i32* %134, i32 %135, i64 %136, i8* %137)
  store i64 %138, i64* %12, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %140 = call i32 @BIO_copy_next_retry(%struct.TYPE_8__* %139)
  br label %252

141:                                              ; preds = %4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i64 0, i64* %5, align 8
  br label %258

147:                                              ; preds = %141
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sle i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i64, i64* %8, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = call i64 @BIO_ctrl(i32* %155, i32 %156, i64 %157, i8* %158)
  store i64 %159, i64* %12, align 8
  br label %252

160:                                              ; preds = %147
  br label %161

161:                                              ; preds = %218, %160
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %163 = call i32 @BIO_clear_retry_flags(%struct.TYPE_8__* %162)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %215

168:                                              ; preds = %161
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @BIO_write(i32* %171, i8* %174, i32 %177)
  store i32 %178, i32* %14, align 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %180 = call i32 @BIO_copy_next_retry(%struct.TYPE_8__* %179)
  %181 = load i32, i32* %14, align 4
  %182 = icmp sle i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %168
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %5, align 8
  br label %258

186:                                              ; preds = %168
  %187 = load i32, i32* %14, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %209

192:                                              ; preds = %186
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sub nsw i32 %205, %206
  %208 = call i32 @memmove(i8* %195, i32 %202, i32 %207)
  br label %209

209:                                              ; preds = %192, %186
  %210 = load i32, i32* %14, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sub nsw i32 %213, %210
  store i32 %214, i32* %212, align 8
  br label %218

215:                                              ; preds = %161
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  store i32 0, i32* %217, align 8
  br label %219

218:                                              ; preds = %209
  br label %161

219:                                              ; preds = %215
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = load i64, i64* %8, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = call i64 @BIO_ctrl(i32* %222, i32 %223, i64 %224, i8* %225)
  store i64 %226, i64* %12, align 8
  br label %252

227:                                              ; preds = %4
  %228 = load i8*, i8** %9, align 8
  %229 = bitcast i8* %228 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %229, %struct.TYPE_8__** %10, align 8
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @BIO_set_write_buffer_size(%struct.TYPE_8__* %230, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %227
  store i64 0, i64* %12, align 8
  br label %237

237:                                              ; preds = %236, %227
  br label %252

238:                                              ; preds = %4
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  store i64 0, i64* %5, align 8
  br label %258

244:                                              ; preds = %238
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = load i64, i64* %8, align 8
  %250 = load i8*, i8** %9, align 8
  %251 = call i64 @BIO_ctrl(i32* %247, i32 %248, i64 %249, i8* %250)
  store i64 %251, i64* %12, align 8
  br label %252

252:                                              ; preds = %244, %237, %219, %152, %129, %122, %63, %37, %29
  %253 = load i64, i64* %12, align 8
  store i64 %253, i64* %5, align 8
  br label %258

254:                                              ; preds = %85
  %255 = load i32, i32* @BIO_F_LINEBUFFER_CTRL, align 4
  %256 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %257 = call i32 @BIOerr(i32 %255, i32 %256)
  store i64 0, i64* %5, align 8
  br label %258

258:                                              ; preds = %254, %252, %243, %183, %146, %128, %54, %28
  %259 = load i64, i64* %5, align 8
  ret i64 %259
}

declare dso_local i64 @BIO_ctrl(i32*, i32, i64, i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_8__*) #1

declare dso_local i32 @BIO_copy_next_retry(%struct.TYPE_8__*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i32, i32) #1

declare dso_local i32 @BIO_set_write_buffer_size(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @BIOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
