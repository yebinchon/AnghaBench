; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_PQsetdbLogin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_PQsetdbLogin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CONNECTION_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @PQsetdbLogin(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = call %struct.TYPE_8__* (...) @makeEmptyPGconn()
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %16, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %277

21:                                               ; preds = %7
  %22 = load i8*, i8** %13, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i8*, i8** %13, align 8
  %26 = call i64 @recognized_connection_string(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @connectOptions1(%struct.TYPE_8__* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %8, align 8
  br label %277

35:                                               ; preds = %28
  br label %73

36:                                               ; preds = %24, %21
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %38 = call i32 @connectOptions1(%struct.TYPE_8__* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %8, align 8
  br label %277

42:                                               ; preds = %36
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %72

45:                                               ; preds = %42
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 8
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @free(i8* %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i8*, i8** %13, align 8
  %63 = call i8* @strdup(i8* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %268

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %45, %42
  br label %73

73:                                               ; preds = %72, %35
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %103

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %76
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 7
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 7
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i8*, i8** %9, align 8
  %94 = call i8* @strdup(i8* %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 7
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 7
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %268

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %76, %73
  %104 = load i8*, i8** %10, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %133

106:                                              ; preds = %103
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 6
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 6
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @free(i8* %120)
  br label %122

122:                                              ; preds = %117, %112
  %123 = load i8*, i8** %10, align 8
  %124 = call i8* @strdup(i8* %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 6
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 6
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %122
  br label %268

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %106, %103
  %134 = load i8*, i8** %11, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %163

136:                                              ; preds = %133
  %137 = load i8*, i8** %11, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %136
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 5
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @free(i8* %150)
  br label %152

152:                                              ; preds = %147, %142
  %153 = load i8*, i8** %11, align 8
  %154 = call i8* @strdup(i8* %153)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 5
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 5
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %152
  br label %268

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %136, %133
  %164 = load i8*, i8** %12, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %193

166:                                              ; preds = %163
  %167 = load i8*, i8** %12, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %193

172:                                              ; preds = %166
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 4
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @free(i8* %180)
  br label %182

182:                                              ; preds = %177, %172
  %183 = load i8*, i8** %12, align 8
  %184 = call i8* @strdup(i8* %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 4
  store i8* %184, i8** %186, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %182
  br label %268

192:                                              ; preds = %182
  br label %193

193:                                              ; preds = %192, %166, %163
  %194 = load i8*, i8** %14, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %223

196:                                              ; preds = %193
  %197 = load i8*, i8** %14, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %223

202:                                              ; preds = %196
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 3
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 3
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @free(i8* %210)
  br label %212

212:                                              ; preds = %207, %202
  %213 = load i8*, i8** %14, align 8
  %214 = call i8* @strdup(i8* %213)
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  store i8* %214, i8** %216, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  %219 = load i8*, i8** %218, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %212
  br label %268

222:                                              ; preds = %212
  br label %223

223:                                              ; preds = %222, %196, %193
  %224 = load i8*, i8** %15, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %253

226:                                              ; preds = %223
  %227 = load i8*, i8** %15, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %226
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  %235 = load i8*, i8** %234, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @free(i8* %240)
  br label %242

242:                                              ; preds = %237, %232
  %243 = load i8*, i8** %15, align 8
  %244 = call i8* @strdup(i8* %243)
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 2
  store i8* %244, i8** %246, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 2
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %242
  br label %268

252:                                              ; preds = %242
  br label %253

253:                                              ; preds = %252, %226, %223
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %255 = call i32 @connectOptions2(%struct.TYPE_8__* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %253
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %258, %struct.TYPE_8__** %8, align 8
  br label %277

259:                                              ; preds = %253
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %261 = call i64 @connectDBStart(%struct.TYPE_8__* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %265 = call i32 @connectDBComplete(%struct.TYPE_8__* %264)
  br label %266

266:                                              ; preds = %263, %259
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %267, %struct.TYPE_8__** %8, align 8
  br label %277

268:                                              ; preds = %251, %221, %191, %161, %131, %101, %70
  %269 = load i32, i32* @CONNECTION_BAD, align 4
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %275 = call i32 @printfPQExpBuffer(i32* %273, i32 %274)
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %276, %struct.TYPE_8__** %8, align 8
  br label %277

277:                                              ; preds = %268, %266, %257, %40, %33, %20
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  ret %struct.TYPE_8__* %278
}

declare dso_local %struct.TYPE_8__* @makeEmptyPGconn(...) #1

declare dso_local i64 @recognized_connection_string(i8*) #1

declare dso_local i32 @connectOptions1(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @connectOptions2(%struct.TYPE_8__*) #1

declare dso_local i64 @connectDBStart(%struct.TYPE_8__*) #1

declare dso_local i32 @connectDBComplete(%struct.TYPE_8__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
