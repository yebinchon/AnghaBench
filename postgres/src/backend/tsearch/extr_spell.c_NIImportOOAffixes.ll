; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NIImportOOAffixes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NIImportOOAffixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i32, i8**, i32, i32, i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@FM_CHAR = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not open affix file \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"COMPOUNDFLAG\00", align 1
@FF_COMPOUNDFLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"COMPOUNDBEGIN\00", align 1
@FF_COMPOUNDBEGIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"COMPOUNDLAST\00", align 1
@FF_COMPOUNDLAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"COMPOUNDEND\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"COMPOUNDMIDDLE\00", align 1
@FF_COMPOUNDMIDDLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"ONLYINCOMPOUND\00", align 1
@FF_COMPOUNDONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"COMPOUNDPERMITFLAG\00", align 1
@FF_COMPOUNDPERMITFLAG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"COMPOUNDFORBIDFLAG\00", align 1
@FF_COMPOUNDFORBIDFLAG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"FLAG\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@FM_LONG = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@FM_NUM = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"Ispell dictionary supports only \22default\22, \22long\22, and \22num\22 flag values\00", align 1
@cmpcmdflag = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"af\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"invalid number of flag vector aliases\00", align 1
@VoidString = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [46 x i8] c"number of aliases exceeds specified number %d\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"sfx\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"pfx\00", align 1
@FF_CROSSPRODUCT = common dso_local global i8 0, align 1
@FF_SUFFIX = common dso_local global i32 0, align 4
@FF_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*)* @NIImportOOAffixes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NIImportOOAffixes(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %26 = load i32, i32* @BUFSIZ, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %5, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %6, align 8
  store i8* null, i8** %7, align 8
  %30 = load i32, i32* @BUFSIZ, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  %33 = load i32, i32* @BUFSIZ, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %9, align 8
  %36 = load i32, i32* @BUFSIZ, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %11, align 8
  %39 = load i32, i32* @BUFSIZ, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i8 0, i8* %19, align 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load i64, i64* @FM_CHAR, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @tsearch_readline_begin(i32* %20, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %2
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = call i32 @ereport(i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %52, %2
  br label %60

60:                                               ; preds = %243, %76, %59
  %61 = call i8* @tsearch_readline(i32* %20)
  store i8* %61, i8** %21, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %246

63:                                               ; preds = %60
  %64 = load i8*, i8** %21, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %21, align 8
  %70 = call i64 @t_isspace(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %21, align 8
  %74 = call i64 @t_iseq(i8* %73, i8 signext 35)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %68, %63
  %77 = load i8*, i8** %21, align 8
  %78 = call i32 @pfree(i8* %77)
  br label %60

79:                                               ; preds = %72
  %80 = load i8*, i8** %21, align 8
  %81 = call i64 @STRNCMP(i8* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = load i8*, i8** %21, align 8
  %86 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i32, i32* @FF_COMPOUNDFLAG, align 4
  %90 = call i32 @addCompoundAffixFlagValue(%struct.TYPE_9__* %84, i8* %88, i32 %89)
  br label %243

91:                                               ; preds = %79
  %92 = load i8*, i8** %21, align 8
  %93 = call i64 @STRNCMP(i8* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = load i8*, i8** %21, align 8
  %98 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* @FF_COMPOUNDBEGIN, align 4
  %102 = call i32 @addCompoundAffixFlagValue(%struct.TYPE_9__* %96, i8* %100, i32 %101)
  br label %242

103:                                              ; preds = %91
  %104 = load i8*, i8** %21, align 8
  %105 = call i64 @STRNCMP(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = load i8*, i8** %21, align 8
  %110 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* @FF_COMPOUNDLAST, align 4
  %114 = call i32 @addCompoundAffixFlagValue(%struct.TYPE_9__* %108, i8* %112, i32 %113)
  br label %241

115:                                              ; preds = %103
  %116 = load i8*, i8** %21, align 8
  %117 = call i64 @STRNCMP(i8* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = load i8*, i8** %21, align 8
  %122 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i32, i32* @FF_COMPOUNDLAST, align 4
  %126 = call i32 @addCompoundAffixFlagValue(%struct.TYPE_9__* %120, i8* %124, i32 %125)
  br label %240

127:                                              ; preds = %115
  %128 = load i8*, i8** %21, align 8
  %129 = call i64 @STRNCMP(i8* %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = load i8*, i8** %21, align 8
  %134 = call i32 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i32, i32* @FF_COMPOUNDMIDDLE, align 4
  %138 = call i32 @addCompoundAffixFlagValue(%struct.TYPE_9__* %132, i8* %136, i32 %137)
  br label %239

139:                                              ; preds = %127
  %140 = load i8*, i8** %21, align 8
  %141 = call i64 @STRNCMP(i8* %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = load i8*, i8** %21, align 8
  %146 = call i32 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i32, i32* @FF_COMPOUNDONLY, align 4
  %150 = call i32 @addCompoundAffixFlagValue(%struct.TYPE_9__* %144, i8* %148, i32 %149)
  br label %238

151:                                              ; preds = %139
  %152 = load i8*, i8** %21, align 8
  %153 = call i64 @STRNCMP(i8* %152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %157 = load i8*, i8** %21, align 8
  %158 = call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i32, i32* @FF_COMPOUNDPERMITFLAG, align 4
  %162 = call i32 @addCompoundAffixFlagValue(%struct.TYPE_9__* %156, i8* %160, i32 %161)
  br label %237

163:                                              ; preds = %151
  %164 = load i8*, i8** %21, align 8
  %165 = call i64 @STRNCMP(i8* %164, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %169 = load i8*, i8** %21, align 8
  %170 = call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i32, i32* @FF_COMPOUNDFORBIDFLAG, align 4
  %174 = call i32 @addCompoundAffixFlagValue(%struct.TYPE_9__* %168, i8* %172, i32 %173)
  br label %236

175:                                              ; preds = %163
  %176 = load i8*, i8** %21, align 8
  %177 = call i64 @STRNCMP(i8* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %235

179:                                              ; preds = %175
  %180 = load i8*, i8** %21, align 8
  %181 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  store i8* %183, i8** %22, align 8
  br label %184

184:                                              ; preds = %195, %179
  %185 = load i8*, i8** %22, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load i8*, i8** %22, align 8
  %191 = call i64 @t_isspace(i8* %190)
  %192 = icmp ne i64 %191, 0
  br label %193

193:                                              ; preds = %189, %184
  %194 = phi i1 [ false, %184 ], [ %192, %189 ]
  br i1 %194, label %195, label %201

195:                                              ; preds = %193
  %196 = load i8*, i8** %22, align 8
  %197 = call i32 @pg_mblen(i8* %196)
  %198 = load i8*, i8** %22, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %22, align 8
  br label %184

201:                                              ; preds = %193
  %202 = load i8*, i8** %22, align 8
  %203 = load i8, i8* %202, align 1
  %204 = icmp ne i8 %203, 0
  br i1 %204, label %205, label %234

205:                                              ; preds = %201
  %206 = load i8*, i8** %22, align 8
  %207 = call i64 @STRNCMP(i8* %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %205
  %210 = load i64, i64* @FM_LONG, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  store i64 %210, i64* %212, align 8
  br label %233

213:                                              ; preds = %205
  %214 = load i8*, i8** %22, align 8
  %215 = call i64 @STRNCMP(i8* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load i64, i64* @FM_NUM, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  store i64 %218, i64* %220, align 8
  br label %232

221:                                              ; preds = %213
  %222 = load i8*, i8** %22, align 8
  %223 = call i64 @STRNCMP(i8* %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %221
  %226 = load i32, i32* @ERROR, align 4
  %227 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %228 = call i32 @errcode(i32 %227)
  %229 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0))
  %230 = call i32 @ereport(i32 %226, i32 %229)
  br label %231

231:                                              ; preds = %225, %221
  br label %232

232:                                              ; preds = %231, %217
  br label %233

233:                                              ; preds = %232, %209
  br label %234

234:                                              ; preds = %233, %201
  br label %235

235:                                              ; preds = %234, %175
  br label %236

236:                                              ; preds = %235, %167
  br label %237

237:                                              ; preds = %236, %155
  br label %238

238:                                              ; preds = %237, %143
  br label %239

239:                                              ; preds = %238, %131
  br label %240

240:                                              ; preds = %239, %119
  br label %241

241:                                              ; preds = %240, %107
  br label %242

242:                                              ; preds = %241, %95
  br label %243

243:                                              ; preds = %242, %83
  %244 = load i8*, i8** %21, align 8
  %245 = call i32 @pfree(i8* %244)
  br label %60

246:                                              ; preds = %60
  %247 = call i32 @tsearch_readline_end(i32* %20)
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = icmp sgt i32 %250, 1
  br i1 %251, label %252, label %262

252:                                              ; preds = %246
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 7
  %255 = load i64, i64* %254, align 8
  %256 = inttoptr i64 %255 to i8*
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @cmpcmdflag, align 4
  %261 = call i32 @qsort(i8* %256, i32 %259, i32 4, i32 %260)
  br label %262

262:                                              ; preds = %252, %246
  %263 = load i8*, i8** %4, align 8
  %264 = call i32 @tsearch_readline_begin(i32* %20, i8* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %262
  %267 = load i32, i32* @ERROR, align 4
  %268 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %269 = call i32 @errcode(i32 %268)
  %270 = load i8*, i8** %4, align 8
  %271 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %270)
  %272 = call i32 @ereport(i32 %267, i32 %271)
  br label %273

273:                                              ; preds = %266, %262
  br label %274

274:                                              ; preds = %484, %273
  %275 = call i8* @tsearch_readline(i32* %20)
  store i8* %275, i8** %21, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %487

277:                                              ; preds = %274
  %278 = load i8*, i8** %21, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %277
  %283 = load i8*, i8** %21, align 8
  %284 = call i64 @t_isspace(i8* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %282
  %287 = load i8*, i8** %21, align 8
  %288 = call i64 @t_iseq(i8* %287, i8 signext 35)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %286, %282, %277
  br label %484

291:                                              ; preds = %286
  %292 = load i8*, i8** %21, align 8
  %293 = call i32 @parse_ooaffentry(i8* %292, i8* %29, i8* %32, i8* %38, i8* %41, i8* %35)
  store i32 %293, i32* %23, align 4
  %294 = load i8*, i8** %7, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load i8*, i8** %7, align 8
  %298 = call i32 @pfree(i8* %297)
  br label %299

299:                                              ; preds = %296, %291
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %301 = call i8* @lowerstr_ctx(%struct.TYPE_9__* %300, i8* %29)
  store i8* %301, i8** %7, align 8
  %302 = load i8*, i8** %7, align 8
  %303 = call i64 @STRNCMP(i8* %302, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %372

305:                                              ; preds = %299
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %347, label %310

310:                                              ; preds = %305
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 1
  store i32 1, i32* %312, align 4
  %313 = call i32 @atoi(i8* %32)
  store i32 %313, i32* %16, align 4
  %314 = load i32, i32* %16, align 4
  %315 = icmp sle i32 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %310
  %317 = load i32, i32* @ERROR, align 4
  %318 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %319 = call i32 @errcode(i32 %318)
  %320 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %321 = call i32 @ereport(i32 %317, i32 %320)
  br label %322

322:                                              ; preds = %316, %310
  %323 = load i32, i32* %16, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %16, align 4
  %325 = load i32, i32* %16, align 4
  %326 = sext i32 %325 to i64
  %327 = mul i64 %326, 8
  %328 = trunc i64 %327 to i32
  %329 = call i64 @palloc0(i32 %328)
  %330 = inttoptr i64 %329 to i8**
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 4
  store i8** %330, i8*** %332, align 8
  %333 = load i32, i32* %16, align 4
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 6
  store i32 %333, i32* %335, align 4
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 5
  store i32 %333, i32* %337, align 8
  %338 = load i8*, i8** @VoidString, align 8
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 4
  %341 = load i8**, i8*** %340, align 8
  %342 = load i32, i32* %17, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8*, i8** %341, i64 %343
  store i8* %338, i8** %344, align 8
  %345 = load i32, i32* %17, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %17, align 4
  br label %371

347:                                              ; preds = %305
  %348 = load i32, i32* %17, align 4
  %349 = load i32, i32* %16, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %362

351:                                              ; preds = %347
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %353 = call i8* @cpstrdup(%struct.TYPE_9__* %352, i8* %32)
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 4
  %356 = load i8**, i8*** %355, align 8
  %357 = load i32, i32* %17, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8*, i8** %356, i64 %358
  store i8* %353, i8** %359, align 8
  %360 = load i32, i32* %17, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %17, align 4
  br label %370

362:                                              ; preds = %347
  %363 = load i32, i32* @ERROR, align 4
  %364 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %365 = call i32 @errcode(i32 %364)
  %366 = load i32, i32* %16, align 4
  %367 = sub nsw i32 %366, 1
  %368 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i32 %367)
  %369 = call i32 @ereport(i32 %363, i32 %368)
  br label %370

370:                                              ; preds = %362, %351
  br label %371

371:                                              ; preds = %370, %322
  br label %484

372:                                              ; preds = %299
  %373 = load i32, i32* %23, align 4
  %374 = icmp slt i32 %373, 4
  br i1 %374, label %383, label %375

375:                                              ; preds = %372
  %376 = load i8*, i8** %7, align 8
  %377 = call i64 @STRNCMP(i8* %376, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %375
  %380 = load i8*, i8** %7, align 8
  %381 = call i64 @STRNCMP(i8* %380, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %379, %372
  br label %484

384:                                              ; preds = %379, %375
  %385 = call i32 @strlen(i8* %32)
  store i32 %385, i32* %18, align 4
  %386 = load i32, i32* %18, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %406, label %388

388:                                              ; preds = %384
  %389 = load i32, i32* %18, align 4
  %390 = icmp sgt i32 %389, 1
  br i1 %390, label %391, label %397

391:                                              ; preds = %388
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 2
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @FM_CHAR, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %406, label %397

397:                                              ; preds = %391, %388
  %398 = load i32, i32* %18, align 4
  %399 = icmp sgt i32 %398, 2
  br i1 %399, label %400, label %407

400:                                              ; preds = %397
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 2
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @FM_LONG, align 8
  %405 = icmp eq i64 %403, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %400, %391, %384
  br label %484

407:                                              ; preds = %400, %397
  %408 = load i32, i32* %23, align 4
  %409 = icmp eq i32 %408, 4
  br i1 %409, label %410, label %424

410:                                              ; preds = %407
  %411 = load i8*, i8** %7, align 8
  %412 = call i64 @STRNCMP(i8* %411, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %413 = icmp eq i64 %412, 0
  %414 = zext i1 %413 to i32
  store i32 %414, i32* %15, align 4
  %415 = call i64 @t_iseq(i8* %38, i8 signext 121)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %420, label %417

417:                                              ; preds = %410
  %418 = call i64 @t_iseq(i8* %38, i8 signext 89)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %417, %410
  %421 = load i8, i8* @FF_CROSSPRODUCT, align 1
  store i8 %421, i8* %19, align 1
  br label %423

422:                                              ; preds = %417
  store i8 0, i8* %19, align 1
  br label %423

423:                                              ; preds = %422, %420
  br label %483

424:                                              ; preds = %407
  store i32 0, i32* %25, align 4
  %425 = call i8* @strchr(i8* %41, i8 signext 47)
  store i8* %425, i8** %24, align 8
  %426 = icmp ne i8* %425, null
  br i1 %426, label %427, label %436

427:                                              ; preds = %424
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %430 = load i8*, i8** %24, align 8
  %431 = getelementptr inbounds i8, i8* %430, i64 1
  %432 = call i32 @getAffixFlagSet(%struct.TYPE_9__* %429, i8* %431)
  %433 = call i32 @getCompoundAffixFlagValue(%struct.TYPE_9__* %428, i32 %432)
  %434 = load i32, i32* %25, align 4
  %435 = or i32 %434, %433
  store i32 %435, i32* %25, align 4
  br label %436

436:                                              ; preds = %427, %424
  %437 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %438 = call i8* @lowerstr_ctx(%struct.TYPE_9__* %437, i8* %41)
  store i8* %438, i8** %14, align 8
  %439 = load i8*, i8** %14, align 8
  %440 = call i8* @strchr(i8* %439, i8 signext 47)
  store i8* %440, i8** %24, align 8
  %441 = icmp ne i8* %440, null
  br i1 %441, label %442, label %444

442:                                              ; preds = %436
  %443 = load i8*, i8** %24, align 8
  store i8 0, i8* %443, align 1
  br label %444

444:                                              ; preds = %442, %436
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %446 = call i8* @lowerstr_ctx(%struct.TYPE_9__* %445, i8* %38)
  store i8* %446, i8** %12, align 8
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %448 = call i8* @lowerstr_ctx(%struct.TYPE_9__* %447, i8* %35)
  store i8* %448, i8** %10, align 8
  %449 = call i64 @t_iseq(i8* %38, i8 signext 48)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %453

451:                                              ; preds = %444
  %452 = load i8*, i8** %12, align 8
  store i8 0, i8* %452, align 1
  br label %453

453:                                              ; preds = %451, %444
  %454 = call i64 @t_iseq(i8* %41, i8 signext 48)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %453
  %457 = load i8*, i8** %14, align 8
  store i8 0, i8* %457, align 1
  br label %458

458:                                              ; preds = %456, %453
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %460 = load i8, i8* %19, align 1
  %461 = sext i8 %460 to i32
  %462 = load i32, i32* %25, align 4
  %463 = or i32 %461, %462
  %464 = trunc i32 %463 to i8
  %465 = load i8*, i8** %10, align 8
  %466 = load i8*, i8** %12, align 8
  %467 = load i8*, i8** %14, align 8
  %468 = load i32, i32* %15, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %472

470:                                              ; preds = %458
  %471 = load i32, i32* @FF_SUFFIX, align 4
  br label %474

472:                                              ; preds = %458
  %473 = load i32, i32* @FF_PREFIX, align 4
  br label %474

474:                                              ; preds = %472, %470
  %475 = phi i32 [ %471, %470 ], [ %473, %472 ]
  %476 = call i32 @NIAddAffix(%struct.TYPE_9__* %459, i8* %32, i8 signext %464, i8* %465, i8* %466, i8* %467, i32 %475)
  %477 = load i8*, i8** %14, align 8
  %478 = call i32 @pfree(i8* %477)
  %479 = load i8*, i8** %12, align 8
  %480 = call i32 @pfree(i8* %479)
  %481 = load i8*, i8** %10, align 8
  %482 = call i32 @pfree(i8* %481)
  br label %483

483:                                              ; preds = %474, %423
  br label %484

484:                                              ; preds = %483, %406, %383, %371, %290
  %485 = load i8*, i8** %21, align 8
  %486 = call i32 @pfree(i8* %485)
  br label %274

487:                                              ; preds = %274
  %488 = call i32 @tsearch_readline_end(i32* %20)
  %489 = load i8*, i8** %7, align 8
  %490 = icmp ne i8* %489, null
  br i1 %490, label %491, label %494

491:                                              ; preds = %487
  %492 = load i8*, i8** %7, align 8
  %493 = call i32 @pfree(i8* %492)
  br label %494

494:                                              ; preds = %491, %487
  %495 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %495)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tsearch_readline_begin(i32*, i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i8* @tsearch_readline(i32*) #2

declare dso_local i64 @t_isspace(i8*) #2

declare dso_local i64 @t_iseq(i8*, i8 signext) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local i64 @STRNCMP(i8*, i8*) #2

declare dso_local i32 @addCompoundAffixFlagValue(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @pg_mblen(i8*) #2

declare dso_local i32 @tsearch_readline_end(i32*) #2

declare dso_local i32 @qsort(i8*, i32, i32, i32) #2

declare dso_local i32 @parse_ooaffentry(i8*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i8* @lowerstr_ctx(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i64 @palloc0(i32) #2

declare dso_local i8* @cpstrdup(%struct.TYPE_9__*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @getCompoundAffixFlagValue(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @getAffixFlagSet(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @NIAddAffix(%struct.TYPE_9__*, i8*, i8 signext, i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
