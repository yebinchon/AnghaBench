; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_opmask.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_opmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_BIT = common dso_local global i32 0, align 4
@S_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@WB_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@WT_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"db\00", align 1
@DB_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"ea\00", align 1
@EA_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"ia\00", align 1
@IA_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@FD_BIT = common dso_local global i32 0, align 4
@L_BIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@BB_BIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@TT_BIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@BT_BIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"tb\00", align 1
@TB_BIT = common dso_local global i32 0, align 4
@W_BIT = common dso_local global i32 0, align 4
@B_BIT = common dso_local global i32 0, align 4
@H_BIT = common dso_local global i32 0, align 4
@D_BIT = common dso_local global i32 0, align 4
@T_BIT = common dso_local global i32 0, align 4
@R_BIT = common dso_local global i32 0, align 4
@TWO_BIT = common dso_local global i32 0, align 4
@EIGHT_BIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@SIXTEEN_BIT = common dso_local global i32 0, align 4
@X_BIT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@ID_BIT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"ie\00", align 1
@IE_BIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@SH_BIT = common dso_local global i32 0, align 4
@C_MATCH_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @opmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opmask(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @r_str_case(i8* %9, i32 0)
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %502

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @r_str_startswith(i8* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %501

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 %24
  store i8* %26, i8** %5, align 8
  %27 = load i32, i32* @M_BIT, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = call i32 @cqcheck(i8** %5)
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 115
  br i1 %36, label %37, label %48

37:                                               ; preds = %22
  %38 = load i32, i32* @S_BIT, align 4
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @S_BIT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  br label %48

48:                                               ; preds = %42, %37, %22
  %49 = call i32 @cqcheck(i8** %5)
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @r_str_startswith(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load i32, i32* @WB_BIT, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @WB_BIT, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %60, %55, %48
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @r_str_startswith(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i32, i32* @WT_BIT, align 4
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* @WT_BIT, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %5, align 8
  br label %81

81:                                               ; preds = %75, %70, %66
  %82 = call i32 @cqcheck(i8** %5)
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @r_str_startswith(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load i32, i32* @DB_BIT, align 4
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* @DB_BIT, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  store i8* %98, i8** %5, align 8
  br label %99

99:                                               ; preds = %93, %88, %81
  %100 = load i8*, i8** %5, align 8
  %101 = call i64 @r_str_startswith(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load i32, i32* @EA_BIT, align 4
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32, i32* @EA_BIT, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  store i8* %113, i8** %5, align 8
  br label %114

114:                                              ; preds = %108, %103, %99
  %115 = load i8*, i8** %5, align 8
  %116 = call i64 @r_str_startswith(i8* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load i32, i32* @IA_BIT, align 4
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* @IA_BIT, align 4
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 2
  store i8* %128, i8** %5, align 8
  br label %129

129:                                              ; preds = %123, %118, %114
  %130 = load i8*, i8** %5, align 8
  %131 = call i64 @r_str_startswith(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load i32, i32* @FD_BIT, align 4
  %135 = load i32, i32* %7, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32, i32* @FD_BIT, align 4
  %140 = load i32, i32* %8, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  store i8* %143, i8** %5, align 8
  br label %144

144:                                              ; preds = %138, %133, %129
  %145 = call i32 @cqcheck(i8** %5)
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  %148 = load i8*, i8** %5, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 108
  br i1 %151, label %152, label %163

152:                                              ; preds = %144
  %153 = load i32, i32* @L_BIT, align 4
  %154 = load i32, i32* %7, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i32, i32* @L_BIT, align 4
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %5, align 8
  br label %163

163:                                              ; preds = %157, %152, %144
  %164 = call i32 @cqcheck(i8** %5)
  %165 = load i32, i32* %8, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %8, align 4
  %167 = load i8*, i8** %5, align 8
  %168 = call i64 @r_str_startswith(i8* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  %171 = load i32, i32* @BB_BIT, align 4
  %172 = load i32, i32* %7, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, i32* @BB_BIT, align 4
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %8, align 4
  %179 = load i8*, i8** %5, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  store i8* %180, i8** %5, align 8
  br label %181

181:                                              ; preds = %175, %170, %163
  %182 = load i8*, i8** %5, align 8
  %183 = call i64 @r_str_startswith(i8* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %181
  %186 = load i32, i32* @TT_BIT, align 4
  %187 = load i32, i32* %7, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load i32, i32* @TT_BIT, align 4
  %192 = load i32, i32* %8, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %8, align 4
  %194 = load i8*, i8** %5, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 2
  store i8* %195, i8** %5, align 8
  br label %196

196:                                              ; preds = %190, %185, %181
  %197 = load i8*, i8** %5, align 8
  %198 = call i64 @r_str_startswith(i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %196
  %201 = load i32, i32* @BT_BIT, align 4
  %202 = load i32, i32* %7, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load i32, i32* @BT_BIT, align 4
  %207 = load i32, i32* %8, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %8, align 4
  %209 = load i8*, i8** %5, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 2
  store i8* %210, i8** %5, align 8
  br label %211

211:                                              ; preds = %205, %200, %196
  %212 = load i8*, i8** %5, align 8
  %213 = call i64 @r_str_startswith(i8* %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %211
  %216 = load i32, i32* @TB_BIT, align 4
  %217 = load i32, i32* %7, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load i32, i32* @TB_BIT, align 4
  %222 = load i32, i32* %8, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %8, align 4
  %224 = load i8*, i8** %5, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 2
  store i8* %225, i8** %5, align 8
  br label %226

226:                                              ; preds = %220, %215, %211
  %227 = call i32 @cqcheck(i8** %5)
  %228 = load i32, i32* %8, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %8, align 4
  %230 = load i8*, i8** %5, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 119
  br i1 %233, label %234, label %245

234:                                              ; preds = %226
  %235 = load i32, i32* @W_BIT, align 4
  %236 = load i32, i32* %7, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load i32, i32* @W_BIT, align 4
  %241 = load i32, i32* %8, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %8, align 4
  %243 = load i8*, i8** %5, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %5, align 8
  br label %245

245:                                              ; preds = %239, %234, %226
  %246 = load i8*, i8** %5, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 98
  br i1 %249, label %250, label %261

250:                                              ; preds = %245
  %251 = load i32, i32* @B_BIT, align 4
  %252 = load i32, i32* %7, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = load i32, i32* @B_BIT, align 4
  %257 = load i32, i32* %8, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %8, align 4
  %259 = load i8*, i8** %5, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %5, align 8
  br label %295

261:                                              ; preds = %250, %245
  %262 = load i8*, i8** %5, align 8
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 104
  br i1 %265, label %266, label %277

266:                                              ; preds = %261
  %267 = load i32, i32* @H_BIT, align 4
  %268 = load i32, i32* %7, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %266
  %272 = load i32, i32* @H_BIT, align 4
  %273 = load i32, i32* %8, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %8, align 4
  %275 = load i8*, i8** %5, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %5, align 8
  br label %294

277:                                              ; preds = %266, %261
  %278 = load i8*, i8** %5, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 100
  br i1 %281, label %282, label %293

282:                                              ; preds = %277
  %283 = load i32, i32* @D_BIT, align 4
  %284 = load i32, i32* %7, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %282
  %288 = load i32, i32* @D_BIT, align 4
  %289 = load i32, i32* %8, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %8, align 4
  %291 = load i8*, i8** %5, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %5, align 8
  br label %293

293:                                              ; preds = %287, %282, %277
  br label %294

294:                                              ; preds = %293, %271
  br label %295

295:                                              ; preds = %294, %255
  %296 = load i8*, i8** %5, align 8
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 116
  br i1 %299, label %300, label %311

300:                                              ; preds = %295
  %301 = load i32, i32* @T_BIT, align 4
  %302 = load i32, i32* %7, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %300
  %306 = load i32, i32* @T_BIT, align 4
  %307 = load i32, i32* %8, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %8, align 4
  %309 = load i8*, i8** %5, align 8
  %310 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %310, i8** %5, align 8
  br label %311

311:                                              ; preds = %305, %300, %295
  %312 = load i8*, i8** %5, align 8
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp eq i32 %314, 115
  br i1 %315, label %316, label %327

316:                                              ; preds = %311
  %317 = load i32, i32* @S_BIT, align 4
  %318 = load i32, i32* %7, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %316
  %322 = load i32, i32* @S_BIT, align 4
  %323 = load i32, i32* %8, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %8, align 4
  %325 = load i8*, i8** %5, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %5, align 8
  br label %327

327:                                              ; preds = %321, %316, %311
  %328 = call i32 @cqcheck(i8** %5)
  %329 = load i32, i32* %8, align 4
  %330 = or i32 %329, %328
  store i32 %330, i32* %8, align 4
  %331 = load i8*, i8** %5, align 8
  %332 = load i8, i8* %331, align 1
  %333 = sext i8 %332 to i32
  %334 = icmp eq i32 %333, 114
  br i1 %334, label %335, label %346

335:                                              ; preds = %327
  %336 = load i32, i32* @R_BIT, align 4
  %337 = load i32, i32* %7, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %335
  %341 = load i32, i32* @R_BIT, align 4
  %342 = load i32, i32* %8, align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* %8, align 4
  %344 = load i8*, i8** %5, align 8
  %345 = getelementptr inbounds i8, i8* %344, i32 1
  store i8* %345, i8** %5, align 8
  br label %346

346:                                              ; preds = %340, %335, %327
  %347 = call i32 @cqcheck(i8** %5)
  %348 = load i32, i32* %8, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %8, align 4
  %350 = load i8*, i8** %5, align 8
  %351 = load i8, i8* %350, align 1
  %352 = sext i8 %351 to i32
  %353 = icmp eq i32 %352, 50
  br i1 %353, label %354, label %365

354:                                              ; preds = %346
  %355 = load i32, i32* @TWO_BIT, align 4
  %356 = load i32, i32* %7, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %354
  %360 = load i32, i32* @TWO_BIT, align 4
  %361 = load i32, i32* %8, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %8, align 4
  %363 = load i8*, i8** %5, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %5, align 8
  br label %365

365:                                              ; preds = %359, %354, %346
  %366 = load i8*, i8** %5, align 8
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i32
  %369 = icmp eq i32 %368, 56
  br i1 %369, label %370, label %381

370:                                              ; preds = %365
  %371 = load i32, i32* @EIGHT_BIT, align 4
  %372 = load i32, i32* %7, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %370
  %376 = load i32, i32* @EIGHT_BIT, align 4
  %377 = load i32, i32* %8, align 4
  %378 = or i32 %377, %376
  store i32 %378, i32* %8, align 4
  %379 = load i8*, i8** %5, align 8
  %380 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %380, i8** %5, align 8
  br label %381

381:                                              ; preds = %375, %370, %365
  %382 = load i8*, i8** %5, align 8
  %383 = call i64 @r_str_startswith(i8* %382, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %396

385:                                              ; preds = %381
  %386 = load i32, i32* @SIXTEEN_BIT, align 4
  %387 = load i32, i32* %7, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %385
  %391 = load i32, i32* @SIXTEEN_BIT, align 4
  %392 = load i32, i32* %8, align 4
  %393 = or i32 %392, %391
  store i32 %393, i32* %8, align 4
  %394 = load i8*, i8** %5, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 2
  store i8* %395, i8** %5, align 8
  br label %396

396:                                              ; preds = %390, %385, %381
  %397 = call i32 @cqcheck(i8** %5)
  %398 = load i32, i32* %8, align 4
  %399 = or i32 %398, %397
  store i32 %399, i32* %8, align 4
  %400 = load i8*, i8** %5, align 8
  %401 = load i8, i8* %400, align 1
  %402 = sext i8 %401 to i32
  %403 = icmp eq i32 %402, 108
  br i1 %403, label %404, label %415

404:                                              ; preds = %396
  %405 = load i32, i32* @L_BIT, align 4
  %406 = load i32, i32* %7, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %404
  %410 = load i32, i32* @L_BIT, align 4
  %411 = load i32, i32* %8, align 4
  %412 = or i32 %411, %410
  store i32 %412, i32* %8, align 4
  %413 = load i8*, i8** %5, align 8
  %414 = getelementptr inbounds i8, i8* %413, i32 1
  store i8* %414, i8** %5, align 8
  br label %415

415:                                              ; preds = %409, %404, %396
  %416 = load i8*, i8** %5, align 8
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp eq i32 %418, 120
  br i1 %419, label %420, label %431

420:                                              ; preds = %415
  %421 = load i32, i32* @X_BIT, align 4
  %422 = load i32, i32* %7, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %431

425:                                              ; preds = %420
  %426 = load i32, i32* @X_BIT, align 4
  %427 = load i32, i32* %8, align 4
  %428 = or i32 %427, %426
  store i32 %428, i32* %8, align 4
  %429 = load i8*, i8** %5, align 8
  %430 = getelementptr inbounds i8, i8* %429, i32 1
  store i8* %430, i8** %5, align 8
  br label %431

431:                                              ; preds = %425, %420, %415
  %432 = call i32 @cqcheck(i8** %5)
  %433 = load i32, i32* %8, align 4
  %434 = or i32 %433, %432
  store i32 %434, i32* %8, align 4
  %435 = load i8*, i8** %5, align 8
  %436 = call i64 @r_str_startswith(i8* %435, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %449

438:                                              ; preds = %431
  %439 = load i32, i32* @ID_BIT, align 4
  %440 = load i32, i32* %7, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %438
  %444 = load i32, i32* @ID_BIT, align 4
  %445 = load i32, i32* %8, align 4
  %446 = or i32 %445, %444
  store i32 %446, i32* %8, align 4
  %447 = load i8*, i8** %5, align 8
  %448 = getelementptr inbounds i8, i8* %447, i64 2
  store i8* %448, i8** %5, align 8
  br label %449

449:                                              ; preds = %443, %438, %431
  %450 = load i8*, i8** %5, align 8
  %451 = call i64 @r_str_startswith(i8* %450, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %464

453:                                              ; preds = %449
  %454 = load i32, i32* @IE_BIT, align 4
  %455 = load i32, i32* %7, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %464

458:                                              ; preds = %453
  %459 = load i32, i32* @IE_BIT, align 4
  %460 = load i32, i32* %8, align 4
  %461 = or i32 %460, %459
  store i32 %461, i32* %8, align 4
  %462 = load i8*, i8** %5, align 8
  %463 = getelementptr inbounds i8, i8* %462, i64 2
  store i8* %463, i8** %5, align 8
  br label %464

464:                                              ; preds = %458, %453, %449
  %465 = call i32 @cqcheck(i8** %5)
  %466 = load i32, i32* %8, align 4
  %467 = or i32 %466, %465
  store i32 %467, i32* %8, align 4
  %468 = load i8*, i8** %5, align 8
  %469 = call i64 @r_str_startswith(i8* %468, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %482

471:                                              ; preds = %464
  %472 = load i32, i32* @SH_BIT, align 4
  %473 = load i32, i32* %7, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %482

476:                                              ; preds = %471
  %477 = load i32, i32* @SH_BIT, align 4
  %478 = load i32, i32* %8, align 4
  %479 = or i32 %478, %477
  store i32 %479, i32* %8, align 4
  %480 = load i8*, i8** %5, align 8
  %481 = getelementptr inbounds i8, i8* %480, i64 2
  store i8* %481, i8** %5, align 8
  br label %482

482:                                              ; preds = %476, %471, %464
  %483 = call i32 @cqcheck(i8** %5)
  %484 = load i32, i32* %8, align 4
  %485 = or i32 %484, %483
  store i32 %485, i32* %8, align 4
  %486 = load i32, i32* %8, align 4
  %487 = load i32, i32* @C_MATCH_BIT, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %493, label %490

490:                                              ; preds = %482
  %491 = load i32, i32* %8, align 4
  %492 = or i32 %491, 60
  store i32 %492, i32* %8, align 4
  br label %493

493:                                              ; preds = %490, %482
  %494 = load i8*, i8** %5, align 8
  %495 = load i8, i8* %494, align 1
  %496 = sext i8 %495 to i32
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %500

498:                                              ; preds = %493
  %499 = load i32, i32* %8, align 4
  store i32 %499, i32* %4, align 4
  br label %502

500:                                              ; preds = %493
  br label %501

501:                                              ; preds = %500, %17
  store i32 0, i32* %4, align 4
  br label %502

502:                                              ; preds = %501, %498, %16
  %503 = load i32, i32* %4, align 4
  ret i32 %503
}

declare dso_local i32 @r_str_case(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

declare dso_local i32 @cqcheck(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
