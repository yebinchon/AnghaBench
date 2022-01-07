; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_parse_affentry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_parse_affentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAE_WAIT_MASK = common dso_local global i32 0, align 4
@PAE_INMASK = common dso_local global i32 0, align 4
@PAE_WAIT_FIND = common dso_local global i32 0, align 4
@PAE_INFIND = common dso_local global i32 0, align 4
@PAE_INREPL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@PAE_WAIT_REPL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unrecognized state in parse_affentry: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @parse_affentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_affentry(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @PAE_WAIT_MASK, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %9, align 8
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %8, align 8
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %7, align 8
  store i8 0, i8* %20, align 1
  br label %21

21:                                               ; preds = %235, %4
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %241

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PAE_WAIT_MASK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @t_iseq(i8* %30, i8 signext 35)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %264

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @t_isspace(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @COPYCHAR(i8* %39, i8* %40)
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @pg_mblen(i8* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %11, align 8
  %47 = load i32, i32* @PAE_INMASK, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %38, %34
  br label %49

49:                                               ; preds = %48
  br label %235

50:                                               ; preds = %25
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @PAE_INMASK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @t_iseq(i8* %55, i8 signext 62)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8*, i8** %11, align 8
  store i8 0, i8* %59, align 1
  %60 = load i32, i32* @PAE_WAIT_FIND, align 4
  store i32 %60, i32* %10, align 4
  br label %75

61:                                               ; preds = %54
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @t_isspace(i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @COPYCHAR(i8* %66, i8* %67)
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @pg_mblen(i8* %69)
  %71 = load i8*, i8** %11, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %11, align 8
  br label %74

74:                                               ; preds = %65, %61
  br label %75

75:                                               ; preds = %74, %58
  br label %234

76:                                               ; preds = %50
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @PAE_WAIT_FIND, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %117

80:                                               ; preds = %76
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @t_iseq(i8* %81, i8 signext 45)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @PAE_INFIND, align 4
  store i32 %85, i32* %10, align 4
  br label %116

86:                                               ; preds = %80
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @t_isalpha(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = call i64 @t_iseq(i8* %91, i8 signext 39)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %90, %86
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @COPYCHAR(i8* %95, i8* %96)
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @pg_mblen(i8* %98)
  %100 = load i8*, i8** %13, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %13, align 8
  %103 = load i32, i32* @PAE_INREPL, align 4
  store i32 %103, i32* %10, align 4
  br label %115

104:                                              ; preds = %90
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @t_isspace(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @ERROR, align 4
  %110 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %111 = call i32 @errcode(i32 %110)
  %112 = call i32 @errmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %113 = call i32 @ereport(i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %104
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %115, %84
  br label %233

117:                                              ; preds = %76
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @PAE_INFIND, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %154

121:                                              ; preds = %117
  %122 = load i8*, i8** %6, align 8
  %123 = call i64 @t_iseq(i8* %122, i8 signext 44)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i8*, i8** %12, align 8
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* @PAE_WAIT_REPL, align 4
  store i32 %127, i32* %10, align 4
  br label %153

128:                                              ; preds = %121
  %129 = load i8*, i8** %6, align 8
  %130 = call i64 @t_isalpha(i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load i8*, i8** %12, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @COPYCHAR(i8* %133, i8* %134)
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @pg_mblen(i8* %136)
  %138 = load i8*, i8** %12, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %12, align 8
  br label %152

141:                                              ; preds = %128
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @t_isspace(i8* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* @ERROR, align 4
  %147 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %148 = call i32 @errcode(i32 %147)
  %149 = call i32 @errmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %150 = call i32 @ereport(i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %145, %141
  br label %152

152:                                              ; preds = %151, %132
  br label %153

153:                                              ; preds = %152, %125
  br label %232

154:                                              ; preds = %117
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @PAE_WAIT_REPL, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %190

158:                                              ; preds = %154
  %159 = load i8*, i8** %6, align 8
  %160 = call i64 @t_iseq(i8* %159, i8 signext 45)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %241

163:                                              ; preds = %158
  %164 = load i8*, i8** %6, align 8
  %165 = call i64 @t_isalpha(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = load i8*, i8** %13, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @COPYCHAR(i8* %168, i8* %169)
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 @pg_mblen(i8* %171)
  %173 = load i8*, i8** %13, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8* %175, i8** %13, align 8
  %176 = load i32, i32* @PAE_INREPL, align 4
  store i32 %176, i32* %10, align 4
  br label %188

177:                                              ; preds = %163
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 @t_isspace(i8* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %177
  %182 = load i32, i32* @ERROR, align 4
  %183 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %184 = call i32 @errcode(i32 %183)
  %185 = call i32 @errmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %186 = call i32 @ereport(i32 %182, i32 %185)
  br label %187

187:                                              ; preds = %181, %177
  br label %188

188:                                              ; preds = %187, %167
  br label %189

189:                                              ; preds = %188
  br label %231

190:                                              ; preds = %154
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @PAE_INREPL, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %226

194:                                              ; preds = %190
  %195 = load i8*, i8** %6, align 8
  %196 = call i64 @t_iseq(i8* %195, i8 signext 35)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i8*, i8** %13, align 8
  store i8 0, i8* %199, align 1
  br label %241

200:                                              ; preds = %194
  %201 = load i8*, i8** %6, align 8
  %202 = call i64 @t_isalpha(i8* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %200
  %205 = load i8*, i8** %13, align 8
  %206 = load i8*, i8** %6, align 8
  %207 = call i32 @COPYCHAR(i8* %205, i8* %206)
  %208 = load i8*, i8** %6, align 8
  %209 = call i32 @pg_mblen(i8* %208)
  %210 = load i8*, i8** %13, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8* %212, i8** %13, align 8
  br label %224

213:                                              ; preds = %200
  %214 = load i8*, i8** %6, align 8
  %215 = call i32 @t_isspace(i8* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %213
  %218 = load i32, i32* @ERROR, align 4
  %219 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %220 = call i32 @errcode(i32 %219)
  %221 = call i32 @errmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %222 = call i32 @ereport(i32 %218, i32 %221)
  br label %223

223:                                              ; preds = %217, %213
  br label %224

224:                                              ; preds = %223, %204
  br label %225

225:                                              ; preds = %224
  br label %230

226:                                              ; preds = %190
  %227 = load i32, i32* @ERROR, align 4
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @elog(i32 %227, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %226, %225
  br label %231

231:                                              ; preds = %230, %189
  br label %232

232:                                              ; preds = %231, %153
  br label %233

233:                                              ; preds = %232, %116
  br label %234

234:                                              ; preds = %233, %75
  br label %235

235:                                              ; preds = %234, %49
  %236 = load i8*, i8** %6, align 8
  %237 = call i32 @pg_mblen(i8* %236)
  %238 = load i8*, i8** %6, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %6, align 8
  br label %21

241:                                              ; preds = %198, %162, %21
  %242 = load i8*, i8** %13, align 8
  store i8 0, i8* %242, align 1
  %243 = load i8*, i8** %12, align 8
  store i8 0, i8* %243, align 1
  %244 = load i8*, i8** %11, align 8
  store i8 0, i8* %244, align 1
  %245 = load i8*, i8** %7, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %241
  %250 = load i8*, i8** %8, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %249
  %255 = load i8*, i8** %9, align 8
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp ne i32 %257, 0
  br label %259

259:                                              ; preds = %254, %249
  %260 = phi i1 [ true, %249 ], [ %258, %254 ]
  br label %261

261:                                              ; preds = %259, %241
  %262 = phi i1 [ false, %241 ], [ %260, %259 ]
  %263 = zext i1 %262 to i32
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %261, %33
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local i64 @t_iseq(i8*, i8 signext) #1

declare dso_local i32 @t_isspace(i8*) #1

declare dso_local i32 @COPYCHAR(i8*, i8*) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i64 @t_isalpha(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
