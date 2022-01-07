; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_oct.c_ec_GFp_simple_oct2point.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_oct.c_ec_GFp_simple_oct2point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@EC_F_EC_GFP_SIMPLE_OCT2POINT = common dso_local global i32 0, align 4
@EC_R_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@POINT_CONVERSION_COMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_HYBRID = common dso_local global i32 0, align 4
@EC_R_INVALID_ENCODING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_oct2point(%struct.TYPE_6__* %0, i32* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %19, align 4
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %24 = load i32, i32* @EC_R_BUFFER_TOO_SMALL, align 4
  %25 = call i32 @ECerr(i32 %23, i32 %24)
  store i32 0, i32* %6, align 4
  br label %212

26:                                               ; preds = %5
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 1
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, -2
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %51 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %52 = call i32 @ECerr(i32 %50, i32 %51)
  store i32 0, i32* %6, align 4
  br label %212

53:                                               ; preds = %45, %41, %37, %26
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %65 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %66 = call i32 @ECerr(i32 %64, i32 %65)
  store i32 0, i32* %6, align 4
  br label %212

67:                                               ; preds = %60, %56
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %75 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %76 = call i32 @ECerr(i32 %74, i32 %75)
  store i32 0, i32* %6, align 4
  br label %212

77:                                               ; preds = %70
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @EC_POINT_set_to_infinity(%struct.TYPE_6__* %78, i32* %79)
  store i32 %80, i32* %6, align 4
  br label %212

81:                                               ; preds = %67
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @BN_num_bytes(i32 %84)
  store i64 %85, i64* %17, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i64, i64* %17, align 8
  %91 = add i64 1, %90
  br label %96

92:                                               ; preds = %81
  %93 = load i64, i64* %17, align 8
  %94 = mul i64 2, %93
  %95 = add i64 1, %94
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i64 [ %91, %89 ], [ %95, %92 ]
  store i64 %97, i64* %18, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %18, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %103 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %104 = call i32 @ECerr(i32 %102, i32 %103)
  store i32 0, i32* %6, align 4
  br label %212

105:                                              ; preds = %96
  %106 = load i32*, i32** %11, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32* @BN_CTX_new_ex(i32 %111)
  store i32* %112, i32** %14, align 8
  store i32* %112, i32** %11, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %212

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %105
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @BN_CTX_start(i32* %118)
  %120 = load i32*, i32** %11, align 8
  %121 = call i32* @BN_CTX_get(i32* %120)
  store i32* %121, i32** %15, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = call i32* @BN_CTX_get(i32* %122)
  store i32* %123, i32** %16, align 8
  %124 = load i32*, i32** %16, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %206

127:                                              ; preds = %117
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i64, i64* %17, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = call i32 @BN_bin2bn(i8* %129, i64 %130, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %127
  br label %206

135:                                              ; preds = %127
  %136 = load i32*, i32** %15, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @BN_ucmp(i32* %136, i32 %139)
  %141 = icmp sge i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %144 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %145 = call i32 @ECerr(i32 %143, i32 %144)
  br label %206

146:                                              ; preds = %135
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = load i32*, i32** %15, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 @EC_POINT_set_compressed_coordinates(%struct.TYPE_6__* %151, i32* %152, i32* %153, i32 %154, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %150
  br label %206

159:                                              ; preds = %150
  br label %205

160:                                              ; preds = %146
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = load i64, i64* %17, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i64, i64* %17, align 8
  %166 = load i32*, i32** %16, align 8
  %167 = call i32 @BN_bin2bn(i8* %164, i64 %165, i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %160
  br label %206

170:                                              ; preds = %160
  %171 = load i32*, i32** %16, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @BN_ucmp(i32* %171, i32 %174)
  %176 = icmp sge i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %170
  %178 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %179 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %180 = call i32 @ECerr(i32 %178, i32 %179)
  br label %206

181:                                              ; preds = %170
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %181
  %186 = load i32, i32* %13, align 4
  %187 = load i32*, i32** %16, align 8
  %188 = call i32 @BN_is_odd(i32* %187)
  %189 = icmp ne i32 %186, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %192 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %193 = call i32 @ECerr(i32 %191, i32 %192)
  br label %206

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194, %181
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %197 = load i32*, i32** %8, align 8
  %198 = load i32*, i32** %15, align 8
  %199 = load i32*, i32** %16, align 8
  %200 = load i32*, i32** %11, align 8
  %201 = call i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_6__* %196, i32* %197, i32* %198, i32* %199, i32* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %195
  br label %206

204:                                              ; preds = %195
  br label %205

205:                                              ; preds = %204, %159
  store i32 1, i32* %19, align 4
  br label %206

206:                                              ; preds = %205, %203, %190, %177, %169, %158, %142, %134, %126
  %207 = load i32*, i32** %11, align 8
  %208 = call i32 @BN_CTX_end(i32* %207)
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @BN_CTX_free(i32* %209)
  %211 = load i32, i32* %19, align 4
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %206, %115, %101, %77, %73, %63, %49, %22
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_POINT_set_to_infinity(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @BN_num_bytes(i32) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_bin2bn(i8*, i64, i32*) #1

declare dso_local i64 @BN_ucmp(i32*, i32) #1

declare dso_local i32 @EC_POINT_set_compressed_coordinates(%struct.TYPE_6__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_6__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
