; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_tab.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@Insstart_blank_vcol = common dso_local global i64 0, align 8
@MAXCOL = common dso_local global i64 0, align 8
@curwin = common dso_local global %struct.TYPE_12__* null, align 8
@Insstart = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TAB = common dso_local global i8 0, align 1
@ABBR_OFF = common dso_local global i8 0, align 1
@FALSE = common dso_local global i32 0, align 4
@curbuf = common dso_local global %struct.TYPE_11__* null, align 8
@p_sta = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@did_ai = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@State = common dso_local global i32 0, align 4
@REPLACE_FLAG = common dso_local global i32 0, align 4
@NUL = common dso_local global i32 0, align 4
@p_cpo = common dso_local global i32 0, align 4
@CPO_LISTWM = common dso_local global i32 0, align 4
@VREPLACE_FLAG = common dso_local global i32 0, align 4
@can_cindent = common dso_local global i32 0, align 4
@can_si = common dso_local global i32 0, align 4
@can_si_back = common dso_local global i32 0, align 4
@did_si = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ins_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ins_tab() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = load i64, i64* @Insstart_blank_vcol, align 8
  %15 = load i64, i64* @MAXCOL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 0), align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 (...) @get_nolist_virtcol()
  %26 = sext i32 %25 to i64
  store i64 %26, i64* @Insstart_blank_vcol, align 8
  br label %27

27:                                               ; preds = %24, %17, %0
  %28 = load i8, i8* @TAB, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @ABBR_OFF, align 1
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %29, %31
  %33 = trunc i32 %32 to i8
  %34 = call i64 @echeck_abbr(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %1, align 4
  br label %336

38:                                               ; preds = %27
  %39 = call i32 @inindent(i32 0)
  store i32 %39, i32* %2, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* @p_sta, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %55 = call i64 @get_sw_value(%struct.TYPE_11__* %54)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %50, %47, %44
  %58 = call i64 (...) @get_sts_value()
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %1, align 4
  br label %336

62:                                               ; preds = %57, %50, %38
  %63 = call i64 (...) @stop_arrow()
  %64 = load i64, i64* @FAIL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %1, align 4
  br label %336

68:                                               ; preds = %62
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* @did_ai, align 4
  %70 = call i32 @AppendToRedobuff(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %71 = load i64, i64* @p_sta, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32, i32* %2, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %78 = call i64 @get_sw_value(%struct.TYPE_11__* %77)
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %94

80:                                               ; preds = %73, %68
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = call i64 (...) @get_sts_value()
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %93

88:                                               ; preds = %80
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %88, %85
  br label %94

94:                                               ; preds = %93, %76
  %95 = call i32 (...) @get_nolist_virtcol()
  %96 = load i32, i32* %4, align 4
  %97 = srem i32 %95, %96
  %98 = load i32, i32* %4, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %4, align 4
  %100 = call i32 @ins_char(i8 signext 32)
  br label %101

101:                                              ; preds = %114, %94
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %4, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = call i32 @ins_str(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @State, align 4
  %108 = load i32, i32* @REPLACE_FLAG, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @NUL, align 4
  %113 = call i32 @replace_push(i32 %112)
  br label %114

114:                                              ; preds = %111, %105
  br label %101

115:                                              ; preds = %101
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %334, label %120

120:                                              ; preds = %115
  %121 = call i64 (...) @get_sts_value()
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %120
  %124 = load i64, i64* @p_sta, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %334

126:                                              ; preds = %123
  %127 = load i32, i32* %2, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %334

129:                                              ; preds = %126, %120
  store i32 -1, i32* %10, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %11, align 4
  %133 = call i8* (...) @ml_get_cursor()
  store i8* %133, i8** %5, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %7, align 8
  %136 = load i32, i32* @p_cpo, align 4
  %137 = load i32, i32* @CPO_LISTWM, align 4
  %138 = call i32* @vim_strchr(i32 %136, i32 %137)
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %129
  %141 = load i32, i32* @FALSE, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %140, %129
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = bitcast %struct.TYPE_10__* %6 to i8*
  %148 = bitcast %struct.TYPE_10__* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 16, i1 false)
  br label %149

149:                                              ; preds = %161, %144
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 -1
  %156 = load i8, i8* %155, align 1
  %157 = call i64 @vim_iswhite(i8 signext %156)
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %153, %149
  %160 = phi i1 [ false, %149 ], [ %158, %153 ]
  br i1 %160, label %161, label %167

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %162, align 8
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 -1
  store i8* %166, i8** %5, align 8
  br label %149

167:                                              ; preds = %159
  %168 = load i32, i32* @State, align 4
  %169 = load i32, i32* @REPLACE_FLAG, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 0), align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 1), align 8
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %177
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 1), align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 %183, %185
  %187 = load i8*, i8** %5, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8* %189, i8** %5, align 8
  %190 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 1), align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %190, i32* %191, align 8
  br label %192

192:                                              ; preds = %182, %177, %172, %167
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %194 = call i32 @getvcol(%struct.TYPE_12__* %193, %struct.TYPE_10__* %6, i64* %9, i32* null, i32* null)
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %197 = call i32 @getvcol(%struct.TYPE_12__* %195, %struct.TYPE_10__* %196, i64* %8, i32* null, i32* null)
  br label %198

198:                                              ; preds = %242, %192
  %199 = load i8*, i8** %5, align 8
  %200 = load i8, i8* %199, align 1
  %201 = call i64 @vim_iswhite(i8 signext %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %252

203:                                              ; preds = %198
  %204 = load i64, i64* %9, align 8
  %205 = call i32 @lbr_chartabsize(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %204)
  store i32 %205, i32* %3, align 4
  %206 = load i64, i64* %9, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %206, %208
  %210 = load i64, i64* %8, align 8
  %211 = icmp sgt i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %203
  br label %252

213:                                              ; preds = %203
  %214 = load i8*, i8** %5, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = load i8, i8* @TAB, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %216, %218
  br i1 %219, label %220, label %242

220:                                              ; preds = %213
  %221 = load i8, i8* @TAB, align 1
  %222 = load i8*, i8** %5, align 8
  store i8 %221, i8* %222, align 1
  %223 = load i32, i32* %10, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %10, align 4
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 0), align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %240

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 1), align 8
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  store i32 %239, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 1), align 8
  br label %240

240:                                              ; preds = %237, %232, %225
  br label %241

241:                                              ; preds = %240, %220
  br label %242

242:                                              ; preds = %241, %213
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 8
  %246 = load i8*, i8** %5, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %5, align 8
  %248 = load i32, i32* %3, align 4
  %249 = sext i32 %248 to i64
  %250 = load i64, i64* %9, align 8
  %251 = add nsw i64 %250, %249
  store i64 %251, i64* %9, align 8
  br label %198

252:                                              ; preds = %212, %198
  %253 = load i32, i32* %10, align 4
  %254 = icmp sge i32 %253, 0
  br i1 %254, label %255, label %330

255:                                              ; preds = %252
  store i32 0, i32* %12, align 4
  %256 = load i8*, i8** %5, align 8
  store i8* %256, i8** %13, align 8
  br label %257

257:                                              ; preds = %268, %255
  %258 = load i64, i64* %9, align 8
  %259 = load i64, i64* %8, align 8
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %257
  %262 = load i8*, i8** %5, align 8
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 32
  br label %266

266:                                              ; preds = %261, %257
  %267 = phi i1 [ false, %257 ], [ %265, %261 ]
  br i1 %267, label %268, label %280

268:                                              ; preds = %266
  %269 = load i8*, i8** %13, align 8
  %270 = load i8*, i8** %5, align 8
  %271 = load i64, i64* %9, align 8
  %272 = call i32 @lbr_chartabsize(i8* %269, i8* %270, i64 %271)
  %273 = sext i32 %272 to i64
  %274 = load i64, i64* %9, align 8
  %275 = add nsw i64 %274, %273
  store i64 %275, i64* %9, align 8
  %276 = load i8*, i8** %5, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %5, align 8
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %12, align 4
  br label %257

280:                                              ; preds = %266
  %281 = load i64, i64* %9, align 8
  %282 = load i64, i64* %8, align 8
  %283 = icmp sgt i64 %281, %282
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  %285 = load i8*, i8** %5, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 -1
  store i8* %286, i8** %5, align 8
  %287 = load i32, i32* %12, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %12, align 4
  br label %289

289:                                              ; preds = %284, %280
  %290 = load i32, i32* %12, align 4
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = add nsw i32 %292, %290
  store i32 %293, i32* %291, align 8
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = sub nsw i32 %296, %298
  store i32 %299, i32* %3, align 4
  %300 = load i32, i32* %3, align 4
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %324

302:                                              ; preds = %289
  %303 = load i8*, i8** %5, align 8
  %304 = load i8*, i8** %5, align 8
  %305 = load i32, i32* %3, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %304, i64 %306
  %308 = call i32 @STRMOVE(i8* %303, i8* %307)
  %309 = load i32, i32* @State, align 4
  %310 = load i32, i32* @REPLACE_FLAG, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %323

313:                                              ; preds = %302
  %314 = load i32, i32* %3, align 4
  store i32 %314, i32* %4, align 4
  br label %315

315:                                              ; preds = %319, %313
  %316 = load i32, i32* %4, align 4
  %317 = add nsw i32 %316, -1
  store i32 %317, i32* %4, align 4
  %318 = icmp sge i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %315
  %320 = load i32, i32* %12, align 4
  %321 = call i32 @replace_join(i32 %320)
  br label %315

322:                                              ; preds = %315
  br label %323

323:                                              ; preds = %322, %302
  br label %324

324:                                              ; preds = %323, %289
  %325 = load i32, i32* %3, align 4
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = sub nsw i32 %328, %325
  store i32 %329, i32* %327, align 8
  br label %330

330:                                              ; preds = %324, %252
  %331 = load i32, i32* %11, align 4
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 8
  br label %334

334:                                              ; preds = %330, %126, %123, %115
  %335 = load i32, i32* @FALSE, align 4
  store i32 %335, i32* %1, align 4
  br label %336

336:                                              ; preds = %334, %66, %60, %36
  %337 = load i32, i32* %1, align 4
  ret i32 %337
}

declare dso_local i32 @get_nolist_virtcol(...) #1

declare dso_local i64 @echeck_abbr(i8 signext) #1

declare dso_local i32 @inindent(i32) #1

declare dso_local i64 @get_sw_value(%struct.TYPE_11__*) #1

declare dso_local i64 @get_sts_value(...) #1

declare dso_local i64 @stop_arrow(...) #1

declare dso_local i32 @AppendToRedobuff(i8*) #1

declare dso_local i32 @ins_char(i8 signext) #1

declare dso_local i32 @ins_str(i8*) #1

declare dso_local i32 @replace_push(i32) #1

declare dso_local i8* @ml_get_cursor(...) #1

declare dso_local i32* @vim_strchr(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vim_iswhite(i8 signext) #1

declare dso_local i32 @getvcol(%struct.TYPE_12__*, %struct.TYPE_10__*, i64*, i32*, i32*) #1

declare dso_local i32 @lbr_chartabsize(i8*, i8*, i64) #1

declare dso_local i32 @STRMOVE(i8*, i8*) #1

declare dso_local i32 @replace_join(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
