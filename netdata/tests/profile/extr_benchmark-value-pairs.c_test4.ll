; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-value-pairs.c_test4.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-value-pairs.c_test4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@pairs = common dso_local global %struct.TYPE_2__* null, align 8
@cache_hash = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@values4 = common dso_local global i32* null, align 8
@rss_hash = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"rss\00", align 1
@rss_huge_hash = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"rss_huge\00", align 1
@mapped_file_hash = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"mapped_file\00", align 1
@writeback_hash = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@dirty_hash = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@swap_hash = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@pgpgin_hash = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"pgpgin\00", align 1
@pgpgout_hash = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"pgpgout\00", align 1
@pgfault_hash = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"pgfault\00", align 1
@pgmajfault_hash = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"pgmajfault\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %259, %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %262

13:                                               ; preds = %5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @simple_hash2(i8* %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @cache_hash, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %13
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %31, %13
  %37 = phi i1 [ false, %13 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @strtoull(i8* %42, i32* null, i32 0)
  %44 = load i32*, i32** @values4, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %259

48:                                               ; preds = %36
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @rss_hash, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi i1 [ false, %48 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @strtoull(i8* %63, i32* null, i32 0)
  %65 = load i32*, i32** @values4, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %259

69:                                               ; preds = %57
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @rss_huge_hash, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i8*, i8** %2, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %73, %69
  %79 = phi i1 [ false, %69 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @strtoull(i8* %84, i32* null, i32 0)
  %86 = load i32*, i32** @values4, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %259

90:                                               ; preds = %78
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* @mapped_file_hash, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8*, i8** %2, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br label %99

99:                                               ; preds = %94, %90
  %100 = phi i1 [ false, %90 ], [ %98, %94 ]
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i8*, i8** %3, align 8
  %106 = call i32 @strtoull(i8* %105, i32* null, i32 0)
  %107 = load i32*, i32** @values4, align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  br label %259

111:                                              ; preds = %99
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* @writeback_hash, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i8*, i8** %2, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %115, %111
  %121 = phi i1 [ false, %111 ], [ %119, %115 ]
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 @strtoull(i8* %126, i32* null, i32 0)
  %128 = load i32*, i32** @values4, align 8
  %129 = load i32, i32* %1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  br label %259

132:                                              ; preds = %120
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* @dirty_hash, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i8*, i8** %2, align 8
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br label %141

141:                                              ; preds = %136, %132
  %142 = phi i1 [ false, %132 ], [ %140, %136 ]
  %143 = zext i1 %142 to i32
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load i8*, i8** %3, align 8
  %148 = call i32 @strtoull(i8* %147, i32* null, i32 0)
  %149 = load i32*, i32** @values4, align 8
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  br label %259

153:                                              ; preds = %141
  %154 = load i64, i64* %4, align 8
  %155 = load i64, i64* @swap_hash, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i8*, i8** %2, align 8
  %159 = call i32 @strcmp(i8* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  br label %162

162:                                              ; preds = %157, %153
  %163 = phi i1 [ false, %153 ], [ %161, %157 ]
  %164 = zext i1 %163 to i32
  %165 = call i64 @unlikely(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load i8*, i8** %3, align 8
  %169 = call i32 @strtoull(i8* %168, i32* null, i32 0)
  %170 = load i32*, i32** @values4, align 8
  %171 = load i32, i32* %1, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %169, i32* %173, align 4
  br label %259

174:                                              ; preds = %162
  %175 = load i64, i64* %4, align 8
  %176 = load i64, i64* @pgpgin_hash, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = load i8*, i8** %2, align 8
  %180 = call i32 @strcmp(i8* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  br label %183

183:                                              ; preds = %178, %174
  %184 = phi i1 [ false, %174 ], [ %182, %178 ]
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = load i8*, i8** %3, align 8
  %190 = call i32 @strtoull(i8* %189, i32* null, i32 0)
  %191 = load i32*, i32** @values4, align 8
  %192 = load i32, i32* %1, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  br label %259

195:                                              ; preds = %183
  %196 = load i64, i64* %4, align 8
  %197 = load i64, i64* @pgpgout_hash, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = load i8*, i8** %2, align 8
  %201 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  br label %204

204:                                              ; preds = %199, %195
  %205 = phi i1 [ false, %195 ], [ %203, %199 ]
  %206 = zext i1 %205 to i32
  %207 = call i64 @unlikely(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  %210 = load i8*, i8** %3, align 8
  %211 = call i32 @strtoull(i8* %210, i32* null, i32 0)
  %212 = load i32*, i32** @values4, align 8
  %213 = load i32, i32* %1, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %211, i32* %215, align 4
  br label %259

216:                                              ; preds = %204
  %217 = load i64, i64* %4, align 8
  %218 = load i64, i64* @pgfault_hash, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %216
  %221 = load i8*, i8** %2, align 8
  %222 = call i32 @strcmp(i8* %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  br label %225

225:                                              ; preds = %220, %216
  %226 = phi i1 [ false, %216 ], [ %224, %220 ]
  %227 = zext i1 %226 to i32
  %228 = call i64 @unlikely(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load i8*, i8** %3, align 8
  %232 = call i32 @strtoull(i8* %231, i32* null, i32 0)
  %233 = load i32*, i32** @values4, align 8
  %234 = load i32, i32* %1, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 %232, i32* %236, align 4
  br label %259

237:                                              ; preds = %225
  %238 = load i64, i64* %4, align 8
  %239 = load i64, i64* @pgmajfault_hash, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %237
  %242 = load i8*, i8** %2, align 8
  %243 = call i32 @strcmp(i8* %242, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %244 = icmp ne i32 %243, 0
  %245 = xor i1 %244, true
  br label %246

246:                                              ; preds = %241, %237
  %247 = phi i1 [ false, %237 ], [ %245, %241 ]
  %248 = zext i1 %247 to i32
  %249 = call i64 @unlikely(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %246
  %252 = load i8*, i8** %3, align 8
  %253 = call i32 @strtoull(i8* %252, i32* null, i32 0)
  %254 = load i32*, i32** @values4, align 8
  %255 = load i32, i32* %1, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 %253, i32* %257, align 4
  br label %259

258:                                              ; preds = %246
  br label %259

259:                                              ; preds = %258, %251, %230, %209, %188, %167, %146, %125, %104, %83, %62, %41
  %260 = load i32, i32* %1, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %1, align 4
  br label %5

262:                                              ; preds = %5
  ret void
}

declare dso_local i64 @simple_hash2(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
