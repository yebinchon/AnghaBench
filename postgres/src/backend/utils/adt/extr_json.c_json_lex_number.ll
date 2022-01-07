; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_json_lex_number.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_json_lex_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32*, i32*)* @json_lex_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_lex_number(%struct.TYPE_4__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = ptrtoint i8* %11 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 48
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %77

34:                                               ; preds = %24, %4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sge i32 %43, 49
  br i1 %44, label %45, label %75

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 57
  br i1 %49, label %50, label %75

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %72, %50
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sge i32 %65, 48
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 57
  br label %72

72:                                               ; preds = %67, %62, %56
  %73 = phi i1 [ false, %62 ], [ false, %56 ], [ %71, %67 ]
  br i1 %73, label %51, label %74

74:                                               ; preds = %72
  br label %76

75:                                               ; preds = %45, %40, %34
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %74
  br label %77

77:                                               ; preds = %76, %29
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %135

83:                                               ; preds = %77
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 46
  br i1 %87, label %88, label %135

88:                                               ; preds = %83
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %88
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp slt i32 %101, 48
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i8*, i8** %6, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sgt i32 %106, 57
  br i1 %107, label %108, label %109

108:                                              ; preds = %103, %98, %88
  store i32 1, i32* %9, align 4
  br label %134

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %131, %109
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load i8*, i8** %6, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sge i32 %124, 48
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** %6, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp sle i32 %129, 57
  br label %131

131:                                              ; preds = %126, %121, %115
  %132 = phi i1 [ false, %121 ], [ false, %115 ], [ %130, %126 ]
  br i1 %132, label %110, label %133

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133, %108
  br label %135

135:                                              ; preds = %134, %83, %77
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %219

141:                                              ; preds = %135
  %142 = load i8*, i8** %6, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 101
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** %6, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 69
  br i1 %150, label %151, label %219

151:                                              ; preds = %146, %141
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %6, align 8
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %151
  %162 = load i8*, i8** %6, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 43
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load i8*, i8** %6, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 45
  br i1 %170, label %171, label %176

171:                                              ; preds = %166, %161
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %6, align 8
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %171, %166, %151
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %177, %180
  br i1 %181, label %192, label %182

182:                                              ; preds = %176
  %183 = load i8*, i8** %6, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp slt i32 %185, 48
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load i8*, i8** %6, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp sgt i32 %190, 57
  br i1 %191, label %192, label %193

192:                                              ; preds = %187, %182, %176
  store i32 1, i32* %9, align 4
  br label %218

193:                                              ; preds = %187
  br label %194

194:                                              ; preds = %215, %193
  %195 = load i8*, i8** %6, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %6, align 8
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %199

199:                                              ; preds = %194
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %199
  %206 = load i8*, i8** %6, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp sge i32 %208, 48
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i8*, i8** %6, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp sle i32 %213, 57
  br label %215

215:                                              ; preds = %210, %205, %199
  %216 = phi i1 [ false, %205 ], [ false, %199 ], [ %214, %210 ]
  br i1 %216, label %194, label %217

217:                                              ; preds = %215
  br label %218

218:                                              ; preds = %217, %192
  br label %219

219:                                              ; preds = %218, %146, %135
  br label %220

220:                                              ; preds = %234, %219
  %221 = load i32, i32* %10, align 4
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %220
  %227 = load i8*, i8** %6, align 8
  %228 = load i8, i8* %227, align 1
  %229 = call i64 @JSON_ALPHANUMERIC_CHAR(i8 signext %228)
  %230 = icmp ne i64 %229, 0
  br label %231

231:                                              ; preds = %226, %220
  %232 = phi i1 [ false, %220 ], [ %230, %226 ]
  br i1 %232, label %233, label %239

233:                                              ; preds = %231
  store i32 1, i32* %9, align 4
  br label %234

234:                                              ; preds = %233
  %235 = load i8*, i8** %6, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %6, align 8
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  br label %220

239:                                              ; preds = %231
  %240 = load i32*, i32** %8, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32, i32* %10, align 4
  %244 = load i32*, i32** %8, align 8
  store i32 %243, i32* %244, align 4
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i32*, i32** %7, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i32, i32* %9, align 4
  %250 = load i32*, i32** %7, align 8
  store i32 %249, i32* %250, align 4
  br label %266

251:                                              ; preds = %245
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 3
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 2
  store i8* %254, i8** %256, align 8
  %257 = load i8*, i8** %6, align 8
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 3
  store i8* %257, i8** %259, align 8
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %251
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %264 = call i32 @report_invalid_token(%struct.TYPE_4__* %263)
  br label %265

265:                                              ; preds = %262, %251
  br label %266

266:                                              ; preds = %265, %248
  ret void
}

declare dso_local i64 @JSON_ALPHANUMERIC_CHAR(i8 signext) #1

declare dso_local i32 @report_invalid_token(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
