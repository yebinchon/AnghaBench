; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/diverge3/keymaps/workman/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/diverge3/keymaps/workman/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SHIFT_MOD = common dso_local global i32 0, align 4
@X_DELETE = common dso_local global i32 0, align 4
@X_BSPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
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
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %260

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %259 [
    i32 128, label %24
    i32 137, label %49
    i32 136, label %70
    i32 135, label %91
    i32 134, label %112
    i32 133, label %133
    i32 132, label %154
    i32 131, label %175
    i32 130, label %196
    i32 129, label %217
    i32 138, label %238
  ]

24:                                               ; preds = %22
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = call i32 (...) @get_mods()
  %32 = load i32, i32* @SHIFT_MOD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = call i32 (...) @get_mods()
  store i32 %36, i32* %6, align 4
  %37 = call i32 (...) @clear_mods()
  %38 = load i32, i32* @X_DELETE, align 4
  %39 = call i8* @SS_TAP(i32 %38)
  %40 = call i32 @SEND_STRING(i8* %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @set_mods(i32 %41)
  br label %47

43:                                               ; preds = %30
  %44 = load i32, i32* @X_BSPACE, align 4
  %45 = call i8* @SS_TAP(i32 %44)
  %46 = call i32 @SEND_STRING(i8* %45)
  br label %47

47:                                               ; preds = %43, %35
  br label %48

48:                                               ; preds = %47, %24
  store i32 0, i32* %3, align 4
  br label %261

49:                                               ; preds = %22
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = call i32 (...) @get_mods()
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SHIFT_MOD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = call i32 (...) @clear_mods()
  %63 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @set_mods(i32 %64)
  br label %68

66:                                               ; preds = %55
  %67 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %61
  br label %69

69:                                               ; preds = %68, %49
  store i32 0, i32* %3, align 4
  br label %261

70:                                               ; preds = %22
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = call i32 (...) @get_mods()
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @SHIFT_MOD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = call i32 (...) @clear_mods()
  %84 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @set_mods(i32 %85)
  br label %89

87:                                               ; preds = %76
  %88 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  br label %90

90:                                               ; preds = %89, %70
  store i32 0, i32* %3, align 4
  br label %261

91:                                               ; preds = %22
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %91
  %98 = call i32 (...) @get_mods()
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @SHIFT_MOD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = call i32 (...) @clear_mods()
  %105 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @set_mods(i32 %106)
  br label %110

108:                                              ; preds = %97
  %109 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %103
  br label %111

111:                                              ; preds = %110, %91
  store i32 0, i32* %3, align 4
  br label %261

112:                                              ; preds = %22
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %112
  %119 = call i32 (...) @get_mods()
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @SHIFT_MOD, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = call i32 (...) @clear_mods()
  %126 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @set_mods(i32 %127)
  br label %131

129:                                              ; preds = %118
  %130 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  br label %132

132:                                              ; preds = %131, %112
  store i32 0, i32* %3, align 4
  br label %261

133:                                              ; preds = %22
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %133
  %140 = call i32 (...) @get_mods()
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @SHIFT_MOD, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = call i32 (...) @clear_mods()
  %147 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @set_mods(i32 %148)
  br label %152

150:                                              ; preds = %139
  %151 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %145
  br label %153

153:                                              ; preds = %152, %133
  store i32 0, i32* %3, align 4
  br label %261

154:                                              ; preds = %22
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %154
  %161 = call i32 (...) @get_mods()
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @SHIFT_MOD, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = call i32 (...) @clear_mods()
  %168 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @set_mods(i32 %169)
  br label %173

171:                                              ; preds = %160
  %172 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %166
  br label %174

174:                                              ; preds = %173, %154
  store i32 0, i32* %3, align 4
  br label %261

175:                                              ; preds = %22
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %175
  %182 = call i32 (...) @get_mods()
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @SHIFT_MOD, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = call i32 (...) @clear_mods()
  %189 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %190 = load i32, i32* %13, align 4
  %191 = call i32 @set_mods(i32 %190)
  br label %194

192:                                              ; preds = %181
  %193 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %187
  br label %195

195:                                              ; preds = %194, %175
  store i32 0, i32* %3, align 4
  br label %261

196:                                              ; preds = %22
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %196
  %203 = call i32 (...) @get_mods()
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* @SHIFT_MOD, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  %209 = call i32 (...) @clear_mods()
  %210 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %211 = load i32, i32* %14, align 4
  %212 = call i32 @set_mods(i32 %211)
  br label %215

213:                                              ; preds = %202
  %214 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213, %208
  br label %216

216:                                              ; preds = %215, %196
  store i32 0, i32* %3, align 4
  br label %261

217:                                              ; preds = %22
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %217
  %224 = call i32 (...) @get_mods()
  store i32 %224, i32* %15, align 4
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* @SHIFT_MOD, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %223
  %230 = call i32 (...) @clear_mods()
  %231 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @set_mods(i32 %232)
  br label %236

234:                                              ; preds = %223
  %235 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %236

236:                                              ; preds = %234, %229
  br label %237

237:                                              ; preds = %236, %217
  store i32 0, i32* %3, align 4
  br label %261

238:                                              ; preds = %22
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %238
  %245 = call i32 (...) @get_mods()
  store i32 %245, i32* %16, align 4
  %246 = load i32, i32* %16, align 4
  %247 = load i32, i32* @SHIFT_MOD, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = call i32 (...) @clear_mods()
  %252 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %253 = load i32, i32* %16, align 4
  %254 = call i32 @set_mods(i32 %253)
  br label %257

255:                                              ; preds = %244
  %256 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %257

257:                                              ; preds = %255, %250
  br label %258

258:                                              ; preds = %257, %238
  store i32 0, i32* %3, align 4
  br label %261

259:                                              ; preds = %22
  br label %260

260:                                              ; preds = %259, %2
  store i32 1, i32* %3, align 4
  br label %261

261:                                              ; preds = %260, %258, %237, %216, %195, %174, %153, %132, %111, %90, %69, %48
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @clear_mods(...) #1

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i8* @SS_TAP(i32) #1

declare dso_local i32 @set_mods(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
