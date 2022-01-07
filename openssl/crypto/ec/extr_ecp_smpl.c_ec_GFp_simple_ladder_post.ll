; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_ladder_post.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_ladder_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { %struct.TYPE_36__*, i32, i32*, i32* }
%struct.TYPE_36__ = type { i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*)* }
%struct.TYPE_37__ = type { i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_ladder_post(%struct.TYPE_38__* %0, %struct.TYPE_37__* %1, %struct.TYPE_37__* %2, %struct.TYPE_37__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca %struct.TYPE_37__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %7, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %8, align 8
  store %struct.TYPE_37__* %2, %struct.TYPE_37__** %9, align 8
  store %struct.TYPE_37__* %3, %struct.TYPE_37__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @BN_is_zero(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %27 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %28 = call i32 @EC_POINT_set_to_infinity(%struct.TYPE_38__* %26, %struct.TYPE_37__* %27)
  store i32 %28, i32* %6, align 4
  br label %515

29:                                               ; preds = %5
  %30 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @BN_is_zero(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %106

35:                                               ; preds = %29
  %36 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %39, align 8
  %41 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %42 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 %40(%struct.TYPE_38__* %41, i32* %44, i32* %47, i32* %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %104

54:                                               ; preds = %35
  %55 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 1
  %59 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*)** %58, align 8
  %60 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %61 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 %59(%struct.TYPE_38__* %60, i32* %63, i32* %66, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %54
  %71 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %74, align 8
  %76 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %77 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 %75(%struct.TYPE_38__* %76, i32* %79, i32* %82, i32* %85, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %70
  %90 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @BN_copy(i32* %92, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %100 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @EC_POINT_invert(%struct.TYPE_38__* %99, %struct.TYPE_37__* %100, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98, %89, %70, %54, %35
  store i32 0, i32* %6, align 4
  br label %515

105:                                              ; preds = %98
  store i32 1, i32* %6, align 4
  br label %515

106:                                              ; preds = %29
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @BN_CTX_start(i32* %107)
  %109 = load i32*, i32** %11, align 8
  %110 = call i32* @BN_CTX_get(i32* %109)
  store i32* %110, i32** %13, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = call i32* @BN_CTX_get(i32* %111)
  store i32* %112, i32** %14, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32* @BN_CTX_get(i32* %113)
  store i32* %114, i32** %15, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = call i32* @BN_CTX_get(i32* %115)
  store i32* %116, i32** %16, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i32* @BN_CTX_get(i32* %117)
  store i32* %118, i32** %17, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = call i32* @BN_CTX_get(i32* %119)
  store i32* %120, i32** %18, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call i32* @BN_CTX_get(i32* %121)
  store i32* %122, i32** %19, align 8
  %123 = load i32*, i32** %19, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %509, label %125

125:                                              ; preds = %106
  %126 = load i32*, i32** %13, align 8
  %127 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @BN_mod_lshift1_quick(i32* %126, i32* %129, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %509

135:                                              ; preds = %125
  %136 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_36__*, %struct.TYPE_36__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %138, i32 0, i32 0
  %140 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %139, align 8
  %141 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %142 = load i32*, i32** %14, align 8
  %143 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 %140(%struct.TYPE_38__* %141, i32* %142, i32* %145, i32* %148, i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %509

152:                                              ; preds = %135
  %153 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_36__*, %struct.TYPE_36__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %155, i32 0, i32 0
  %157 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %156, align 8
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %159 = load i32*, i32** %15, align 8
  %160 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 %157(%struct.TYPE_38__* %158, i32* %159, i32* %162, i32* %165, i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %509

169:                                              ; preds = %152
  %170 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_36__*, %struct.TYPE_36__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %172, i32 0, i32 0
  %174 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %173, align 8
  %175 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = load i32*, i32** %14, align 8
  %178 = load i32*, i32** %15, align 8
  %179 = load i32*, i32** %11, align 8
  %180 = call i32 %174(%struct.TYPE_38__* %175, i32* %176, i32* %177, i32* %178, i32* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %509

182:                                              ; preds = %169
  %183 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 0
  %187 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %186, align 8
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %189 = load i32*, i32** %16, align 8
  %190 = load i32*, i32** %15, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 %187(%struct.TYPE_38__* %188, i32* %189, i32* %190, i32* %191, i32* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %509

195:                                              ; preds = %182
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_36__*, %struct.TYPE_36__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 0
  %200 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %199, align 8
  %201 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %202 = load i32*, i32** %15, align 8
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i32*, i32** %11, align 8
  %210 = call i32 %200(%struct.TYPE_38__* %201, i32* %202, i32* %205, i32* %208, i32* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %509

212:                                              ; preds = %195
  %213 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %215, i32 0, i32 1
  %217 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*)** %216, align 8
  %218 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %219 = load i32*, i32** %17, align 8
  %220 = load i32*, i32** %15, align 8
  %221 = load i32*, i32** %11, align 8
  %222 = call i32 %217(%struct.TYPE_38__* %218, i32* %219, i32* %220, i32* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %509

224:                                              ; preds = %212
  %225 = load i32*, i32** %18, align 8
  %226 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @BN_mod_lshift1_quick(i32* %225, i32* %228, i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %509

234:                                              ; preds = %224
  %235 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_36__*, %struct.TYPE_36__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %237, i32 0, i32 0
  %239 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %238, align 8
  %240 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %241 = load i32*, i32** %17, align 8
  %242 = load i32*, i32** %17, align 8
  %243 = load i32*, i32** %18, align 8
  %244 = load i32*, i32** %11, align 8
  %245 = call i32 %239(%struct.TYPE_38__* %240, i32* %241, i32* %242, i32* %243, i32* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %509

247:                                              ; preds = %234
  %248 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_36__*, %struct.TYPE_36__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %250, i32 0, i32 0
  %252 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %251, align 8
  %253 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %254 = load i32*, i32** %19, align 8
  %255 = load i32*, i32** %15, align 8
  %256 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = load i32*, i32** %11, align 8
  %260 = call i32 %252(%struct.TYPE_38__* %253, i32* %254, i32* %255, i32* %258, i32* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %509

262:                                              ; preds = %247
  %263 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_36__*, %struct.TYPE_36__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %265, i32 0, i32 0
  %267 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %266, align 8
  %268 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %269 = load i32*, i32** %18, align 8
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = load i32*, i32** %11, align 8
  %277 = call i32 %267(%struct.TYPE_38__* %268, i32* %269, i32* %272, i32* %275, i32* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %509

279:                                              ; preds = %262
  %280 = load i32*, i32** %18, align 8
  %281 = load i32*, i32** %19, align 8
  %282 = load i32*, i32** %18, align 8
  %283 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @BN_mod_add_quick(i32* %280, i32* %281, i32* %282, i32 %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %509

288:                                              ; preds = %279
  %289 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_36__*, %struct.TYPE_36__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %291, i32 0, i32 0
  %293 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %292, align 8
  %294 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %295 = load i32*, i32** %19, align 8
  %296 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = load i32*, i32** %11, align 8
  %303 = call i32 %293(%struct.TYPE_38__* %294, i32* %295, i32* %298, i32* %301, i32* %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %509

305:                                              ; preds = %288
  %306 = load i32*, i32** %15, align 8
  %307 = load i32*, i32** %19, align 8
  %308 = load i32*, i32** %14, align 8
  %309 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @BN_mod_add_quick(i32* %306, i32* %307, i32* %308, i32 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %509

314:                                              ; preds = %305
  %315 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 0
  %319 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %318, align 8
  %320 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %321 = load i32*, i32** %18, align 8
  %322 = load i32*, i32** %18, align 8
  %323 = load i32*, i32** %15, align 8
  %324 = load i32*, i32** %11, align 8
  %325 = call i32 %319(%struct.TYPE_38__* %320, i32* %321, i32* %322, i32* %323, i32* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %509

327:                                              ; preds = %314
  %328 = load i32*, i32** %19, align 8
  %329 = load i32*, i32** %19, align 8
  %330 = load i32*, i32** %14, align 8
  %331 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @BN_mod_sub_quick(i32* %328, i32* %329, i32* %330, i32 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %509

336:                                              ; preds = %327
  %337 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %339, i32 0, i32 1
  %341 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*)** %340, align 8
  %342 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %343 = load i32*, i32** %19, align 8
  %344 = load i32*, i32** %19, align 8
  %345 = load i32*, i32** %11, align 8
  %346 = call i32 %341(%struct.TYPE_38__* %342, i32* %343, i32* %344, i32* %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %509

348:                                              ; preds = %336
  %349 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_36__*, %struct.TYPE_36__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %351, i32 0, i32 0
  %353 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %352, align 8
  %354 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %355 = load i32*, i32** %19, align 8
  %356 = load i32*, i32** %19, align 8
  %357 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %357, i32 0, i32 2
  %359 = load i32*, i32** %358, align 8
  %360 = load i32*, i32** %11, align 8
  %361 = call i32 %353(%struct.TYPE_38__* %354, i32* %355, i32* %356, i32* %359, i32* %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %509

363:                                              ; preds = %348
  %364 = load i32*, i32** %17, align 8
  %365 = load i32*, i32** %18, align 8
  %366 = load i32*, i32** %17, align 8
  %367 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @BN_mod_add_quick(i32* %364, i32* %365, i32* %366, i32 %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %509

372:                                              ; preds = %363
  %373 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_36__*, %struct.TYPE_36__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %375, i32 0, i32 0
  %377 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %376, align 8
  %378 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %379 = load i32*, i32** %17, align 8
  %380 = load i32*, i32** %17, align 8
  %381 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %382 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = load i32*, i32** %11, align 8
  %385 = call i32 %377(%struct.TYPE_38__* %378, i32* %379, i32* %380, i32* %383, i32* %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %509

387:                                              ; preds = %372
  %388 = load i32*, i32** %17, align 8
  %389 = load i32*, i32** %17, align 8
  %390 = load i32*, i32** %19, align 8
  %391 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 8
  %394 = call i32 @BN_mod_sub_quick(i32* %388, i32* %389, i32* %390, i32 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %509

396:                                              ; preds = %387
  %397 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %397, i32 0, i32 0
  %399 = load %struct.TYPE_36__*, %struct.TYPE_36__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %399, i32 0, i32 1
  %401 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*)** %400, align 8
  %402 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %403 = load i32*, i32** %18, align 8
  %404 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %405 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %404, i32 0, i32 1
  %406 = load i32*, i32** %405, align 8
  %407 = load i32*, i32** %11, align 8
  %408 = call i32 %401(%struct.TYPE_38__* %402, i32* %403, i32* %406, i32* %407)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %509

410:                                              ; preds = %396
  %411 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_36__*, %struct.TYPE_36__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %413, i32 0, i32 0
  %415 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %414, align 8
  %416 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %417 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %418 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %417, i32 0, i32 1
  %419 = load i32*, i32** %418, align 8
  %420 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %421 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %420, i32 0, i32 1
  %422 = load i32*, i32** %421, align 8
  %423 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %424 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %423, i32 0, i32 1
  %425 = load i32*, i32** %424, align 8
  %426 = load i32*, i32** %11, align 8
  %427 = call i32 %415(%struct.TYPE_38__* %416, i32* %419, i32* %422, i32* %425, i32* %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %509

429:                                              ; preds = %410
  %430 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %431 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %430, i32 0, i32 0
  %432 = load %struct.TYPE_36__*, %struct.TYPE_36__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %432, i32 0, i32 0
  %434 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %433, align 8
  %435 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %436 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %436, i32 0, i32 1
  %438 = load i32*, i32** %437, align 8
  %439 = load i32*, i32** %18, align 8
  %440 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %441 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %440, i32 0, i32 1
  %442 = load i32*, i32** %441, align 8
  %443 = load i32*, i32** %11, align 8
  %444 = call i32 %434(%struct.TYPE_38__* %435, i32* %438, i32* %439, i32* %442, i32* %443)
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %509

446:                                              ; preds = %429
  %447 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %447, i32 0, i32 0
  %449 = load %struct.TYPE_36__*, %struct.TYPE_36__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %449, i32 0, i32 0
  %451 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %450, align 8
  %452 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %453 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %453, i32 0, i32 1
  %455 = load i32*, i32** %454, align 8
  %456 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %456, i32 0, i32 1
  %458 = load i32*, i32** %457, align 8
  %459 = load i32*, i32** %13, align 8
  %460 = load i32*, i32** %11, align 8
  %461 = call i32 %451(%struct.TYPE_38__* %452, i32* %455, i32* %458, i32* %459, i32* %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %509

463:                                              ; preds = %446
  %464 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %464, i32 0, i32 0
  %466 = load %struct.TYPE_36__*, %struct.TYPE_36__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %466, i32 0, i32 0
  %468 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %467, align 8
  %469 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %470 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %471 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %470, i32 0, i32 2
  %472 = load i32*, i32** %471, align 8
  %473 = load i32*, i32** %16, align 8
  %474 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %475 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %474, i32 0, i32 1
  %476 = load i32*, i32** %475, align 8
  %477 = load i32*, i32** %11, align 8
  %478 = call i32 %468(%struct.TYPE_38__* %469, i32* %472, i32* %473, i32* %476, i32* %477)
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %509

480:                                              ; preds = %463
  %481 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %481, i32 0, i32 0
  %483 = load %struct.TYPE_36__*, %struct.TYPE_36__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %483, i32 0, i32 1
  %485 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*)** %484, align 8
  %486 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %487 = load i32*, i32** %16, align 8
  %488 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %489 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %488, i32 0, i32 1
  %490 = load i32*, i32** %489, align 8
  %491 = load i32*, i32** %11, align 8
  %492 = call i32 %485(%struct.TYPE_38__* %486, i32* %487, i32* %490, i32* %491)
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %509

494:                                              ; preds = %480
  %495 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %496 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %495, i32 0, i32 0
  %497 = load %struct.TYPE_36__*, %struct.TYPE_36__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %497, i32 0, i32 0
  %499 = load i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_38__*, i32*, i32*, i32*, i32*)** %498, align 8
  %500 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %501 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %502 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %501, i32 0, i32 0
  %503 = load i32*, i32** %502, align 8
  %504 = load i32*, i32** %17, align 8
  %505 = load i32*, i32** %16, align 8
  %506 = load i32*, i32** %11, align 8
  %507 = call i32 %499(%struct.TYPE_38__* %500, i32* %503, i32* %504, i32* %505, i32* %506)
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %510, label %509

509:                                              ; preds = %494, %480, %463, %446, %429, %410, %396, %387, %372, %363, %348, %336, %327, %314, %305, %288, %279, %262, %247, %234, %224, %212, %195, %182, %169, %152, %135, %125, %106
  br label %511

510:                                              ; preds = %494
  store i32 1, i32* %12, align 4
  br label %511

511:                                              ; preds = %510, %509
  %512 = load i32*, i32** %11, align 8
  %513 = call i32 @BN_CTX_end(i32* %512)
  %514 = load i32, i32* %12, align 4
  store i32 %514, i32* %6, align 4
  br label %515

515:                                              ; preds = %511, %105, %104, %25
  %516 = load i32, i32* %6, align 4
  ret i32 %516
}

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @EC_POINT_set_to_infinity(%struct.TYPE_38__*, %struct.TYPE_37__*) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @EC_POINT_invert(%struct.TYPE_38__*, %struct.TYPE_37__*, i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_mod_lshift1_quick(i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_add_quick(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_sub_quick(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
