; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_tamil.c_r_remove_common_word_endings.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_tamil.c_r_remove_common_word_endings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32, i32, i32, i32 }

@s_56 = common dso_local global i32 0, align 4
@s_57 = common dso_local global i32 0, align 4
@s_58 = common dso_local global i32 0, align 4
@s_59 = common dso_local global i32 0, align 4
@s_60 = common dso_local global i32 0, align 4
@s_61 = common dso_local global i32 0, align 4
@s_62 = common dso_local global i32 0, align 4
@s_63 = common dso_local global i32 0, align 4
@s_64 = common dso_local global i32 0, align 4
@s_65 = common dso_local global i32 0, align 4
@s_66 = common dso_local global i32 0, align 4
@s_67 = common dso_local global i32 0, align 4
@a_16 = common dso_local global i32 0, align 4
@s_68 = common dso_local global i32 0, align 4
@s_69 = common dso_local global i32 0, align 4
@s_70 = common dso_local global i32 0, align 4
@a_17 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_remove_common_word_endings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_remove_common_word_endings(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %14 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %15 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = call i32 @r_has_min_length(%struct.SN_env* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %379

24:                                               ; preds = %1
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %6, align 4
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = load i32, i32* @s_56, align 4
  %65 = call i32 @eq_s_b(%struct.SN_env* %63, i32 12, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %24
  br label %69

68:                                               ; preds = %24
  br label %287

69:                                               ; preds = %67
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = load i32, i32* @s_57, align 4
  %79 = call i32 @eq_s_b(%struct.SN_env* %77, i32 15, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %69
  br label %83

82:                                               ; preds = %69
  br label %287

83:                                               ; preds = %81
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = load i32, i32* @s_58, align 4
  %93 = call i32 @eq_s_b(%struct.SN_env* %91, i32 12, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %83
  br label %97

96:                                               ; preds = %83
  br label %287

97:                                               ; preds = %95
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = load i32, i32* @s_59, align 4
  %107 = call i32 @eq_s_b(%struct.SN_env* %105, i32 15, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %97
  br label %111

110:                                              ; preds = %97
  br label %287

111:                                              ; preds = %109
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = load i32, i32* @s_60, align 4
  %121 = call i32 @eq_s_b(%struct.SN_env* %119, i32 9, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %111
  br label %125

124:                                              ; preds = %111
  br label %287

125:                                              ; preds = %123
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = load i32, i32* @s_61, align 4
  %135 = call i32 @eq_s_b(%struct.SN_env* %133, i32 12, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %125
  br label %139

138:                                              ; preds = %125
  br label %287

139:                                              ; preds = %137
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = load i32, i32* @s_62, align 4
  %149 = call i32 @eq_s_b(%struct.SN_env* %147, i32 15, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %139
  br label %153

152:                                              ; preds = %139
  br label %287

153:                                              ; preds = %151
  %154 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %155 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = load i32, i32* @s_63, align 4
  %163 = call i32 @eq_s_b(%struct.SN_env* %161, i32 12, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %153
  br label %167

166:                                              ; preds = %153
  br label %287

167:                                              ; preds = %165
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sub nsw i32 %170, %171
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = load i32, i32* @s_64, align 4
  %177 = call i32 @eq_s_b(%struct.SN_env* %175, i32 12, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %167
  br label %181

180:                                              ; preds = %167
  br label %287

181:                                              ; preds = %179
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = load i32, i32* @s_65, align 4
  %191 = call i32 @eq_s_b(%struct.SN_env* %189, i32 9, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %181
  br label %195

194:                                              ; preds = %181
  br label %287

195:                                              ; preds = %193
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sub nsw i32 %198, %199
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 4
  %203 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %204 = load i32, i32* @s_66, align 4
  %205 = call i32 @eq_s_b(%struct.SN_env* %203, i32 15, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %195
  br label %209

208:                                              ; preds = %195
  br label %287

209:                                              ; preds = %207
  %210 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %211 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sub nsw i32 %212, %213
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 4
  %217 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %218 = load i32, i32* @s_67, align 4
  %219 = call i32 @eq_s_b(%struct.SN_env* %217, i32 9, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %209
  br label %259

222:                                              ; preds = %209
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %225, %228
  store i32 %229, i32* %8, align 4
  %230 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %231 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %234 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %232, %235
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %239 = load i32, i32* @a_16, align 4
  %240 = call i32 @find_among_b(%struct.SN_env* %238, i32 %239, i32 8)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %222
  br label %244

243:                                              ; preds = %222
  br label %259

244:                                              ; preds = %242
  %245 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %246 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sub nsw i32 %247, %248
  %250 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %251 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 4
  %252 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %253 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sub nsw i32 %254, %255
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 4
  br label %287

259:                                              ; preds = %243, %221
  %260 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %261 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sub nsw i32 %262, %263
  %265 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %266 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 4
  %267 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %268 = load i32, i32* @s_68, align 4
  %269 = call i32 @eq_s_b(%struct.SN_env* %267, i32 6, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %259
  br label %273

272:                                              ; preds = %259
  br label %287

273:                                              ; preds = %271
  %274 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %275 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %7, align 4
  %278 = sub nsw i32 %276, %277
  %279 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %280 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 4
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = load i32, i32* @s_69, align 4
  %283 = call i32 @eq_s_b(%struct.SN_env* %281, i32 9, i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %273
  br label %312

286:                                              ; preds = %273
  br label %287

287:                                              ; preds = %286, %272, %244, %208, %194, %180, %166, %152, %138, %124, %110, %96, %82, %68
  %288 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %289 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %292 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %291, i32 0, i32 5
  store i32 %290, i32* %292, align 8
  %293 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %294 = load i32, i32* @s_70, align 4
  %295 = call i32 @slice_from_s(%struct.SN_env* %293, i32 3, i32 %294)
  store i32 %295, i32* %10, align 4
  %296 = load i32, i32* %10, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %287
  %299 = load i32, i32* %10, align 4
  store i32 %299, i32* %2, align 4
  br label %379

300:                                              ; preds = %287
  %301 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %302 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  store i32 1, i32* %304, align 4
  %305 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %306 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %6, align 4
  %309 = sub nsw i32 %307, %308
  %310 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %311 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %310, i32 0, i32 2
  store i32 %309, i32* %311, align 4
  br label %361

312:                                              ; preds = %285
  %313 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %314 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* %5, align 4
  %317 = sub nsw i32 %315, %316
  %318 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %319 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %318, i32 0, i32 2
  store i32 %317, i32* %319, align 4
  %320 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %321 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %324 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = sub nsw i32 %322, %325
  store i32 %326, i32* %11, align 4
  %327 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %328 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %331 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %330, i32 0, i32 4
  store i32 %329, i32* %331, align 4
  %332 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %333 = load i32, i32* @a_17, align 4
  %334 = call i32 @find_among_b(%struct.SN_env* %332, i32 %333, i32 13)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %312
  store i32 0, i32* %2, align 4
  br label %379

337:                                              ; preds = %312
  %338 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %339 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %342 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %341, i32 0, i32 5
  store i32 %340, i32* %342, align 8
  %343 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %344 = call i32 @slice_del(%struct.SN_env* %343)
  store i32 %344, i32* %12, align 4
  %345 = load i32, i32* %12, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %337
  %348 = load i32, i32* %12, align 4
  store i32 %348, i32* %2, align 4
  br label %379

349:                                              ; preds = %337
  %350 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %351 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 0
  store i32 1, i32* %353, align 4
  %354 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %355 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* %11, align 4
  %358 = sub nsw i32 %356, %357
  %359 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %360 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %359, i32 0, i32 2
  store i32 %358, i32* %360, align 4
  br label %361

361:                                              ; preds = %349, %300
  %362 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %363 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %366 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %365, i32 0, i32 2
  store i32 %364, i32* %366, align 4
  %367 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %368 = call i32 @r_fix_endings(%struct.SN_env* %367)
  store i32 %368, i32* %13, align 4
  %369 = load i32, i32* %13, align 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %361
  br label %378

372:                                              ; preds = %361
  %373 = load i32, i32* %13, align 4
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %372
  %376 = load i32, i32* %13, align 4
  store i32 %376, i32* %2, align 4
  br label %379

377:                                              ; preds = %372
  br label %378

378:                                              ; preds = %377, %371
  store i32 1, i32* %2, align 4
  br label %379

379:                                              ; preds = %378, %375, %347, %336, %298, %22
  %380 = load i32, i32* %2, align 4
  ret i32 %380
}

declare dso_local i32 @r_has_min_length(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_fix_endings(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
