; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_r_Step_2.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_r_Step_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_5 = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@s_12 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@s_14 = common dso_local global i32 0, align 4
@s_15 = common dso_local global i32 0, align 4
@s_16 = common dso_local global i32 0, align 4
@s_17 = common dso_local global i32 0, align 4
@s_18 = common dso_local global i32 0, align 4
@s_19 = common dso_local global i32 0, align 4
@s_20 = common dso_local global i32 0, align 4
@s_21 = common dso_local global i32 0, align 4
@s_22 = common dso_local global i32 0, align 4
@g_valid_LI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Step_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Step_2(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %62, label %34

34:                                               ; preds = %1
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 5
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %62, label %47

47:                                               ; preds = %34
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 31
  %59 = ashr i32 815616, %58
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %47, %34, %1
  store i32 0, i32* %2, align 4
  br label %250

63:                                               ; preds = %47
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = load i32, i32* @a_5, align 4
  %66 = call i32 @find_among_b(%struct.SN_env* %64, i32 %65, i32 24)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %250

70:                                               ; preds = %63
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = call i32 @r_R1(%struct.SN_env* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %250

82:                                               ; preds = %70
  %83 = load i32, i32* %4, align 4
  switch i32 %83, label %249 [
    i32 1, label %84
    i32 2, label %93
    i32 3, label %102
    i32 4, label %111
    i32 5, label %120
    i32 6, label %129
    i32 7, label %138
    i32 8, label %147
    i32 9, label %156
    i32 10, label %165
    i32 11, label %174
    i32 12, label %183
    i32 13, label %192
    i32 14, label %226
    i32 15, label %235
  ]

84:                                               ; preds = %82
  %85 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %86 = load i32, i32* @s_9, align 4
  %87 = call i32 @slice_from_s(%struct.SN_env* %85, i32 4, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %250

92:                                               ; preds = %84
  br label %249

93:                                               ; preds = %82
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = load i32, i32* @s_10, align 4
  %96 = call i32 @slice_from_s(%struct.SN_env* %94, i32 4, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %250

101:                                              ; preds = %93
  br label %249

102:                                              ; preds = %82
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = load i32, i32* @s_11, align 4
  %105 = call i32 @slice_from_s(%struct.SN_env* %103, i32 4, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %2, align 4
  br label %250

110:                                              ; preds = %102
  br label %249

111:                                              ; preds = %82
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = load i32, i32* @s_12, align 4
  %114 = call i32 @slice_from_s(%struct.SN_env* %112, i32 4, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %2, align 4
  br label %250

119:                                              ; preds = %111
  br label %249

120:                                              ; preds = %82
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = load i32, i32* @s_13, align 4
  %123 = call i32 @slice_from_s(%struct.SN_env* %121, i32 3, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %2, align 4
  br label %250

128:                                              ; preds = %120
  br label %249

129:                                              ; preds = %82
  %130 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %131 = load i32, i32* @s_14, align 4
  %132 = call i32 @slice_from_s(%struct.SN_env* %130, i32 3, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %2, align 4
  br label %250

137:                                              ; preds = %129
  br label %249

138:                                              ; preds = %82
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = load i32, i32* @s_15, align 4
  %141 = call i32 @slice_from_s(%struct.SN_env* %139, i32 3, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %2, align 4
  br label %250

146:                                              ; preds = %138
  br label %249

147:                                              ; preds = %82
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = load i32, i32* @s_16, align 4
  %150 = call i32 @slice_from_s(%struct.SN_env* %148, i32 2, i32 %149)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* %13, align 4
  store i32 %154, i32* %2, align 4
  br label %250

155:                                              ; preds = %147
  br label %249

156:                                              ; preds = %82
  %157 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %158 = load i32, i32* @s_17, align 4
  %159 = call i32 @slice_from_s(%struct.SN_env* %157, i32 3, i32 %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %2, align 4
  br label %250

164:                                              ; preds = %156
  br label %249

165:                                              ; preds = %82
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = load i32, i32* @s_18, align 4
  %168 = call i32 @slice_from_s(%struct.SN_env* %166, i32 3, i32 %167)
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %15, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i32, i32* %15, align 4
  store i32 %172, i32* %2, align 4
  br label %250

173:                                              ; preds = %165
  br label %249

174:                                              ; preds = %82
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = load i32, i32* @s_19, align 4
  %177 = call i32 @slice_from_s(%struct.SN_env* %175, i32 3, i32 %176)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %16, align 4
  store i32 %181, i32* %2, align 4
  br label %250

182:                                              ; preds = %174
  br label %249

183:                                              ; preds = %82
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = load i32, i32* @s_20, align 4
  %186 = call i32 @slice_from_s(%struct.SN_env* %184, i32 3, i32 %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = load i32, i32* %17, align 4
  store i32 %190, i32* %2, align 4
  br label %250

191:                                              ; preds = %183
  br label %249

192:                                              ; preds = %82
  %193 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %194 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = icmp sle i32 %195, %198
  br i1 %199, label %212, label %200

200:                                              ; preds = %192
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %203, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 108
  br i1 %211, label %212, label %213

212:                                              ; preds = %200, %192
  store i32 0, i32* %2, align 4
  br label %250

213:                                              ; preds = %200
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %215, align 4
  %218 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %219 = load i32, i32* @s_21, align 4
  %220 = call i32 @slice_from_s(%struct.SN_env* %218, i32 2, i32 %219)
  store i32 %220, i32* %18, align 4
  %221 = load i32, i32* %18, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %213
  %224 = load i32, i32* %18, align 4
  store i32 %224, i32* %2, align 4
  br label %250

225:                                              ; preds = %213
  br label %249

226:                                              ; preds = %82
  %227 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %228 = load i32, i32* @s_22, align 4
  %229 = call i32 @slice_from_s(%struct.SN_env* %227, i32 4, i32 %228)
  store i32 %229, i32* %19, align 4
  %230 = load i32, i32* %19, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %226
  %233 = load i32, i32* %19, align 4
  store i32 %233, i32* %2, align 4
  br label %250

234:                                              ; preds = %226
  br label %249

235:                                              ; preds = %82
  %236 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %237 = load i32, i32* @g_valid_LI, align 4
  %238 = call i32 @in_grouping_b(%struct.SN_env* %236, i32 %237, i32 99, i32 116, i32 0)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  store i32 0, i32* %2, align 4
  br label %250

241:                                              ; preds = %235
  %242 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %243 = call i32 @slice_del(%struct.SN_env* %242)
  store i32 %243, i32* %20, align 4
  %244 = load i32, i32* %20, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %241
  %247 = load i32, i32* %20, align 4
  store i32 %247, i32* %2, align 4
  br label %250

248:                                              ; preds = %241
  br label %249

249:                                              ; preds = %82, %248, %234, %225, %191, %182, %173, %164, %155, %146, %137, %128, %119, %110, %101, %92
  store i32 1, i32* %2, align 4
  br label %250

250:                                              ; preds = %249, %246, %240, %232, %223, %212, %189, %180, %171, %162, %153, %144, %135, %126, %117, %108, %99, %90, %80, %69, %62
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @in_grouping_b(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
