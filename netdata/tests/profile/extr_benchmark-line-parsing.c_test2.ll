; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_test2.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strings = common dso_local global i8** null, align 8
@cache_hash = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@NUMBER1 = common dso_local global i32 0, align 4
@values2 = common dso_local global i32* null, align 8
@rss_hash = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"rss\00", align 1
@NUMBER2 = common dso_local global i32 0, align 4
@rss_huge_hash = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"rss_huge\00", align 1
@NUMBER3 = common dso_local global i32 0, align 4
@mapped_file_hash = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"mapped_file\00", align 1
@NUMBER4 = common dso_local global i32 0, align 4
@writeback_hash = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@NUMBER5 = common dso_local global i32 0, align 4
@dirty_hash = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@NUMBER6 = common dso_local global i32 0, align 4
@swap_hash = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@NUMBER7 = common dso_local global i32 0, align 4
@pgpgin_hash = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"pgpgin\00", align 1
@NUMBER8 = common dso_local global i32 0, align 4
@pgpgout_hash = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"pgpgout\00", align 1
@NUMBER9 = common dso_local global i32 0, align 4
@pgfault_hash = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"pgfault\00", align 1
@NUMBER10 = common dso_local global i32 0, align 4
@pgmajfault_hash = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"pgmajfault\00", align 1
@NUMBER11 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %260, %0
  %5 = load i8**, i8*** @strings, align 8
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8*, i8** %5, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %263

11:                                               ; preds = %4
  %12 = load i8**, i8*** @strings, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @simple_hash2(i8* %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @cache_hash, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %22, %11
  %28 = phi i1 [ false, %11 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @NUMBER1, align 4
  %34 = call i32 @strtoull(i32 %33, i32* null, i32 10)
  %35 = load i32*, i32** @values2, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %259

39:                                               ; preds = %27
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @rss_hash, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i1 [ false, %39 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* @NUMBER2, align 4
  %55 = call i32 @strtoull(i32 %54, i32* null, i32 10)
  %56 = load i32*, i32** @values2, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %258

60:                                               ; preds = %48
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @rss_huge_hash, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i1 [ false, %60 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* @NUMBER3, align 4
  %76 = call i32 @strtoull(i32 %75, i32* null, i32 10)
  %77 = load i32*, i32** @values2, align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %257

81:                                               ; preds = %69
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @mapped_file_hash, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i8*, i8** %2, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %85, %81
  %91 = phi i1 [ false, %81 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* @NUMBER4, align 4
  %97 = call i32 @strtoull(i32 %96, i32* null, i32 10)
  %98 = load i32*, i32** @values2, align 8
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  br label %256

102:                                              ; preds = %90
  %103 = load i64, i64* %3, align 8
  %104 = load i64, i64* @writeback_hash, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i8*, i8** %2, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %106, %102
  %112 = phi i1 [ false, %102 ], [ %110, %106 ]
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i32, i32* @NUMBER5, align 4
  %118 = call i32 @strtoull(i32 %117, i32* null, i32 10)
  %119 = load i32*, i32** @values2, align 8
  %120 = load i32, i32* %1, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  br label %255

123:                                              ; preds = %111
  %124 = load i64, i64* %3, align 8
  %125 = load i64, i64* @dirty_hash, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i8*, i8** %2, align 8
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  br label %132

132:                                              ; preds = %127, %123
  %133 = phi i1 [ false, %123 ], [ %131, %127 ]
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i32, i32* @NUMBER6, align 4
  %139 = call i32 @strtoull(i32 %138, i32* null, i32 10)
  %140 = load i32*, i32** @values2, align 8
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  br label %254

144:                                              ; preds = %132
  %145 = load i64, i64* %3, align 8
  %146 = load i64, i64* @swap_hash, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load i8*, i8** %2, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  br label %153

153:                                              ; preds = %148, %144
  %154 = phi i1 [ false, %144 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load i32, i32* @NUMBER7, align 4
  %160 = call i32 @strtoull(i32 %159, i32* null, i32 10)
  %161 = load i32*, i32** @values2, align 8
  %162 = load i32, i32* %1, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %160, i32* %164, align 4
  br label %253

165:                                              ; preds = %153
  %166 = load i64, i64* %3, align 8
  %167 = load i64, i64* @pgpgin_hash, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i8*, i8** %2, align 8
  %171 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  br label %174

174:                                              ; preds = %169, %165
  %175 = phi i1 [ false, %165 ], [ %173, %169 ]
  %176 = zext i1 %175 to i32
  %177 = call i64 @unlikely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = load i32, i32* @NUMBER8, align 4
  %181 = call i32 @strtoull(i32 %180, i32* null, i32 10)
  %182 = load i32*, i32** @values2, align 8
  %183 = load i32, i32* %1, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  br label %252

186:                                              ; preds = %174
  %187 = load i64, i64* %3, align 8
  %188 = load i64, i64* @pgpgout_hash, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i8*, i8** %2, align 8
  %192 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  br label %195

195:                                              ; preds = %190, %186
  %196 = phi i1 [ false, %186 ], [ %194, %190 ]
  %197 = zext i1 %196 to i32
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load i32, i32* @NUMBER9, align 4
  %202 = call i32 @strtoull(i32 %201, i32* null, i32 10)
  %203 = load i32*, i32** @values2, align 8
  %204 = load i32, i32* %1, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %202, i32* %206, align 4
  br label %251

207:                                              ; preds = %195
  %208 = load i64, i64* %3, align 8
  %209 = load i64, i64* @pgfault_hash, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load i8*, i8** %2, align 8
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  br label %216

216:                                              ; preds = %211, %207
  %217 = phi i1 [ false, %207 ], [ %215, %211 ]
  %218 = zext i1 %217 to i32
  %219 = call i64 @unlikely(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load i32, i32* @NUMBER10, align 4
  %223 = call i32 @strtoull(i32 %222, i32* null, i32 10)
  %224 = load i32*, i32** @values2, align 8
  %225 = load i32, i32* %1, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %223, i32* %227, align 4
  br label %250

228:                                              ; preds = %216
  %229 = load i64, i64* %3, align 8
  %230 = load i64, i64* @pgmajfault_hash, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = load i8*, i8** %2, align 8
  %234 = call i32 @strcmp(i8* %233, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %235 = icmp ne i32 %234, 0
  %236 = xor i1 %235, true
  br label %237

237:                                              ; preds = %232, %228
  %238 = phi i1 [ false, %228 ], [ %236, %232 ]
  %239 = zext i1 %238 to i32
  %240 = call i64 @unlikely(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load i32, i32* @NUMBER11, align 4
  %244 = call i32 @strtoull(i32 %243, i32* null, i32 10)
  %245 = load i32*, i32** @values2, align 8
  %246 = load i32, i32* %1, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %244, i32* %248, align 4
  br label %249

249:                                              ; preds = %242, %237
  br label %250

250:                                              ; preds = %249, %221
  br label %251

251:                                              ; preds = %250, %200
  br label %252

252:                                              ; preds = %251, %179
  br label %253

253:                                              ; preds = %252, %158
  br label %254

254:                                              ; preds = %253, %137
  br label %255

255:                                              ; preds = %254, %116
  br label %256

256:                                              ; preds = %255, %95
  br label %257

257:                                              ; preds = %256, %74
  br label %258

258:                                              ; preds = %257, %53
  br label %259

259:                                              ; preds = %258, %32
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %1, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %1, align 4
  br label %4

263:                                              ; preds = %4
  ret void
}

declare dso_local i64 @simple_hash2(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtoull(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
