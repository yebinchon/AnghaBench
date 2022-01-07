; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_oct.c_ec_GFp_simple_point2oct.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_oct.c_ec_GFp_simple_point2oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@POINT_CONVERSION_COMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_HYBRID = common dso_local global i32 0, align 4
@EC_F_EC_GFP_SIMPLE_POINT2OCT = common dso_local global i32 0, align 4
@EC_R_INVALID_FORM = common dso_local global i32 0, align 4
@EC_R_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ec_GFp_simple_point2oct(%struct.TYPE_5__* %0, i32* %1, i32 %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %35 = load i32, i32* @EC_R_INVALID_FORM, align 4
  %36 = call i32 @ECerr(i32 %34, i32 %35)
  br label %236

37:                                               ; preds = %29, %25, %6
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_5__* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i64, i64* %12, align 8
  %47 = icmp ult i64 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %50 = load i32, i32* @EC_R_BUFFER_TOO_SMALL, align 4
  %51 = call i32 @ECerr(i32 %49, i32 %50)
  store i64 0, i64* %7, align 8
  br label %245

52:                                               ; preds = %45
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %52, %42
  store i64 1, i64* %7, align 8
  br label %245

56:                                               ; preds = %37
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @BN_num_bytes(i32* %59)
  store i64 %60, i64* %19, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i64, i64* %19, align 8
  %66 = add i64 1, %65
  br label %71

67:                                               ; preds = %56
  %68 = load i64, i64* %19, align 8
  %69 = mul i64 2, %68
  %70 = add i64 1, %69
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i64 [ %66, %64 ], [ %70, %67 ]
  store i64 %72, i64* %14, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %226

75:                                               ; preds = %71
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %14, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %81 = load i32, i32* @EC_R_BUFFER_TOO_SMALL, align 4
  %82 = call i32 @ECerr(i32 %80, i32 %81)
  br label %236

83:                                               ; preds = %75
  %84 = load i32*, i32** %13, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32* @BN_CTX_new_ex(i32 %89)
  store i32* %90, i32** %15, align 8
  store i32* %90, i32** %13, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i64 0, i64* %7, align 8
  br label %245

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %83
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @BN_CTX_start(i32* %96)
  store i32 1, i32* %16, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = call i32* @BN_CTX_get(i32* %98)
  store i32* %99, i32** %17, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = call i32* @BN_CTX_get(i32* %100)
  store i32* %101, i32** %18, align 8
  %102 = load i32*, i32** %18, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %236

105:                                              ; preds = %95
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i32*, i32** %17, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_5__* %106, i32* %107, i32* %108, i32* %109, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %105
  br label %236

114:                                              ; preds = %105
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118, %114
  %123 = load i32*, i32** %18, align 8
  %124 = call i64 @BN_is_odd(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  store i8 %129, i8* %131, align 1
  br label %137

132:                                              ; preds = %122, %118
  %133 = load i32, i32* %10, align 4
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %11, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  store i8 %134, i8* %136, align 1
  br label %137

137:                                              ; preds = %132, %126
  store i64 1, i64* %20, align 8
  %138 = load i64, i64* %19, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = call i64 @BN_num_bytes(i32* %139)
  %141 = sub i64 %138, %140
  store i64 %141, i64* %21, align 8
  %142 = load i64, i64* %21, align 8
  %143 = load i64, i64* %19, align 8
  %144 = icmp ugt i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %147 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %148 = call i32 @ECerr(i32 %146, i32 %147)
  br label %236

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %153, %149
  %151 = load i64, i64* %21, align 8
  %152 = icmp ugt i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i8*, i8** %11, align 8
  %155 = load i64, i64* %20, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %20, align 8
  %157 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8 0, i8* %157, align 1
  %158 = load i64, i64* %21, align 8
  %159 = add i64 %158, -1
  store i64 %159, i64* %21, align 8
  br label %150

160:                                              ; preds = %150
  %161 = load i32*, i32** %17, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = load i64, i64* %20, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = call i64 @BN_bn2bin(i32* %161, i8* %164)
  store i64 %165, i64* %21, align 8
  %166 = load i64, i64* %21, align 8
  %167 = load i64, i64* %20, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %20, align 8
  %169 = load i64, i64* %20, align 8
  %170 = load i64, i64* %19, align 8
  %171 = add i64 1, %170
  %172 = icmp ne i64 %169, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %160
  %174 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %175 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %176 = call i32 @ECerr(i32 %174, i32 %175)
  br label %236

177:                                              ; preds = %160
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %217

185:                                              ; preds = %181, %177
  %186 = load i64, i64* %19, align 8
  %187 = load i32*, i32** %18, align 8
  %188 = call i64 @BN_num_bytes(i32* %187)
  %189 = sub i64 %186, %188
  store i64 %189, i64* %21, align 8
  %190 = load i64, i64* %21, align 8
  %191 = load i64, i64* %19, align 8
  %192 = icmp ugt i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %195 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %196 = call i32 @ECerr(i32 %194, i32 %195)
  br label %236

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %201, %197
  %199 = load i64, i64* %21, align 8
  %200 = icmp ugt i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load i8*, i8** %11, align 8
  %203 = load i64, i64* %20, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %20, align 8
  %205 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8 0, i8* %205, align 1
  %206 = load i64, i64* %21, align 8
  %207 = add i64 %206, -1
  store i64 %207, i64* %21, align 8
  br label %198

208:                                              ; preds = %198
  %209 = load i32*, i32** %18, align 8
  %210 = load i8*, i8** %11, align 8
  %211 = load i64, i64* %20, align 8
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  %213 = call i64 @BN_bn2bin(i32* %209, i8* %212)
  store i64 %213, i64* %21, align 8
  %214 = load i64, i64* %21, align 8
  %215 = load i64, i64* %20, align 8
  %216 = add i64 %215, %214
  store i64 %216, i64* %20, align 8
  br label %217

217:                                              ; preds = %208, %181
  %218 = load i64, i64* %20, align 8
  %219 = load i64, i64* %14, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %223 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %224 = call i32 @ECerr(i32 %222, i32 %223)
  br label %236

225:                                              ; preds = %217
  br label %226

226:                                              ; preds = %225, %71
  %227 = load i32, i32* %16, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32*, i32** %13, align 8
  %231 = call i32 @BN_CTX_end(i32* %230)
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i32*, i32** %15, align 8
  %234 = call i32 @BN_CTX_free(i32* %233)
  %235 = load i64, i64* %14, align 8
  store i64 %235, i64* %7, align 8
  br label %245

236:                                              ; preds = %221, %193, %173, %145, %113, %104, %79, %33
  %237 = load i32, i32* %16, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32*, i32** %13, align 8
  %241 = call i32 @BN_CTX_end(i32* %240)
  br label %242

242:                                              ; preds = %239, %236
  %243 = load i32*, i32** %15, align 8
  %244 = call i32 @BN_CTX_free(i32* %243)
  store i64 0, i64* %7, align 8
  br label %245

245:                                              ; preds = %242, %232, %93, %55, %48
  %246 = load i64, i64* %7, align 8
  ret i64 %246
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @EC_POINT_is_at_infinity(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @BN_num_bytes(i32*) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_5__*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i64 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
