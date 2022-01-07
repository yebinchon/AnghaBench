; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_dutch.c_r_standard_suffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_dutch.c_r_standard_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32*, i64, i32* }

@a_3 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@g_v_j = common dso_local global i32 0, align 4
@s_12 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@a_4 = common dso_local global i32 0, align 4
@s_14 = common dso_local global i32 0, align 4
@g_v_I = common dso_local global i32 0, align 4
@a_5 = common dso_local global i32 0, align 4
@g_v = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_standard_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_standard_suffix(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %54, %57
  br i1 %58, label %87, label %59

59:                                               ; preds = %1
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 5
  %71 = icmp ne i32 %70, 3
  br i1 %71, label %87, label %72

72:                                               ; preds = %59
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 31
  %84 = ashr i32 540704, %83
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %72, %59, %1
  br label %161

88:                                               ; preds = %72
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = load i32, i32* @a_3, align 4
  %91 = call i32 @find_among_b(%struct.SN_env* %89, i32 %90, i32 5)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %161

95:                                               ; preds = %88
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* %4, align 4
  switch i32 %102, label %160 [
    i32 1, label %103
    i32 2, label %123
    i32 3, label %135
  ]

103:                                              ; preds = %95
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = call i32 @r_R1(%struct.SN_env* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %161

109:                                              ; preds = %103
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %766

114:                                              ; preds = %109
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = load i32, i32* @s_11, align 4
  %117 = call i32 @slice_from_s(%struct.SN_env* %115, i32 4, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %766

122:                                              ; preds = %114
  br label %160

123:                                              ; preds = %95
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = call i32 @r_en_ending(%struct.SN_env* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %161

129:                                              ; preds = %123
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %2, align 4
  br label %766

134:                                              ; preds = %129
  br label %160

135:                                              ; preds = %95
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = call i32 @r_R1(%struct.SN_env* %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %161

141:                                              ; preds = %135
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %2, align 4
  br label %766

146:                                              ; preds = %141
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = load i32, i32* @g_v_j, align 4
  %149 = call i64 @out_grouping_b(%struct.SN_env* %147, i32 %148, i32 97, i32 232, i32 0)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %161

152:                                              ; preds = %146
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = call i32 @slice_del(%struct.SN_env* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %2, align 4
  br label %766

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %95, %159, %134, %122
  br label %161

161:                                              ; preds = %160, %151, %140, %128, %108, %94, %87
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %170 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %173 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %171, %174
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %178 = call i32 @r_e_ending(%struct.SN_env* %177)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %161
  br label %188

182:                                              ; preds = %161
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %2, align 4
  br label %766

187:                                              ; preds = %182
  br label %188

188:                                              ; preds = %187, %181
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sub nsw i32 %191, %192
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 %198, %201
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %210 = load i32, i32* @s_12, align 4
  %211 = call i32 @eq_s_b(%struct.SN_env* %209, i32 4, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %188
  br label %308

214:                                              ; preds = %188
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %220 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %219, i32 0, i32 5
  store i64 %218, i64* %220, align 8
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = call i32 @r_R2(%struct.SN_env* %221)
  store i32 %222, i32* %14, align 4
  %223 = load i32, i32* %14, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %214
  br label %308

226:                                              ; preds = %214
  %227 = load i32, i32* %14, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = load i32, i32* %14, align 4
  store i32 %230, i32* %2, align 4
  br label %766

231:                                              ; preds = %226
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %236 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %234, %237
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %244 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = icmp sle i32 %242, %245
  br i1 %246, label %259, label %247

247:                                              ; preds = %231
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %250, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 99
  br i1 %258, label %259, label %260

259:                                              ; preds = %247, %231
  br label %265

260:                                              ; preds = %247
  %261 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %262 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %262, align 4
  br label %308

265:                                              ; preds = %259
  %266 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %267 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %15, align 4
  %270 = sub nsw i32 %268, %269
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = call i32 @slice_del(%struct.SN_env* %273)
  store i32 %274, i32* %16, align 4
  %275 = load i32, i32* %16, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %265
  %278 = load i32, i32* %16, align 4
  store i32 %278, i32* %2, align 4
  br label %766

279:                                              ; preds = %265
  %280 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %281 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 8
  %285 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %286 = load i32, i32* @s_13, align 4
  %287 = call i32 @eq_s_b(%struct.SN_env* %285, i32 2, i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %279
  br label %308

290:                                              ; preds = %279
  %291 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %292 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %295, i32 0, i32 5
  store i64 %294, i64* %296, align 8
  %297 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %298 = call i32 @r_en_ending(%struct.SN_env* %297)
  store i32 %298, i32* %17, align 4
  %299 = load i32, i32* %17, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %290
  br label %308

302:                                              ; preds = %290
  %303 = load i32, i32* %17, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  %306 = load i32, i32* %17, align 4
  store i32 %306, i32* %2, align 4
  br label %766

307:                                              ; preds = %302
  br label %308

308:                                              ; preds = %307, %301, %289, %260, %225, %213
  %309 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %310 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* %13, align 4
  %313 = sub nsw i32 %311, %312
  %314 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %315 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 4
  %316 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %317 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %320 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = sub nsw i32 %318, %321
  store i32 %322, i32* %18, align 4
  %323 = load i32, i32* %18, align 4
  %324 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %325 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %328 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %327, i32 0, i32 2
  store i32 %326, i32* %328, align 8
  %329 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %330 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = sub nsw i32 %331, 1
  %333 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %334 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = icmp sle i32 %332, %335
  br i1 %336, label %365, label %337

337:                                              ; preds = %308
  %338 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %339 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %338, i32 0, i32 4
  %340 = load i32*, i32** %339, align 8
  %341 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %342 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = sub nsw i32 %343, 1
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %340, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = ashr i32 %347, 5
  %349 = icmp ne i32 %348, 3
  br i1 %349, label %365, label %350

350:                                              ; preds = %337
  %351 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %352 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %351, i32 0, i32 4
  %353 = load i32*, i32** %352, align 8
  %354 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %355 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %353, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = and i32 %360, 31
  %362 = ashr i32 264336, %361
  %363 = and i32 %362, 1
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %350, %337, %308
  br label %641

366:                                              ; preds = %350
  %367 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %368 = load i32, i32* @a_4, align 4
  %369 = call i32 @find_among_b(%struct.SN_env* %367, i32 %368, i32 6)
  store i32 %369, i32* %4, align 4
  %370 = load i32, i32* %4, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %373, label %372

372:                                              ; preds = %366
  br label %641

373:                                              ; preds = %366
  %374 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %375 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  %378 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %379 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %378, i32 0, i32 5
  store i64 %377, i64* %379, align 8
  %380 = load i32, i32* %4, align 4
  switch i32 %380, label %640 [
    i32 1, label %381
    i32 2, label %504
    i32 3, label %564
    i32 4, label %594
    i32 5, label %613
  ]

381:                                              ; preds = %373
  %382 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %383 = call i32 @r_R2(%struct.SN_env* %382)
  store i32 %383, i32* %19, align 4
  %384 = load i32, i32* %19, align 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %381
  br label %641

387:                                              ; preds = %381
  %388 = load i32, i32* %19, align 4
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %387
  %391 = load i32, i32* %19, align 4
  store i32 %391, i32* %2, align 4
  br label %766

392:                                              ; preds = %387
  %393 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %394 = call i32 @slice_del(%struct.SN_env* %393)
  store i32 %394, i32* %20, align 4
  %395 = load i32, i32* %20, align 4
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %392
  %398 = load i32, i32* %20, align 4
  store i32 %398, i32* %2, align 4
  br label %766

399:                                              ; preds = %392
  %400 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %401 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %404 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = sub nsw i32 %402, %405
  store i32 %406, i32* %21, align 4
  %407 = load i32, i32* %21, align 4
  %408 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %409 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %412 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %411, i32 0, i32 2
  store i32 %410, i32* %412, align 8
  %413 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %414 = load i32, i32* @s_14, align 4
  %415 = call i32 @eq_s_b(%struct.SN_env* %413, i32 2, i32 %414)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %399
  br label %484

418:                                              ; preds = %399
  %419 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %420 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  %423 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %424 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %423, i32 0, i32 5
  store i64 %422, i64* %424, align 8
  %425 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %426 = call i32 @r_R2(%struct.SN_env* %425)
  store i32 %426, i32* %22, align 4
  %427 = load i32, i32* %22, align 4
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %418
  br label %484

430:                                              ; preds = %418
  %431 = load i32, i32* %22, align 4
  %432 = icmp slt i32 %431, 0
  br i1 %432, label %433, label %435

433:                                              ; preds = %430
  %434 = load i32, i32* %22, align 4
  store i32 %434, i32* %2, align 4
  br label %766

435:                                              ; preds = %430
  %436 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %437 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %440 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = sub nsw i32 %438, %441
  store i32 %442, i32* %23, align 4
  %443 = load i32, i32* %23, align 4
  %444 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %445 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %448 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %447, i32 0, i32 3
  %449 = load i32, i32* %448, align 4
  %450 = icmp sle i32 %446, %449
  br i1 %450, label %463, label %451

451:                                              ; preds = %435
  %452 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %453 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %452, i32 0, i32 4
  %454 = load i32*, i32** %453, align 8
  %455 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %456 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = sub nsw i32 %457, 1
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %454, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = icmp ne i32 %461, 101
  br i1 %462, label %463, label %464

463:                                              ; preds = %451, %435
  br label %469

464:                                              ; preds = %451
  %465 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %466 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 4
  %468 = add nsw i32 %467, -1
  store i32 %468, i32* %466, align 4
  br label %484

469:                                              ; preds = %463
  %470 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %471 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* %23, align 4
  %474 = sub nsw i32 %472, %473
  %475 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %476 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %475, i32 0, i32 1
  store i32 %474, i32* %476, align 4
  %477 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %478 = call i32 @slice_del(%struct.SN_env* %477)
  store i32 %478, i32* %24, align 4
  %479 = load i32, i32* %24, align 4
  %480 = icmp slt i32 %479, 0
  br i1 %480, label %481, label %483

481:                                              ; preds = %469
  %482 = load i32, i32* %24, align 4
  store i32 %482, i32* %2, align 4
  br label %766

483:                                              ; preds = %469
  br label %503

484:                                              ; preds = %464, %429, %417
  %485 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %486 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* %21, align 4
  %489 = sub nsw i32 %487, %488
  %490 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %491 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %490, i32 0, i32 1
  store i32 %489, i32* %491, align 4
  %492 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %493 = call i32 @r_undouble(%struct.SN_env* %492)
  store i32 %493, i32* %25, align 4
  %494 = load i32, i32* %25, align 4
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %497

496:                                              ; preds = %484
  br label %641

497:                                              ; preds = %484
  %498 = load i32, i32* %25, align 4
  %499 = icmp slt i32 %498, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %497
  %501 = load i32, i32* %25, align 4
  store i32 %501, i32* %2, align 4
  br label %766

502:                                              ; preds = %497
  br label %503

503:                                              ; preds = %502, %483
  br label %640

504:                                              ; preds = %373
  %505 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %506 = call i32 @r_R2(%struct.SN_env* %505)
  store i32 %506, i32* %26, align 4
  %507 = load i32, i32* %26, align 4
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %510

509:                                              ; preds = %504
  br label %641

510:                                              ; preds = %504
  %511 = load i32, i32* %26, align 4
  %512 = icmp slt i32 %511, 0
  br i1 %512, label %513, label %515

513:                                              ; preds = %510
  %514 = load i32, i32* %26, align 4
  store i32 %514, i32* %2, align 4
  br label %766

515:                                              ; preds = %510
  %516 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %517 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %520 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = sub nsw i32 %518, %521
  store i32 %522, i32* %27, align 4
  %523 = load i32, i32* %27, align 4
  %524 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %525 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %528 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %527, i32 0, i32 3
  %529 = load i32, i32* %528, align 4
  %530 = icmp sle i32 %526, %529
  br i1 %530, label %543, label %531

531:                                              ; preds = %515
  %532 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %533 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %532, i32 0, i32 4
  %534 = load i32*, i32** %533, align 8
  %535 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %536 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = sub nsw i32 %537, 1
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %534, i64 %539
  %541 = load i32, i32* %540, align 4
  %542 = icmp ne i32 %541, 101
  br i1 %542, label %543, label %544

543:                                              ; preds = %531, %515
  br label %549

544:                                              ; preds = %531
  %545 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %546 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 4
  %548 = add nsw i32 %547, -1
  store i32 %548, i32* %546, align 4
  br label %641

549:                                              ; preds = %543
  %550 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %551 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = load i32, i32* %27, align 4
  %554 = sub nsw i32 %552, %553
  %555 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %556 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %555, i32 0, i32 1
  store i32 %554, i32* %556, align 4
  %557 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %558 = call i32 @slice_del(%struct.SN_env* %557)
  store i32 %558, i32* %28, align 4
  %559 = load i32, i32* %28, align 4
  %560 = icmp slt i32 %559, 0
  br i1 %560, label %561, label %563

561:                                              ; preds = %549
  %562 = load i32, i32* %28, align 4
  store i32 %562, i32* %2, align 4
  br label %766

563:                                              ; preds = %549
  br label %640

564:                                              ; preds = %373
  %565 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %566 = call i32 @r_R2(%struct.SN_env* %565)
  store i32 %566, i32* %29, align 4
  %567 = load i32, i32* %29, align 4
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %570

569:                                              ; preds = %564
  br label %641

570:                                              ; preds = %564
  %571 = load i32, i32* %29, align 4
  %572 = icmp slt i32 %571, 0
  br i1 %572, label %573, label %575

573:                                              ; preds = %570
  %574 = load i32, i32* %29, align 4
  store i32 %574, i32* %2, align 4
  br label %766

575:                                              ; preds = %570
  %576 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %577 = call i32 @slice_del(%struct.SN_env* %576)
  store i32 %577, i32* %30, align 4
  %578 = load i32, i32* %30, align 4
  %579 = icmp slt i32 %578, 0
  br i1 %579, label %580, label %582

580:                                              ; preds = %575
  %581 = load i32, i32* %30, align 4
  store i32 %581, i32* %2, align 4
  br label %766

582:                                              ; preds = %575
  %583 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %584 = call i32 @r_e_ending(%struct.SN_env* %583)
  store i32 %584, i32* %31, align 4
  %585 = load i32, i32* %31, align 4
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %588

587:                                              ; preds = %582
  br label %641

588:                                              ; preds = %582
  %589 = load i32, i32* %31, align 4
  %590 = icmp slt i32 %589, 0
  br i1 %590, label %591, label %593

591:                                              ; preds = %588
  %592 = load i32, i32* %31, align 4
  store i32 %592, i32* %2, align 4
  br label %766

593:                                              ; preds = %588
  br label %640

594:                                              ; preds = %373
  %595 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %596 = call i32 @r_R2(%struct.SN_env* %595)
  store i32 %596, i32* %32, align 4
  %597 = load i32, i32* %32, align 4
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %600

599:                                              ; preds = %594
  br label %641

600:                                              ; preds = %594
  %601 = load i32, i32* %32, align 4
  %602 = icmp slt i32 %601, 0
  br i1 %602, label %603, label %605

603:                                              ; preds = %600
  %604 = load i32, i32* %32, align 4
  store i32 %604, i32* %2, align 4
  br label %766

605:                                              ; preds = %600
  %606 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %607 = call i32 @slice_del(%struct.SN_env* %606)
  store i32 %607, i32* %33, align 4
  %608 = load i32, i32* %33, align 4
  %609 = icmp slt i32 %608, 0
  br i1 %609, label %610, label %612

610:                                              ; preds = %605
  %611 = load i32, i32* %33, align 4
  store i32 %611, i32* %2, align 4
  br label %766

612:                                              ; preds = %605
  br label %640

613:                                              ; preds = %373
  %614 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %615 = call i32 @r_R2(%struct.SN_env* %614)
  store i32 %615, i32* %34, align 4
  %616 = load i32, i32* %34, align 4
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %613
  br label %641

619:                                              ; preds = %613
  %620 = load i32, i32* %34, align 4
  %621 = icmp slt i32 %620, 0
  br i1 %621, label %622, label %624

622:                                              ; preds = %619
  %623 = load i32, i32* %34, align 4
  store i32 %623, i32* %2, align 4
  br label %766

624:                                              ; preds = %619
  %625 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %626 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %625, i32 0, i32 6
  %627 = load i32*, i32** %626, align 8
  %628 = getelementptr inbounds i32, i32* %627, i64 0
  %629 = load i32, i32* %628, align 4
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %632, label %631

631:                                              ; preds = %624
  br label %641

632:                                              ; preds = %624
  %633 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %634 = call i32 @slice_del(%struct.SN_env* %633)
  store i32 %634, i32* %35, align 4
  %635 = load i32, i32* %35, align 4
  %636 = icmp slt i32 %635, 0
  br i1 %636, label %637, label %639

637:                                              ; preds = %632
  %638 = load i32, i32* %35, align 4
  store i32 %638, i32* %2, align 4
  br label %766

639:                                              ; preds = %632
  br label %640

640:                                              ; preds = %373, %639, %612, %593, %563, %503
  br label %641

641:                                              ; preds = %640, %631, %618, %599, %587, %569, %544, %509, %496, %386, %372, %365
  %642 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %643 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  %645 = load i32, i32* %18, align 4
  %646 = sub nsw i32 %644, %645
  %647 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %648 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %647, i32 0, i32 1
  store i32 %646, i32* %648, align 4
  %649 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %650 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 8
  %652 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %653 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 4
  %655 = sub nsw i32 %651, %654
  store i32 %655, i32* %36, align 4
  %656 = load i32, i32* %36, align 4
  %657 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %658 = load i32, i32* @g_v_I, align 4
  %659 = call i64 @out_grouping_b(%struct.SN_env* %657, i32 %658, i32 73, i32 232, i32 0)
  %660 = icmp ne i64 %659, 0
  br i1 %660, label %661, label %662

661:                                              ; preds = %641
  br label %758

662:                                              ; preds = %641
  %663 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %664 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 8
  %666 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %667 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %666, i32 0, i32 1
  %668 = load i32, i32* %667, align 4
  %669 = sub nsw i32 %665, %668
  store i32 %669, i32* %37, align 4
  %670 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %671 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %670, i32 0, i32 1
  %672 = load i32, i32* %671, align 4
  %673 = sub nsw i32 %672, 1
  %674 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %675 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %674, i32 0, i32 3
  %676 = load i32, i32* %675, align 4
  %677 = icmp sle i32 %673, %676
  br i1 %677, label %706, label %678

678:                                              ; preds = %662
  %679 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %680 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %679, i32 0, i32 4
  %681 = load i32*, i32** %680, align 8
  %682 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %683 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %682, i32 0, i32 1
  %684 = load i32, i32* %683, align 4
  %685 = sub nsw i32 %684, 1
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i32, i32* %681, i64 %686
  %688 = load i32, i32* %687, align 4
  %689 = ashr i32 %688, 5
  %690 = icmp ne i32 %689, 3
  br i1 %690, label %706, label %691

691:                                              ; preds = %678
  %692 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %693 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %692, i32 0, i32 4
  %694 = load i32*, i32** %693, align 8
  %695 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %696 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %695, i32 0, i32 1
  %697 = load i32, i32* %696, align 4
  %698 = sub nsw i32 %697, 1
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i32, i32* %694, i64 %699
  %701 = load i32, i32* %700, align 4
  %702 = and i32 %701, 31
  %703 = ashr i32 2129954, %702
  %704 = and i32 %703, 1
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %707, label %706

706:                                              ; preds = %691, %678, %662
  br label %758

707:                                              ; preds = %691
  %708 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %709 = load i32, i32* @a_5, align 4
  %710 = call i32 @find_among_b(%struct.SN_env* %708, i32 %709, i32 4)
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %713, label %712

712:                                              ; preds = %707
  br label %758

713:                                              ; preds = %707
  %714 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %715 = load i32, i32* @g_v, align 4
  %716 = call i64 @out_grouping_b(%struct.SN_env* %714, i32 %715, i32 97, i32 232, i32 0)
  %717 = icmp ne i64 %716, 0
  br i1 %717, label %718, label %719

718:                                              ; preds = %713
  br label %758

719:                                              ; preds = %713
  %720 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %721 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 8
  %723 = load i32, i32* %37, align 4
  %724 = sub nsw i32 %722, %723
  %725 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %726 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %725, i32 0, i32 1
  store i32 %724, i32* %726, align 4
  %727 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %728 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %727, i32 0, i32 1
  %729 = load i32, i32* %728, align 4
  %730 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %731 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %730, i32 0, i32 2
  store i32 %729, i32* %731, align 8
  %732 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %733 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %732, i32 0, i32 1
  %734 = load i32, i32* %733, align 4
  %735 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %736 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %735, i32 0, i32 3
  %737 = load i32, i32* %736, align 4
  %738 = icmp sle i32 %734, %737
  br i1 %738, label %739, label %740

739:                                              ; preds = %719
  br label %758

740:                                              ; preds = %719
  %741 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %742 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %741, i32 0, i32 1
  %743 = load i32, i32* %742, align 4
  %744 = add nsw i32 %743, -1
  store i32 %744, i32* %742, align 4
  %745 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %746 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %745, i32 0, i32 1
  %747 = load i32, i32* %746, align 4
  %748 = sext i32 %747 to i64
  %749 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %750 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %749, i32 0, i32 5
  store i64 %748, i64* %750, align 8
  %751 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %752 = call i32 @slice_del(%struct.SN_env* %751)
  store i32 %752, i32* %38, align 4
  %753 = load i32, i32* %38, align 4
  %754 = icmp slt i32 %753, 0
  br i1 %754, label %755, label %757

755:                                              ; preds = %740
  %756 = load i32, i32* %38, align 4
  store i32 %756, i32* %2, align 4
  br label %766

757:                                              ; preds = %740
  br label %758

758:                                              ; preds = %757, %739, %718, %712, %706, %661
  %759 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %760 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %759, i32 0, i32 0
  %761 = load i32, i32* %760, align 8
  %762 = load i32, i32* %36, align 4
  %763 = sub nsw i32 %761, %762
  %764 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %765 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %764, i32 0, i32 1
  store i32 %763, i32* %765, align 4
  store i32 1, i32* %2, align 4
  br label %766

766:                                              ; preds = %758, %755, %637, %622, %610, %603, %591, %580, %573, %561, %513, %500, %481, %433, %397, %390, %305, %277, %229, %185, %157, %144, %132, %120, %112
  %767 = load i32, i32* %2, align 4
  ret i32 %767
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_en_ending(%struct.SN_env*) #1

declare dso_local i64 @out_grouping_b(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_e_ending(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R2(%struct.SN_env*) #1

declare dso_local i32 @r_undouble(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
