; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_oct.c_ec_GF2m_simple_point2oct.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_oct.c_ec_GF2m_simple_point2oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32*, i32*, i32*, i32*)* }

@POINT_CONVERSION_COMPRESSED = common dso_local global i8 0, align 1
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i8 0, align 1
@POINT_CONVERSION_HYBRID = common dso_local global i8 0, align 1
@EC_F_EC_GF2M_SIMPLE_POINT2OCT = common dso_local global i32 0, align 4
@EC_R_INVALID_FORM = common dso_local global i32 0, align 4
@EC_R_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ec_GF2m_simple_point2oct(%struct.TYPE_9__* %0, i32* %1, i8 zeroext %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8 %2, i8* %10, align 1
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  store i32* null, i32** %22, align 8
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @POINT_CONVERSION_COMPRESSED, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %6
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @POINT_CONVERSION_UNCOMPRESSED, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i8, i8* %10, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @POINT_CONVERSION_HYBRID, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_POINT2OCT, align 4
  %42 = load i32, i32* @EC_R_INVALID_FORM, align 4
  %43 = call i32 @ECerr(i32 %41, i32 %42)
  br label %263

44:                                               ; preds = %34, %28, %6
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_9__* %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i64, i64* %12, align 8
  %54 = icmp ult i64 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_POINT2OCT, align 4
  %57 = load i32, i32* @EC_R_BUFFER_TOO_SMALL, align 4
  %58 = call i32 @ECerr(i32 %56, i32 %57)
  store i64 0, i64* %7, align 8
  br label %272

59:                                               ; preds = %52
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %59, %49
  store i64 1, i64* %7, align 8
  br label %272

63:                                               ; preds = %44
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = call i32 @EC_GROUP_get_degree(%struct.TYPE_9__* %64)
  %66 = add nsw i32 %65, 7
  %67 = sdiv i32 %66, 8
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %19, align 8
  %69 = load i8, i8* %10, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* @POINT_CONVERSION_COMPRESSED, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i64, i64* %19, align 8
  %76 = add i64 1, %75
  br label %81

77:                                               ; preds = %63
  %78 = load i64, i64* %19, align 8
  %79 = mul i64 2, %78
  %80 = add i64 1, %79
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi i64 [ %76, %74 ], [ %80, %77 ]
  store i64 %82, i64* %14, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %253

85:                                               ; preds = %81
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %14, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_POINT2OCT, align 4
  %91 = load i32, i32* @EC_R_BUFFER_TOO_SMALL, align 4
  %92 = call i32 @ECerr(i32 %90, i32 %91)
  br label %263

93:                                               ; preds = %85
  %94 = load i32*, i32** %13, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = call i32* (...) @BN_CTX_new()
  store i32* %97, i32** %22, align 8
  store i32* %97, i32** %13, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i64 0, i64* %7, align 8
  br label %272

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %93
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @BN_CTX_start(i32* %103)
  store i32 1, i32* %15, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = call i32* @BN_CTX_get(i32* %105)
  store i32* %106, i32** %16, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = call i32* @BN_CTX_get(i32* %107)
  store i32* %108, i32** %17, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = call i32* @BN_CTX_get(i32* %109)
  store i32* %110, i32** %18, align 8
  %111 = load i32*, i32** %18, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %263

114:                                              ; preds = %102
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i32*, i32** %16, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_9__* %115, i32* %116, i32* %117, i32* %118, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %114
  br label %263

123:                                              ; preds = %114
  %124 = load i8, i8* %10, align 1
  %125 = load i8*, i8** %11, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  store i8 %124, i8* %126, align 1
  %127 = load i8, i8* %10, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @POINT_CONVERSION_UNCOMPRESSED, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %160

132:                                              ; preds = %123
  %133 = load i32*, i32** %16, align 8
  %134 = call i32 @BN_is_zero(i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %160, label %136

136:                                              ; preds = %132
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32 (%struct.TYPE_9__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32*, i32*, i32*)** %140, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %143 = load i32*, i32** %18, align 8
  %144 = load i32*, i32** %17, align 8
  %145 = load i32*, i32** %16, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 %141(%struct.TYPE_9__* %142, i32* %143, i32* %144, i32* %145, i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %136
  br label %263

150:                                              ; preds = %136
  %151 = load i32*, i32** %18, align 8
  %152 = call i64 @BN_is_odd(i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = add i8 %157, 1
  store i8 %158, i8* %156, align 1
  br label %159

159:                                              ; preds = %154, %150
  br label %160

160:                                              ; preds = %159, %132, %123
  store i64 1, i64* %20, align 8
  %161 = load i64, i64* %19, align 8
  %162 = load i32*, i32** %16, align 8
  %163 = call i64 @BN_num_bytes(i32* %162)
  %164 = sub i64 %161, %163
  store i64 %164, i64* %21, align 8
  %165 = load i64, i64* %21, align 8
  %166 = load i64, i64* %19, align 8
  %167 = icmp ugt i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_POINT2OCT, align 4
  %170 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %171 = call i32 @ECerr(i32 %169, i32 %170)
  br label %263

172:                                              ; preds = %160
  br label %173

173:                                              ; preds = %176, %172
  %174 = load i64, i64* %21, align 8
  %175 = icmp ugt i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load i8*, i8** %11, align 8
  %178 = load i64, i64* %20, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %20, align 8
  %180 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8 0, i8* %180, align 1
  %181 = load i64, i64* %21, align 8
  %182 = add i64 %181, -1
  store i64 %182, i64* %21, align 8
  br label %173

183:                                              ; preds = %173
  %184 = load i32*, i32** %16, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = load i64, i64* %20, align 8
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  %188 = call i64 @BN_bn2bin(i32* %184, i8* %187)
  store i64 %188, i64* %21, align 8
  %189 = load i64, i64* %21, align 8
  %190 = load i64, i64* %20, align 8
  %191 = add i64 %190, %189
  store i64 %191, i64* %20, align 8
  %192 = load i64, i64* %20, align 8
  %193 = load i64, i64* %19, align 8
  %194 = add i64 1, %193
  %195 = icmp ne i64 %192, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %183
  %197 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_POINT2OCT, align 4
  %198 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %199 = call i32 @ECerr(i32 %197, i32 %198)
  br label %263

200:                                              ; preds = %183
  %201 = load i8, i8* %10, align 1
  %202 = zext i8 %201 to i32
  %203 = load i8, i8* @POINT_CONVERSION_UNCOMPRESSED, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %212, label %206

206:                                              ; preds = %200
  %207 = load i8, i8* %10, align 1
  %208 = zext i8 %207 to i32
  %209 = load i8, i8* @POINT_CONVERSION_HYBRID, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %212, label %244

212:                                              ; preds = %206, %200
  %213 = load i64, i64* %19, align 8
  %214 = load i32*, i32** %17, align 8
  %215 = call i64 @BN_num_bytes(i32* %214)
  %216 = sub i64 %213, %215
  store i64 %216, i64* %21, align 8
  %217 = load i64, i64* %21, align 8
  %218 = load i64, i64* %19, align 8
  %219 = icmp ugt i64 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %212
  %221 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_POINT2OCT, align 4
  %222 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %223 = call i32 @ECerr(i32 %221, i32 %222)
  br label %263

224:                                              ; preds = %212
  br label %225

225:                                              ; preds = %228, %224
  %226 = load i64, i64* %21, align 8
  %227 = icmp ugt i64 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load i8*, i8** %11, align 8
  %230 = load i64, i64* %20, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %20, align 8
  %232 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8 0, i8* %232, align 1
  %233 = load i64, i64* %21, align 8
  %234 = add i64 %233, -1
  store i64 %234, i64* %21, align 8
  br label %225

235:                                              ; preds = %225
  %236 = load i32*, i32** %17, align 8
  %237 = load i8*, i8** %11, align 8
  %238 = load i64, i64* %20, align 8
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  %240 = call i64 @BN_bn2bin(i32* %236, i8* %239)
  store i64 %240, i64* %21, align 8
  %241 = load i64, i64* %21, align 8
  %242 = load i64, i64* %20, align 8
  %243 = add i64 %242, %241
  store i64 %243, i64* %20, align 8
  br label %244

244:                                              ; preds = %235, %206
  %245 = load i64, i64* %20, align 8
  %246 = load i64, i64* %14, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %244
  %249 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_POINT2OCT, align 4
  %250 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %251 = call i32 @ECerr(i32 %249, i32 %250)
  br label %263

252:                                              ; preds = %244
  br label %253

253:                                              ; preds = %252, %81
  %254 = load i32, i32* %15, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32*, i32** %13, align 8
  %258 = call i32 @BN_CTX_end(i32* %257)
  br label %259

259:                                              ; preds = %256, %253
  %260 = load i32*, i32** %22, align 8
  %261 = call i32 @BN_CTX_free(i32* %260)
  %262 = load i64, i64* %14, align 8
  store i64 %262, i64* %7, align 8
  br label %272

263:                                              ; preds = %248, %220, %196, %168, %149, %122, %113, %89, %40
  %264 = load i32, i32* %15, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32*, i32** %13, align 8
  %268 = call i32 @BN_CTX_end(i32* %267)
  br label %269

269:                                              ; preds = %266, %263
  %270 = load i32*, i32** %22, align 8
  %271 = call i32 @BN_CTX_free(i32* %270)
  store i64 0, i64* %7, align 8
  br label %272

272:                                              ; preds = %269, %259, %100, %62, %55
  %273 = load i64, i64* %7, align 8
  ret i64 %273
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @EC_POINT_is_at_infinity(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @EC_GROUP_get_degree(%struct.TYPE_9__*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_9__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_is_zero(i32*) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i64 @BN_num_bytes(i32*) #1

declare dso_local i64 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
