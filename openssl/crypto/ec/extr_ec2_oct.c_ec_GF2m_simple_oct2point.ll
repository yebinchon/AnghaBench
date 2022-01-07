; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_oct.c_ec_GF2m_simple_oct2point.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_oct.c_ec_GF2m_simple_oct2point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i32*, i32*, i32*, i32*)* }

@EC_F_EC_GF2M_SIMPLE_OCT2POINT = common dso_local global i32 0, align 4
@EC_R_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@POINT_CONVERSION_COMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_HYBRID = common dso_local global i32 0, align 4
@EC_R_INVALID_ENCODING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GF2m_simple_oct2point(%struct.TYPE_10__* %0, i32* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %20, align 4
  store i32* null, i32** %21, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_OCT2POINT, align 4
  %26 = load i32, i32* @EC_R_BUFFER_TOO_SMALL, align 4
  %27 = call i32 @ECerr(i32 %25, i32 %26)
  store i32 0, i32* %6, align 4
  br label %225

28:                                               ; preds = %5
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, 1
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, -2
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %28
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_OCT2POINT, align 4
  %53 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %54 = call i32 @ECerr(i32 %52, i32 %53)
  store i32 0, i32* %6, align 4
  br label %225

55:                                               ; preds = %47, %43, %39, %28
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_OCT2POINT, align 4
  %67 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %68 = call i32 @ECerr(i32 %66, i32 %67)
  store i32 0, i32* %6, align 4
  br label %225

69:                                               ; preds = %62, %58
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_OCT2POINT, align 4
  %77 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %78 = call i32 @ECerr(i32 %76, i32 %77)
  store i32 0, i32* %6, align 4
  br label %225

79:                                               ; preds = %72
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @EC_POINT_set_to_infinity(%struct.TYPE_10__* %80, i32* %81)
  store i32 %82, i32* %6, align 4
  br label %225

83:                                               ; preds = %69
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = call i32 @EC_GROUP_get_degree(%struct.TYPE_10__* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 7
  %88 = sdiv i32 %87, 8
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %18, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load i64, i64* %18, align 8
  %95 = add i64 1, %94
  br label %100

96:                                               ; preds = %83
  %97 = load i64, i64* %18, align 8
  %98 = mul i64 2, %97
  %99 = add i64 1, %98
  br label %100

100:                                              ; preds = %96, %93
  %101 = phi i64 [ %95, %93 ], [ %99, %96 ]
  store i64 %101, i64* %19, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %19, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_OCT2POINT, align 4
  %107 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %108 = call i32 @ECerr(i32 %106, i32 %107)
  store i32 0, i32* %6, align 4
  br label %225

109:                                              ; preds = %100
  %110 = load i32*, i32** %11, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = call i32* (...) @BN_CTX_new()
  store i32* %113, i32** %21, align 8
  store i32* %113, i32** %11, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 0, i32* %6, align 4
  br label %225

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117, %109
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @BN_CTX_start(i32* %119)
  %121 = load i32*, i32** %11, align 8
  %122 = call i32* @BN_CTX_get(i32* %121)
  store i32* %122, i32** %15, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i32* @BN_CTX_get(i32* %123)
  store i32* %124, i32** %16, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = call i32* @BN_CTX_get(i32* %125)
  store i32* %126, i32** %17, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %219

130:                                              ; preds = %118
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i64, i64* %18, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = call i32 @BN_bin2bn(i8* %132, i64 %133, i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  br label %219

138:                                              ; preds = %130
  %139 = load i32*, i32** %15, align 8
  %140 = call i32 @BN_num_bits(i32* %139)
  %141 = load i32, i32* %14, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_OCT2POINT, align 4
  %145 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %146 = call i32 @ECerr(i32 %144, i32 %145)
  br label %219

147:                                              ; preds = %138
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 @EC_POINT_set_compressed_coordinates(%struct.TYPE_10__* %152, i32* %153, i32* %154, i32 %155, i32* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %151
  br label %219

160:                                              ; preds = %151
  br label %218

161:                                              ; preds = %147
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  %164 = load i64, i64* %18, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = load i64, i64* %18, align 8
  %167 = load i32*, i32** %16, align 8
  %168 = call i32 @BN_bin2bn(i8* %165, i64 %166, i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %161
  br label %219

171:                                              ; preds = %161
  %172 = load i32*, i32** %16, align 8
  %173 = call i32 @BN_num_bits(i32* %172)
  %174 = load i32, i32* %14, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_OCT2POINT, align 4
  %178 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %179 = call i32 @ECerr(i32 %177, i32 %178)
  br label %219

180:                                              ; preds = %171
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %208

184:                                              ; preds = %180
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32 (%struct.TYPE_10__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_10__*, i32*, i32*, i32*, i32*)** %188, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %191 = load i32*, i32** %17, align 8
  %192 = load i32*, i32** %16, align 8
  %193 = load i32*, i32** %15, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = call i32 %189(%struct.TYPE_10__* %190, i32* %191, i32* %192, i32* %193, i32* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %184
  br label %219

198:                                              ; preds = %184
  %199 = load i32, i32* %13, align 4
  %200 = load i32*, i32** %17, align 8
  %201 = call i32 @BN_is_odd(i32* %200)
  %202 = icmp ne i32 %199, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_OCT2POINT, align 4
  %205 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %206 = call i32 @ECerr(i32 %204, i32 %205)
  br label %219

207:                                              ; preds = %198
  br label %208

208:                                              ; preds = %207, %180
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %210 = load i32*, i32** %8, align 8
  %211 = load i32*, i32** %15, align 8
  %212 = load i32*, i32** %16, align 8
  %213 = load i32*, i32** %11, align 8
  %214 = call i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_10__* %209, i32* %210, i32* %211, i32* %212, i32* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %208
  br label %219

217:                                              ; preds = %208
  br label %218

218:                                              ; preds = %217, %160
  store i32 1, i32* %20, align 4
  br label %219

219:                                              ; preds = %218, %216, %203, %197, %176, %170, %159, %143, %137, %129
  %220 = load i32*, i32** %11, align 8
  %221 = call i32 @BN_CTX_end(i32* %220)
  %222 = load i32*, i32** %21, align 8
  %223 = call i32 @BN_CTX_free(i32* %222)
  %224 = load i32, i32* %20, align 4
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %219, %116, %105, %79, %75, %65, %51, %24
  %226 = load i32, i32* %6, align 4
  ret i32 %226
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_POINT_set_to_infinity(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @EC_GROUP_get_degree(%struct.TYPE_10__*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_bin2bn(i8*, i64, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @EC_POINT_set_compressed_coordinates(%struct.TYPE_10__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_10__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
