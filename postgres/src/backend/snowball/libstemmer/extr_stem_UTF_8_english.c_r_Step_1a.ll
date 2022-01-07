; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_english.c_r_Step_1a.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_english.c_r_Step_1a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32*, i64 }

@a_1 = common dso_local global i32 0, align 4
@a_2 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
@g_v = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Step_1a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Step_1a(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %59, label %35

35:                                               ; preds = %1
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 39
  br i1 %46, label %47, label %67

47:                                               ; preds = %35
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 115
  br i1 %58, label %59, label %67

59:                                               ; preds = %47, %1
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %94

67:                                               ; preds = %47, %35
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = load i32, i32* @a_1, align 4
  %70 = call i32 @find_among_b(%struct.SN_env* %68, i32 %69, i32 3)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %94

80:                                               ; preds = %67
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %86 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %85, i32 0, i32 5
  store i64 %84, i64* %86, align 8
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = call i32 @slice_del(%struct.SN_env* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %252

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %72, %59
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp sle i32 %102, %105
  br i1 %106, label %131, label %107

107:                                              ; preds = %94
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %110, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 100
  br i1 %118, label %119, label %132

119:                                              ; preds = %107
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %124 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %122, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 115
  br i1 %130, label %131, label %132

131:                                              ; preds = %119, %94
  store i32 0, i32* %2, align 4
  br label %252

132:                                              ; preds = %119, %107
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = load i32, i32* @a_2, align 4
  %135 = call i32 @find_among_b(%struct.SN_env* %133, i32 %134, i32 6)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %252

139:                                              ; preds = %132
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %144, i32 0, i32 5
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* %4, align 4
  switch i32 %146, label %251 [
    i32 1, label %147
    i32 2, label %156
    i32 3, label %212
  ]

147:                                              ; preds = %139
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = load i32, i32* @s_2, align 4
  %150 = call i32 @slice_from_s(%struct.SN_env* %148, i32 2, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %2, align 4
  br label %252

155:                                              ; preds = %147
  br label %251

156:                                              ; preds = %139
  %157 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %158 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %161 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %159, %162
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %173 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @skip_utf8(i32* %167, i64 %171, i64 %175, i32 %178, i32 -2)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %156
  br label %195

183:                                              ; preds = %156
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %186 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = load i32, i32* @s_3, align 4
  %189 = call i32 @slice_from_s(%struct.SN_env* %187, i32 1, i32 %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %183
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %2, align 4
  br label %252

194:                                              ; preds = %183
  br label %211

195:                                              ; preds = %182
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sub nsw i32 %198, %199
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %204 = load i32, i32* @s_4, align 4
  %205 = call i32 @slice_from_s(%struct.SN_env* %203, i32 2, i32 %204)
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %195
  %209 = load i32, i32* %11, align 4
  store i32 %209, i32* %2, align 4
  br label %252

210:                                              ; preds = %195
  br label %211

211:                                              ; preds = %210, %194
  br label %251

212:                                              ; preds = %139
  %213 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %214 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = call i32 @skip_utf8(i32* %215, i64 %219, i64 %223, i32 0, i32 -1)
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %12, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %212
  store i32 0, i32* %2, align 4
  br label %252

228:                                              ; preds = %212
  %229 = load i32, i32* %12, align 4
  %230 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %231 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = load i32, i32* @g_v, align 4
  %234 = call i32 @out_grouping_b_U(%struct.SN_env* %232, i32 %233, i32 97, i32 121, i32 1)
  store i32 %234, i32* %13, align 4
  %235 = load i32, i32* %13, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %228
  store i32 0, i32* %2, align 4
  br label %252

238:                                              ; preds = %228
  %239 = load i32, i32* %13, align 4
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %242, %239
  store i32 %243, i32* %241, align 4
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = call i32 @slice_del(%struct.SN_env* %244)
  store i32 %245, i32* %14, align 4
  %246 = load i32, i32* %14, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %238
  %249 = load i32, i32* %14, align 4
  store i32 %249, i32* %2, align 4
  br label %252

250:                                              ; preds = %238
  br label %251

251:                                              ; preds = %139, %250, %211, %155
  store i32 1, i32* %2, align 4
  br label %252

252:                                              ; preds = %251, %248, %237, %227, %208, %192, %153, %138, %131, %91
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @skip_utf8(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @out_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
