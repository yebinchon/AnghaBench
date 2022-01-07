; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_des.c_authdes_marshal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_des.c_authdes_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.ad_private = type { i32, %struct.authdes_cred, %struct.authdes_verf, i32, i64, %struct.TYPE_18__, %struct.TYPE_11__ }
%struct.authdes_cred = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.authdes_verf = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.timezone = type { i32 }

@USEC_PER_SEC = common dso_local global i64 0, align 8
@ADN_FULLNAME = common dso_local global i64 0, align 8
@DES_ENCRYPT = common dso_local global i32 0, align 4
@DES_HW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BYTES_PER_XDR_UNIT = common dso_local global i32 0, align 4
@AUTH_DES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*)* @authdes_marshal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authdes_marshal(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ad_private*, align 8
  %7 = alloca %struct.authdes_cred*, align 8
  %8 = alloca %struct.authdes_verf*, align 8
  %9 = alloca [2 x %struct.TYPE_16__], align 16
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = call %struct.ad_private* @AUTH_PRIVATE(%struct.TYPE_17__* %14)
  store %struct.ad_private* %15, %struct.ad_private** %6, align 8
  %16 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %17 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %16, i32 0, i32 1
  store %struct.authdes_cred* %17, %struct.authdes_cred** %7, align 8
  %18 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %19 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %18, i32 0, i32 2
  store %struct.authdes_verf* %19, %struct.authdes_verf** %8, align 8
  %20 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %21 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %20, i32 0, i32 5
  %22 = call i32 @gettimeofday(%struct.TYPE_18__* %21, %struct.timezone* null)
  %23 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %24 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %28 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, %26
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %33 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %37 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %35
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %48, %2
  %42 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %43 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USEC_PER_SEC, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load i64, i64* @USEC_PER_SEC, align 8
  %50 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %51 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, %49
  store i64 %54, i64* %52, align 8
  %55 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %56 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %41

60:                                               ; preds = %41
  %61 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 0
  %62 = bitcast %struct.TYPE_16__* %61 to i32*
  store i32* %62, i32** %13, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %65 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @IXDR_PUT_INT32(i32* %63, i32 %67)
  %69 = load i32*, i32** %13, align 8
  %70 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %71 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @IXDR_PUT_INT32(i32* %69, i32 %74)
  %76 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %77 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ADN_FULLNAME, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %60
  %83 = load i32*, i32** %13, align 8
  %84 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %85 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @IXDR_PUT_U_INT32(i32* %83, i64 %86)
  %88 = load i32*, i32** %13, align 8
  %89 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %90 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, 1
  %93 = call i32 @IXDR_PUT_U_INT32(i32* %88, i64 %92)
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = bitcast i32* %99 to i8*
  %101 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 0
  %102 = bitcast %struct.TYPE_16__* %101 to i8*
  %103 = load i32, i32* @DES_ENCRYPT, align 4
  %104 = load i32, i32* @DES_HW, align 4
  %105 = or i32 %103, %104
  %106 = bitcast %struct.TYPE_16__* %10 to i8*
  %107 = call i32 @cbc_crypt(i8* %100, i8* %102, i32 32, i32 %105, i8* %106)
  store i32 %107, i32* %11, align 4
  br label %118

108:                                              ; preds = %60
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = bitcast i32* %110 to i8*
  %112 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 0
  %113 = bitcast %struct.TYPE_16__* %112 to i8*
  %114 = load i32, i32* @DES_ENCRYPT, align 4
  %115 = load i32, i32* @DES_HW, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @ecb_crypt(i8* %111, i8* %113, i32 16, i32 %116)
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %108, %82
  %119 = load i32, i32* %11, align 4
  %120 = call i64 @DES_FAILED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %3, align 4
  br label %238

124:                                              ; preds = %118
  %125 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %126 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %126, i32 0, i32 1
  %128 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 0
  %129 = bitcast %struct.TYPE_16__* %127 to i8*
  %130 = bitcast %struct.TYPE_16__* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 16 %130, i64 16, i1 false)
  %131 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %132 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @ADN_FULLNAME, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %124
  %138 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 1
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %143 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  store i64 %141, i64* %145, align 8
  %146 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 1
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 16
  %150 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %151 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %151, i32 0, i32 0
  store i64 %149, i64* %152, align 8
  br label %163

153:                                              ; preds = %124
  %154 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %155 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %158 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 8
  %160 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %161 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %161, i32 0, i32 0
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %153, %137
  %164 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %165 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @ADN_FULLNAME, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %172 = mul nsw i32 5, %171
  %173 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %174 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %172, %175
  store i32 %176, i32* %12, align 4
  br label %180

177:                                              ; preds = %163
  %178 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %179 = mul nsw i32 2, %178
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %177, %170
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %183 = mul nsw i32 2, %182
  %184 = call i32* @xdr_inline(i32* %181, i32 %183)
  store i32* %184, i32** %13, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %180
  %187 = load i32*, i32** %13, align 8
  %188 = load i32, i32* @AUTH_DES, align 4
  %189 = call i32 @IXDR_PUT_INT32(i32* %187, i32 %188)
  %190 = load i32*, i32** %13, align 8
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @IXDR_PUT_INT32(i32* %190, i32 %191)
  br label %203

193:                                              ; preds = %180
  %194 = load i32*, i32** %5, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = call i32 @xdr_putint32(i32* %194, i32* %197)
  %199 = call i32 @ATTEMPT(i32 %198)
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 @xdr_putint32(i32* %200, i32* %12)
  %202 = call i32 @ATTEMPT(i32 %201)
  br label %203

203:                                              ; preds = %193, %186
  %204 = load i32*, i32** %5, align 8
  %205 = load %struct.authdes_cred*, %struct.authdes_cred** %7, align 8
  %206 = call i32 @xdr_authdes_cred(i32* %204, %struct.authdes_cred* %205)
  %207 = call i32 @ATTEMPT(i32 %206)
  %208 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %209 = mul nsw i32 3, %208
  store i32 %209, i32* %12, align 4
  %210 = load i32*, i32** %5, align 8
  %211 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %212 = mul nsw i32 2, %211
  %213 = call i32* @xdr_inline(i32* %210, i32 %212)
  store i32* %213, i32** %13, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %222

215:                                              ; preds = %203
  %216 = load i32*, i32** %13, align 8
  %217 = load i32, i32* @AUTH_DES, align 4
  %218 = call i32 @IXDR_PUT_INT32(i32* %216, i32 %217)
  %219 = load i32*, i32** %13, align 8
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @IXDR_PUT_INT32(i32* %219, i32 %220)
  br label %232

222:                                              ; preds = %203
  %223 = load i32*, i32** %5, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = call i32 @xdr_putint32(i32* %223, i32* %226)
  %228 = call i32 @ATTEMPT(i32 %227)
  %229 = load i32*, i32** %5, align 8
  %230 = call i32 @xdr_putint32(i32* %229, i32* %12)
  %231 = call i32 @ATTEMPT(i32 %230)
  br label %232

232:                                              ; preds = %222, %215
  %233 = load i32*, i32** %5, align 8
  %234 = load %struct.authdes_verf*, %struct.authdes_verf** %8, align 8
  %235 = call i32 @xdr_authdes_verf(i32* %233, %struct.authdes_verf* %234)
  %236 = call i32 @ATTEMPT(i32 %235)
  %237 = load i32, i32* @TRUE, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %232, %122
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.ad_private* @AUTH_PRIVATE(%struct.TYPE_17__*) #1

declare dso_local i32 @gettimeofday(%struct.TYPE_18__*, %struct.timezone*) #1

declare dso_local i32 @IXDR_PUT_INT32(i32*, i32) #1

declare dso_local i32 @IXDR_PUT_U_INT32(i32*, i64) #1

declare dso_local i32 @cbc_crypt(i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @ecb_crypt(i8*, i8*, i32, i32) #1

declare dso_local i64 @DES_FAILED(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @xdr_inline(i32*, i32) #1

declare dso_local i32 @ATTEMPT(i32) #1

declare dso_local i32 @xdr_putint32(i32*, i32*) #1

declare dso_local i32 @xdr_authdes_cred(i32*, %struct.authdes_cred*) #1

declare dso_local i32 @xdr_authdes_verf(i32*, %struct.authdes_verf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
