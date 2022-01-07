; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_italian.c_r_prelude.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_italian.c_r_prelude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i8* }

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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %1, %111
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = load i32, i32* @a_0, align 4
  %32 = call i32 @find_among(%struct.SN_env* %30, i32 %31, i32 7)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %112

36:                                               ; preds = %21
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %4, align 4
  switch i32 %42, label %111 [
    i32 1, label %43
    i32 2, label %52
    i32 3, label %61
    i32 4, label %70
    i32 5, label %79
    i32 6, label %88
    i32 7, label %97
  ]

43:                                               ; preds = %36
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = load i32, i32* @s_0, align 4
  %46 = call i32 @slice_from_s(%struct.SN_env* %44, i32 1, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %261

51:                                               ; preds = %43
  br label %111

52:                                               ; preds = %36
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = load i32, i32* @s_1, align 4
  %55 = call i32 @slice_from_s(%struct.SN_env* %53, i32 1, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %261

60:                                               ; preds = %52
  br label %111

61:                                               ; preds = %36
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = load i32, i32* @s_2, align 4
  %64 = call i32 @slice_from_s(%struct.SN_env* %62, i32 1, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %2, align 4
  br label %261

69:                                               ; preds = %61
  br label %111

70:                                               ; preds = %36
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = load i32, i32* @s_3, align 4
  %73 = call i32 @slice_from_s(%struct.SN_env* %71, i32 1, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %2, align 4
  br label %261

78:                                               ; preds = %70
  br label %111

79:                                               ; preds = %36
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = load i32, i32* @s_4, align 4
  %82 = call i32 @slice_from_s(%struct.SN_env* %80, i32 1, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %2, align 4
  br label %261

87:                                               ; preds = %79
  br label %111

88:                                               ; preds = %36
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = load i32, i32* @s_5, align 4
  %91 = call i32 @slice_from_s(%struct.SN_env* %89, i32 2, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %2, align 4
  br label %261

96:                                               ; preds = %88
  br label %111

97:                                               ; preds = %36
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %112

106:                                              ; preds = %97
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %36, %106, %96, %87, %78, %69, %60, %51
  br label %21

112:                                              ; preds = %105, %35
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %119 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %255
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %120, %250
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %14, align 4
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = load i32, i32* @g_v, align 4
  %130 = call i64 @in_grouping(%struct.SN_env* %128, i32 %129, i32 97, i32 249, i32 0)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %238

133:                                              ; preds = %124
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %15, align 4
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %161, label %149

149:                                              ; preds = %133
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %152, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp ne i32 %159, 117
  br i1 %160, label %161, label %162

161:                                              ; preds = %149, %133
  br label %186

162:                                              ; preds = %149
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %173 = load i32, i32* @g_v, align 4
  %174 = call i64 @in_grouping(%struct.SN_env* %172, i32 %173, i32 97, i32 249, i32 0)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %162
  br label %186

177:                                              ; preds = %162
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = load i32, i32* @s_6, align 4
  %180 = call i32 @slice_from_s(%struct.SN_env* %178, i32 1, i32 %179)
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* %16, align 4
  store i32 %184, i32* %2, align 4
  br label %261

185:                                              ; preds = %177
  br label %234

186:                                              ; preds = %176, %161
  %187 = load i32, i32* %15, align 4
  %188 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %189 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %194 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %192, %195
  br i1 %196, label %209, label %197

197:                                              ; preds = %186
  %198 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %199 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %198, i32 0, i32 4
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %200, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = icmp ne i32 %207, 105
  br i1 %208, label %209, label %210

209:                                              ; preds = %197, %186
  br label %238

210:                                              ; preds = %197
  %211 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %212 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 8
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %219 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 8
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = load i32, i32* @g_v, align 4
  %222 = call i64 @in_grouping(%struct.SN_env* %220, i32 %221, i32 97, i32 249, i32 0)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %210
  br label %238

225:                                              ; preds = %210
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = load i32, i32* @s_7, align 4
  %228 = call i32 @slice_from_s(%struct.SN_env* %226, i32 1, i32 %227)
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = load i32, i32* %17, align 4
  store i32 %232, i32* %2, align 4
  br label %261

233:                                              ; preds = %225
  br label %234

234:                                              ; preds = %233, %185
  %235 = load i32, i32* %14, align 4
  %236 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %237 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  br label %255

238:                                              ; preds = %224, %209, %132
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %243 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %246 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = icmp sge i32 %244, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  br label %256

250:                                              ; preds = %238
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 8
  br label %124

255:                                              ; preds = %234
  br label %120

256:                                              ; preds = %249
  %257 = load i32, i32* %13, align 4
  %258 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %259 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %256
  store i32 1, i32* %2, align 4
  br label %261

261:                                              ; preds = %260, %231, %183, %94, %85, %76, %67, %58, %49
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i64 @in_grouping(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
