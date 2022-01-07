; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/procfile/extr_procfile.c_procfile_parser.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/procfile/extr_procfile.c_procfile_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i64, i64* }

@PF_CHAR_IS_WORD = common dso_local global i64 0, align 8
@PF_CHAR_IS_SEPARATOR = common dso_local global i64 0, align 8
@PF_CHAR_IS_NEWLINE = common dso_local global i64 0, align 8
@PF_CHAR_IS_QUOTE = common dso_local global i64 0, align 8
@PF_CHAR_IS_OPEN = common dso_local global i64 0, align 8
@PF_CHAR_IS_CLOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"Internal Error: procfile_readall() does not handle all the cases.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @procfile_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @procfile_parser(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8* %20, i8** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %6, align 8
  store i8 0, i8* %7, align 1
  store i64 0, i64* %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = call i64* @pflines_add(%struct.TYPE_5__* %27)
  store i64* %28, i64** %9, align 8
  br label %29

29:                                               ; preds = %227, %1
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %228

33:                                               ; preds = %29
  %34 = load i64*, i64** %6, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @PF_CHAR_IS_WORD, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %3, align 8
  br label %227

49:                                               ; preds = %33
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @PF_CHAR_IS_SEPARATOR, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @likely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %49
  %57 = load i8, i8* %7, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %3, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = icmp ne i8* %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i8*, i8** %3, align 8
  store i8 0, i8* %67, align 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @pfwords_add(%struct.TYPE_5__* %68, i8* %69)
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %3, align 8
  store i8* %75, i8** %5, align 8
  br label %79

76:                                               ; preds = %62
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %3, align 8
  store i8* %78, i8** %5, align 8
  br label %79

79:                                               ; preds = %76, %66
  br label %83

80:                                               ; preds = %59, %56
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %3, align 8
  br label %83

83:                                               ; preds = %80, %79
  br label %226

84:                                               ; preds = %49
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @PF_CHAR_IS_NEWLINE, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @likely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load i8*, i8** %3, align 8
  store i8 0, i8* %92, align 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @pfwords_add(%struct.TYPE_5__* %93, i8* %94)
  %96 = load i64*, i64** %9, align 8
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %3, align 8
  store i8* %100, i8** %5, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = call i64* @pflines_add(%struct.TYPE_5__* %101)
  store i64* %102, i64** %9, align 8
  br label %225

103:                                              ; preds = %84
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @PF_CHAR_IS_QUOTE, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i64 @likely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %158

110:                                              ; preds = %103
  %111 = load i8, i8* %7, align 1
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = load i8*, i8** %3, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = icmp eq i8* %114, %115
  br label %117

117:                                              ; preds = %113, %110
  %118 = phi i1 [ false, %110 ], [ %116, %113 ]
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i8*, i8** %3, align 8
  %124 = load i8, i8* %123, align 1
  store i8 %124, i8* %7, align 1
  %125 = load i8*, i8** %3, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %3, align 8
  store i8* %126, i8** %5, align 8
  br label %157

127:                                              ; preds = %117
  %128 = load i8, i8* %7, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i8, i8* %7, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8*, i8** %3, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %133, %136
  br label %138

138:                                              ; preds = %131, %127
  %139 = phi i1 [ false, %127 ], [ %137, %131 ]
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  store i8 0, i8* %7, align 1
  %144 = load i8*, i8** %3, align 8
  store i8 0, i8* %144, align 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @pfwords_add(%struct.TYPE_5__* %145, i8* %146)
  %148 = load i64*, i64** %9, align 8
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %148, align 8
  %151 = load i8*, i8** %3, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %3, align 8
  store i8* %152, i8** %5, align 8
  br label %156

153:                                              ; preds = %138
  %154 = load i8*, i8** %3, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %3, align 8
  br label %156

156:                                              ; preds = %153, %143
  br label %157

157:                                              ; preds = %156, %122
  br label %224

158:                                              ; preds = %103
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* @PF_CHAR_IS_OPEN, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i64 @likely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %187

165:                                              ; preds = %158
  %166 = load i8*, i8** %3, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = icmp eq i8* %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i64, i64* %8, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %8, align 8
  %172 = load i8*, i8** %3, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %3, align 8
  store i8* %173, i8** %5, align 8
  br label %186

174:                                              ; preds = %165
  %175 = load i64, i64* %8, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i64, i64* %8, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %8, align 8
  %180 = load i8*, i8** %3, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %3, align 8
  br label %185

182:                                              ; preds = %174
  %183 = load i8*, i8** %3, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %3, align 8
  br label %185

185:                                              ; preds = %182, %177
  br label %186

186:                                              ; preds = %185, %169
  br label %223

187:                                              ; preds = %158
  %188 = load i64, i64* %10, align 8
  %189 = load i64, i64* @PF_CHAR_IS_CLOSE, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i64 @likely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %220

194:                                              ; preds = %187
  %195 = load i64, i64* %8, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %216

197:                                              ; preds = %194
  %198 = load i64, i64* %8, align 8
  %199 = add i64 %198, -1
  store i64 %199, i64* %8, align 8
  %200 = load i64, i64* %8, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %212, label %202

202:                                              ; preds = %197
  %203 = load i8*, i8** %3, align 8
  store i8 0, i8* %203, align 1
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %205 = load i8*, i8** %5, align 8
  %206 = call i32 @pfwords_add(%struct.TYPE_5__* %204, i8* %205)
  %207 = load i64*, i64** %9, align 8
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %207, align 8
  %210 = load i8*, i8** %3, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %3, align 8
  store i8* %211, i8** %5, align 8
  br label %215

212:                                              ; preds = %197
  %213 = load i8*, i8** %3, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %3, align 8
  br label %215

215:                                              ; preds = %212, %202
  br label %219

216:                                              ; preds = %194
  %217 = load i8*, i8** %3, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %3, align 8
  br label %219

219:                                              ; preds = %216, %215
  br label %222

220:                                              ; preds = %187
  %221 = call i32 @fatal(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %222

222:                                              ; preds = %220, %219
  br label %223

223:                                              ; preds = %222, %186
  br label %224

224:                                              ; preds = %223, %157
  br label %225

225:                                              ; preds = %224, %91
  br label %226

226:                                              ; preds = %225, %83
  br label %227

227:                                              ; preds = %226, %46
  br label %29

228:                                              ; preds = %29
  %229 = load i8*, i8** %3, align 8
  %230 = load i8*, i8** %5, align 8
  %231 = icmp ugt i8* %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i8*, i8** %5, align 8
  %234 = load i8*, i8** %4, align 8
  %235 = icmp ult i8* %233, %234
  br label %236

236:                                              ; preds = %232, %228
  %237 = phi i1 [ false, %228 ], [ %235, %232 ]
  %238 = zext i1 %237 to i32
  %239 = call i64 @likely(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %269

241:                                              ; preds = %236
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = icmp uge i64 %244, %247
  %249 = zext i1 %248 to i32
  %250 = call i64 @unlikely(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %241
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = sub i64 %258, 1
  %260 = getelementptr inbounds i8, i8* %255, i64 %259
  store i8* %260, i8** %3, align 8
  br label %261

261:                                              ; preds = %252, %241
  %262 = load i8*, i8** %3, align 8
  store i8 0, i8* %262, align 1
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %264 = load i8*, i8** %5, align 8
  %265 = call i32 @pfwords_add(%struct.TYPE_5__* %263, i8* %264)
  %266 = load i64*, i64** %9, align 8
  %267 = load i64, i64* %266, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %266, align 8
  br label %269

269:                                              ; preds = %261, %236
  ret void
}

declare dso_local i64* @pflines_add(%struct.TYPE_5__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pfwords_add(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
