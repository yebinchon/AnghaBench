; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_thesaurus.c_thesaurusRead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_thesaurus.c_thesaurusRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"ths\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not open thesaurus file \22%s\22: %m\00", align 1
@TR_WAITLEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"unexpected delimiter\00", align 1
@TR_WAITSUBS = common dso_local global i32 0, align 4
@TR_INLEX = common dso_local global i32 0, align 4
@TR_INSUBS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"unexpected end of line or lexeme\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"unrecognized thesaurus state: %d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unexpected end of line\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"too many lexemes in thesaurus entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*)* @thesaurusRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thesaurusRead(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @get_tsearch_config_filename(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @tsearch_readline_begin(i32* %5, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = call i32 @ereport(i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  br label %27

27:                                               ; preds = %270, %67, %26
  %28 = call i8* @tsearch_readline(i32* %5)
  store i8* %28, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %273

30:                                               ; preds = %27
  %31 = load i32, i32* @TR_WAITLEX, align 4
  store i32 %31, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %44, %30
  %34 = load i8*, i8** %9, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @t_isspace(i8* %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i1 [ false, %33 ], [ %41, %38 ]
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @pg_mblen(i8* %45)
  %47 = load i8*, i8** %9, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %9, align 8
  br label %33

50:                                               ; preds = %42
  %51 = load i8*, i8** %9, align 8
  %52 = call i64 @t_iseq(i8* %51, i8 signext 35)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %9, align 8
  %61 = call i64 @t_iseq(i8* %60, i8 signext 10)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @t_iseq(i8* %64, i8 signext 13)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %59, %54, %50
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @pfree(i8* %68)
  br label %27

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %211, %70
  %72 = load i8*, i8** %9, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %217

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @TR_WAITLEX, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %75
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @t_iseq(i8* %80, i8 signext 58)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load i64, i64* %12, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %91 = call i32 @ereport(i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %86, %83
  %93 = load i32, i32* @TR_WAITSUBS, align 4
  store i32 %93, i32* %10, align 4
  br label %102

94:                                               ; preds = %79
  %95 = load i8*, i8** %9, align 8
  %96 = call i64 @t_isspace(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %9, align 8
  store i8* %99, i8** %11, align 8
  %100 = load i32, i32* @TR_INLEX, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %98, %94
  br label %102

102:                                              ; preds = %101, %92
  br label %211

103:                                              ; preds = %75
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @TR_INLEX, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %137

107:                                              ; preds = %103
  %108 = load i8*, i8** %9, align 8
  %109 = call i64 @t_iseq(i8* %108, i8 signext 58)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* %12, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %12, align 8
  %118 = trunc i64 %116 to i32
  %119 = call i32 @newLexeme(%struct.TYPE_5__* %112, i8* %113, i8* %114, i64 %115, i32 %118)
  %120 = load i32, i32* @TR_WAITSUBS, align 4
  store i32 %120, i32* %10, align 4
  br label %136

121:                                              ; preds = %107
  %122 = load i8*, i8** %9, align 8
  %123 = call i64 @t_isspace(i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* %12, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %12, align 8
  %132 = trunc i64 %130 to i32
  %133 = call i32 @newLexeme(%struct.TYPE_5__* %126, i8* %127, i8* %128, i64 %129, i32 %132)
  %134 = load i32, i32* @TR_WAITLEX, align 4
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %125, %121
  br label %136

136:                                              ; preds = %135, %111
  br label %210

137:                                              ; preds = %103
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @TR_WAITSUBS, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %173

141:                                              ; preds = %137
  %142 = load i8*, i8** %9, align 8
  %143 = call i64 @t_iseq(i8* %142, i8 signext 42)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  store i32 1, i32* %7, align 4
  %146 = load i32, i32* @TR_INSUBS, align 4
  store i32 %146, i32* %10, align 4
  %147 = load i8*, i8** %9, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = call i32 @pg_mblen(i8* %148)
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  store i8* %151, i8** %11, align 8
  br label %172

152:                                              ; preds = %141
  %153 = load i8*, i8** %9, align 8
  %154 = call i64 @t_iseq(i8* %153, i8 signext 92)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  store i32 0, i32* %7, align 4
  %157 = load i32, i32* @TR_INSUBS, align 4
  store i32 %157, i32* %10, align 4
  %158 = load i8*, i8** %9, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = call i32 @pg_mblen(i8* %159)
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8* %162, i8** %11, align 8
  br label %171

163:                                              ; preds = %152
  %164 = load i8*, i8** %9, align 8
  %165 = call i64 @t_isspace(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  store i32 0, i32* %7, align 4
  %168 = load i8*, i8** %9, align 8
  store i8* %168, i8** %11, align 8
  %169 = load i32, i32* @TR_INSUBS, align 4
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %167, %163
  br label %171

171:                                              ; preds = %170, %156
  br label %172

172:                                              ; preds = %171, %145
  br label %209

173:                                              ; preds = %137
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @TR_INSUBS, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %204

177:                                              ; preds = %173
  %178 = load i8*, i8** %9, align 8
  %179 = call i64 @t_isspace(i8* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %177
  %182 = load i8*, i8** %9, align 8
  %183 = load i8*, i8** %11, align 8
  %184 = icmp eq i8* %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load i32, i32* @ERROR, align 4
  %187 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %188 = call i32 @errcode(i32 %187)
  %189 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %190 = call i32 @ereport(i32 %186, i32 %189)
  br label %191

191:                                              ; preds = %185, %181
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %193 = load i8*, i8** %11, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = load i64, i64* %6, align 8
  %196 = load i64, i64* %13, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %13, align 8
  %198 = trunc i64 %196 to i32
  %199 = load i64, i64* %12, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @addWrd(%struct.TYPE_5__* %192, i8* %193, i8* %194, i64 %195, i32 %198, i64 %199, i32 %200)
  %202 = load i32, i32* @TR_WAITSUBS, align 4
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %191, %177
  br label %208

204:                                              ; preds = %173
  %205 = load i32, i32* @ERROR, align 4
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @elog(i32 %205, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %204, %203
  br label %209

209:                                              ; preds = %208, %172
  br label %210

210:                                              ; preds = %209, %136
  br label %211

211:                                              ; preds = %210, %102
  %212 = load i8*, i8** %9, align 8
  %213 = call i32 @pg_mblen(i8* %212)
  %214 = load i8*, i8** %9, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %9, align 8
  br label %71

217:                                              ; preds = %71
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* @TR_INSUBS, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %242

221:                                              ; preds = %217
  %222 = load i8*, i8** %9, align 8
  %223 = load i8*, i8** %11, align 8
  %224 = icmp eq i8* %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %221
  %226 = load i32, i32* @ERROR, align 4
  %227 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %228 = call i32 @errcode(i32 %227)
  %229 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %230 = call i32 @ereport(i32 %226, i32 %229)
  br label %231

231:                                              ; preds = %225, %221
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %233 = load i8*, i8** %11, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = load i64, i64* %6, align 8
  %236 = load i64, i64* %13, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %13, align 8
  %238 = trunc i64 %236 to i32
  %239 = load i64, i64* %12, align 8
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @addWrd(%struct.TYPE_5__* %232, i8* %233, i8* %234, i64 %235, i32 %238, i64 %239, i32 %240)
  br label %242

242:                                              ; preds = %231, %217
  %243 = load i64, i64* %6, align 8
  %244 = add nsw i64 %243, 1
  store i64 %244, i64* %6, align 8
  %245 = load i64, i64* %13, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i64, i64* %12, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %247, %242
  %251 = load i32, i32* @ERROR, align 4
  %252 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %253 = call i32 @errcode(i32 %252)
  %254 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %255 = call i32 @ereport(i32 %251, i32 %254)
  br label %256

256:                                              ; preds = %250, %247
  %257 = load i64, i64* %13, align 8
  %258 = load i64, i64* %13, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load i64, i64* %12, align 8
  %262 = load i64, i64* %12, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %260, %256
  %265 = load i32, i32* @ERROR, align 4
  %266 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %267 = call i32 @errcode(i32 %266)
  %268 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %269 = call i32 @ereport(i32 %265, i32 %268)
  br label %270

270:                                              ; preds = %264, %260
  %271 = load i8*, i8** %8, align 8
  %272 = call i32 @pfree(i8* %271)
  br label %27

273:                                              ; preds = %27
  %274 = load i64, i64* %6, align 8
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  store i64 %274, i64* %276, align 8
  %277 = call i32 @tsearch_readline_end(i32* %5)
  ret void
}

declare dso_local i8* @get_tsearch_config_filename(i8*, i8*) #1

declare dso_local i32 @tsearch_readline_begin(i32*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i8* @tsearch_readline(i32*) #1

declare dso_local i64 @t_isspace(i8*) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i64 @t_iseq(i8*, i8 signext) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @newLexeme(%struct.TYPE_5__*, i8*, i8*, i64, i32) #1

declare dso_local i32 @addWrd(%struct.TYPE_5__*, i8*, i8*, i64, i32, i64, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @tsearch_readline_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
