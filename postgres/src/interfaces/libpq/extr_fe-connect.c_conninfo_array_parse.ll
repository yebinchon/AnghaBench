; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_array_parse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_array_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid connection option \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8**, i8**, i32, i32, i32)* @conninfo_array_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @conninfo_array_parse(i8** %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %64, %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8**, i8*** %7, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br label %32

32:                                               ; preds = %25, %22
  %33 = phi i1 [ false, %22 ], [ %31, %25 ]
  br i1 %33, label %34, label %67

34:                                               ; preds = %32
  %35 = load i8**, i8*** %7, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %16, align 8
  %40 = load i8**, i8*** %8, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %17, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %34
  %49 = load i8*, i8** %17, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i8*, i8** %17, align 8
  %53 = call i64 @recognized_connection_string(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i8*, i8** %17, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call %struct.TYPE_7__* @parse_connection_string(i8* %56, i32 %57, i32 0)
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %13, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %60 = icmp eq %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %277

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %51
  br label %67

64:                                               ; preds = %48, %34
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %22

67:                                               ; preds = %63, %32
  %68 = load i32, i32* %9, align 4
  %69 = call %struct.TYPE_7__* @conninfo_init(i32 %68)
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %12, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %71 = icmp eq %struct.TYPE_7__* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %74 = call i32 @PQconninfoFree(%struct.TYPE_7__* %73)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %277

75:                                               ; preds = %67
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %258, %75
  %77 = load i8**, i8*** %7, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %261

83:                                               ; preds = %76
  %84 = load i8**, i8*** %7, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %18, align 8
  %89 = load i8**, i8*** %8, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %19, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %258

96:                                               ; preds = %83
  %97 = load i8*, i8** %19, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %258

102:                                              ; preds = %96
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %14, align 8
  br label %104

104:                                              ; preds = %118, %102
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = call i64 @strcmp(i8* %112, i8* %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %121

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 1
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %14, align 8
  br label %104

121:                                              ; preds = %116, %104
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @libpq_gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i8*, i8** %18, align 8
  %130 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %127, i32 %128, i8* %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %132 = call i32 @PQconninfoFree(%struct.TYPE_7__* %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %134 = call i32 @PQconninfoFree(%struct.TYPE_7__* %133)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %277

135:                                              ; preds = %121
  %136 = load i8*, i8** %18, align 8
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %229

139:                                              ; preds = %135
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %141 = icmp ne %struct.TYPE_7__* %140, null
  br i1 %141, label %142, label %229

142:                                              ; preds = %139
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %143, %struct.TYPE_7__** %20, align 8
  br label %144

144:                                              ; preds = %223, %142
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %226

149:                                              ; preds = %144
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %222

154:                                              ; preds = %149
  store i32 0, i32* %21, align 4
  br label %155

155:                                              ; preds = %218, %154
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %157 = load i32, i32* %21, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %221

163:                                              ; preds = %155
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %165 = load i32, i32* %21, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @strcmp(i8* %169, i8* %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %217

175:                                              ; preds = %163
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %177 = load i32, i32* %21, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %175
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %185 = load i32, i32* %21, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @free(i8* %189)
  br label %191

191:                                              ; preds = %183, %175
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = call i8* @strdup(i8* %194)
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %197 = load i32, i32* %21, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  store i8* %195, i8** %200, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %202 = load i32, i32* %21, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %216, label %208

208:                                              ; preds = %191
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %211 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %209, i32 %210)
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %213 = call i32 @PQconninfoFree(%struct.TYPE_7__* %212)
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %215 = call i32 @PQconninfoFree(%struct.TYPE_7__* %214)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %277

216:                                              ; preds = %191
  br label %221

217:                                              ; preds = %163
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %21, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %21, align 4
  br label %155

221:                                              ; preds = %216, %155
  br label %222

222:                                              ; preds = %221, %149
  br label %223

223:                                              ; preds = %222
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 1
  store %struct.TYPE_7__* %225, %struct.TYPE_7__** %20, align 8
  br label %144

226:                                              ; preds = %144
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %228 = call i32 @PQconninfoFree(%struct.TYPE_7__* %227)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  br label %257

229:                                              ; preds = %139, %135
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @free(i8* %237)
  br label %239

239:                                              ; preds = %234, %229
  %240 = load i8*, i8** %19, align 8
  %241 = call i8* @strdup(i8* %240)
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 1
  store i8* %241, i8** %243, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %256, label %248

248:                                              ; preds = %239
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %251 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %249, i32 %250)
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %253 = call i32 @PQconninfoFree(%struct.TYPE_7__* %252)
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %255 = call i32 @PQconninfoFree(%struct.TYPE_7__* %254)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %277

256:                                              ; preds = %239
  br label %257

257:                                              ; preds = %256, %226
  br label %258

258:                                              ; preds = %257, %96, %83
  %259 = load i32, i32* %15, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %15, align 4
  br label %76

261:                                              ; preds = %76
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %263 = call i32 @PQconninfoFree(%struct.TYPE_7__* %262)
  %264 = load i32, i32* %10, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %261
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %268 = load i32, i32* %9, align 4
  %269 = call i32 @conninfo_add_defaults(%struct.TYPE_7__* %267, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %266
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %273 = call i32 @PQconninfoFree(%struct.TYPE_7__* %272)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %277

274:                                              ; preds = %266
  br label %275

275:                                              ; preds = %274, %261
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %276, %struct.TYPE_7__** %6, align 8
  br label %277

277:                                              ; preds = %275, %271, %248, %208, %126, %72, %61
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %278
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @recognized_connection_string(i8*) #1

declare dso_local %struct.TYPE_7__* @parse_connection_string(i8*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @conninfo_init(i32) #1

declare dso_local i32 @PQconninfoFree(%struct.TYPE_7__*) #1

declare dso_local i32 @printfPQExpBuffer(i32, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @conninfo_add_defaults(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
