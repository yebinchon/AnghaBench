; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_italian.c_r_prelude.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_italian.c_r_prelude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i8*, i32 }

@a_0 = common dso_local global i32 0, align 4
@s_0 = common dso_local global i32 0, align 4
@s_1 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
@s_5 = common dso_local global i32 0, align 4
@g_v = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_prelude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_prelude(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %1, %117
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = load i32, i32* @a_0, align 4
  %34 = call i32 @find_among(%struct.SN_env* %32, i32 %33, i32 7)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %23
  br label %118

38:                                               ; preds = %23
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %4, align 4
  switch i32 %44, label %117 [
    i32 1, label %45
    i32 2, label %54
    i32 3, label %63
    i32 4, label %72
    i32 5, label %81
    i32 6, label %90
    i32 7, label %99
  ]

45:                                               ; preds = %38
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = load i32, i32* @s_0, align 4
  %48 = call i32 @slice_from_s(%struct.SN_env* %46, i32 2, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %271

53:                                               ; preds = %45
  br label %117

54:                                               ; preds = %38
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = load i32, i32* @s_1, align 4
  %57 = call i32 @slice_from_s(%struct.SN_env* %55, i32 2, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %271

62:                                               ; preds = %54
  br label %117

63:                                               ; preds = %38
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = load i32, i32* @s_2, align 4
  %66 = call i32 @slice_from_s(%struct.SN_env* %64, i32 2, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %2, align 4
  br label %271

71:                                               ; preds = %63
  br label %117

72:                                               ; preds = %38
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = load i32, i32* @s_3, align 4
  %75 = call i32 @slice_from_s(%struct.SN_env* %73, i32 2, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %2, align 4
  br label %271

80:                                               ; preds = %72
  br label %117

81:                                               ; preds = %38
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = load i32, i32* @s_4, align 4
  %84 = call i32 @slice_from_s(%struct.SN_env* %82, i32 2, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %2, align 4
  br label %271

89:                                               ; preds = %81
  br label %117

90:                                               ; preds = %38
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = load i32, i32* @s_5, align 4
  %93 = call i32 @slice_from_s(%struct.SN_env* %91, i32 2, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %2, align 4
  br label %271

98:                                               ; preds = %90
  br label %117

99:                                               ; preds = %38
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @skip_utf8(i8* %102, i32 %105, i32 0, i32 %108, i32 1)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %118

113:                                              ; preds = %99
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %38, %113, %98, %89, %80, %71, %62, %53
  br label %23

118:                                              ; preds = %112, %37
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %265
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %126, %261
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %15, align 4
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = load i32, i32* @g_v, align 4
  %136 = call i64 @in_grouping_U(%struct.SN_env* %134, i32 %135, i32 97, i32 249, i32 0)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %244

139:                                              ; preds = %130
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %16, align 4
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %152 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %150, %153
  br i1 %154, label %167, label %155

155:                                              ; preds = %139
  %156 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %157 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %156, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %158, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp ne i32 %165, 117
  br i1 %166, label %167, label %168

167:                                              ; preds = %155, %139
  br label %192

168:                                              ; preds = %155
  %169 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %170 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 8
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = load i32, i32* @g_v, align 4
  %180 = call i64 @in_grouping_U(%struct.SN_env* %178, i32 %179, i32 97, i32 249, i32 0)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %168
  br label %192

183:                                              ; preds = %168
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = load i32, i32* @s_6, align 4
  %186 = call i32 @slice_from_s(%struct.SN_env* %184, i32 1, i32 %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = load i32, i32* %17, align 4
  store i32 %190, i32* %2, align 4
  br label %271

191:                                              ; preds = %183
  br label %240

192:                                              ; preds = %182, %167
  %193 = load i32, i32* %16, align 4
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %198, %201
  br i1 %202, label %215, label %203

203:                                              ; preds = %192
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 3
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %206, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = icmp ne i32 %213, 105
  br i1 %214, label %215, label %216

215:                                              ; preds = %203, %192
  br label %244

216:                                              ; preds = %203
  %217 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %218 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = load i32, i32* @g_v, align 4
  %228 = call i64 @in_grouping_U(%struct.SN_env* %226, i32 %227, i32 97, i32 249, i32 0)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %216
  br label %244

231:                                              ; preds = %216
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = load i32, i32* @s_7, align 4
  %234 = call i32 @slice_from_s(%struct.SN_env* %232, i32 1, i32 %233)
  store i32 %234, i32* %18, align 4
  %235 = load i32, i32* %18, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = load i32, i32* %18, align 4
  store i32 %238, i32* %2, align 4
  br label %271

239:                                              ; preds = %231
  br label %240

240:                                              ; preds = %239, %191
  %241 = load i32, i32* %15, align 4
  %242 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %243 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  br label %265

244:                                              ; preds = %230, %215, %138
  %245 = load i32, i32* %15, align 4
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %248, i32 0, i32 3
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %255 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @skip_utf8(i8* %250, i32 %253, i32 0, i32 %256, i32 1)
  store i32 %257, i32* %19, align 4
  %258 = load i32, i32* %19, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %244
  br label %266

261:                                              ; preds = %244
  %262 = load i32, i32* %19, align 4
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  br label %130

265:                                              ; preds = %240
  br label %126

266:                                              ; preds = %260
  %267 = load i32, i32* %14, align 4
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  br label %270

270:                                              ; preds = %266
  store i32 1, i32* %2, align 4
  br label %271

271:                                              ; preds = %270, %237, %189, %96, %87, %78, %69, %60, %51
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @skip_utf8(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @in_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
