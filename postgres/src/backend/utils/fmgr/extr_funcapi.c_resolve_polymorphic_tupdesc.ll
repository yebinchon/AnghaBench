; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_resolve_polymorphic_tupdesc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_resolve_polymorphic_tupdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32 }

@InvalidOid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*)* @resolve_polymorphic_tupdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_polymorphic_tupdesc(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = load i64, i64* @InvalidOid, align 8
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* @InvalidOid, align 8
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* @InvalidOid, align 8
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* @InvalidOid, align 8
  store i64 %32, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %33

33:                                               ; preds = %50, %3
  %34 = load i32, i32* %19, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = load i32, i32* %19, align 4
  %40 = call %struct.TYPE_12__* @TupleDescAttr(%struct.TYPE_11__* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %48 [
    i32 131, label %43
    i32 132, label %44
    i32 129, label %45
    i32 130, label %46
    i32 128, label %47
  ]

43:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  br label %49

44:                                               ; preds = %37
  store i32 1, i32* %11, align 4
  br label %49

45:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  store i32 1, i32* %13, align 4
  br label %49

46:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %49

47:                                               ; preds = %37
  store i32 1, i32* %12, align 4
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %47, %46, %45, %44, %43
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %19, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %19, align 4
  br label %33

53:                                               ; preds = %33
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %277

63:                                               ; preds = %59, %56, %53
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %277

67:                                               ; preds = %63
  store i32 0, i32* %19, align 4
  br label %68

68:                                               ; preds = %109, %67
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %112

72:                                               ; preds = %68
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %107 [
    i32 131, label %80
    i32 129, label %80
    i32 130, label %80
    i32 132, label %89
    i32 128, label %98
  ]

80:                                               ; preds = %72, %72, %72
  %81 = load i64, i64* %15, align 8
  %82 = call i64 @OidIsValid(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %19, align 4
  %87 = call i64 @get_call_expr_argtype(i32* %85, i32 %86)
  store i64 %87, i64* %15, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %108

89:                                               ; preds = %72
  %90 = load i64, i64* %16, align 8
  %91 = call i64 @OidIsValid(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %19, align 4
  %96 = call i64 @get_call_expr_argtype(i32* %94, i32 %95)
  store i64 %96, i64* %16, align 8
  br label %97

97:                                               ; preds = %93, %89
  br label %108

98:                                               ; preds = %72
  %99 = load i64, i64* %17, align 8
  %100 = call i64 @OidIsValid(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %19, align 4
  %105 = call i64 @get_call_expr_argtype(i32* %103, i32 %104)
  store i64 %105, i64* %17, align 8
  br label %106

106:                                              ; preds = %102, %98
  br label %108

107:                                              ; preds = %72
  br label %108

108:                                              ; preds = %107, %106, %97, %88
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  br label %68

112:                                              ; preds = %68
  %113 = load i64, i64* %15, align 8
  %114 = call i64 @OidIsValid(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %16, align 8
  %118 = call i64 @OidIsValid(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = load i64, i64* %17, align 8
  %122 = call i64 @OidIsValid(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %277

125:                                              ; preds = %120, %116, %112
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %157

128:                                              ; preds = %125
  %129 = load i64, i64* %15, align 8
  %130 = call i64 @OidIsValid(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %157, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* %16, align 8
  %134 = call i64 @OidIsValid(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i64, i64* %16, align 8
  %138 = call i64 @resolve_generic_type(i32 131, i64 %137, i32 132)
  store i64 %138, i64* %15, align 8
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i64, i64* %17, align 8
  %141 = call i64 @OidIsValid(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %139
  %144 = load i64, i64* %17, align 8
  %145 = call i64 @resolve_generic_type(i32 131, i64 %144, i32 128)
  store i64 %145, i64* %20, align 8
  %146 = load i64, i64* %15, align 8
  %147 = call i64 @OidIsValid(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %20, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %277

154:                                              ; preds = %149, %143
  %155 = load i64, i64* %20, align 8
  store i64 %155, i64* %15, align 8
  br label %156

156:                                              ; preds = %154, %139
  br label %157

157:                                              ; preds = %156, %128, %125
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load i64, i64* %16, align 8
  %162 = call i64 @OidIsValid(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = load i64, i64* %15, align 8
  %166 = call i64 @resolve_generic_type(i32 132, i64 %165, i32 131)
  store i64 %166, i64* %16, align 8
  br label %167

167:                                              ; preds = %164, %160, %157
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i64, i64* %17, align 8
  %172 = call i64 @OidIsValid(i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %277

175:                                              ; preds = %170, %167
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i64, i64* %15, align 8
  %180 = call i64 @type_is_array(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 0, i32* %4, align 4
  br label %277

183:                                              ; preds = %178, %175
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load i64, i64* %15, align 8
  %188 = call i32 @type_is_enum(i64 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  store i32 0, i32* %4, align 4
  br label %277

191:                                              ; preds = %186, %183
  %192 = load i64, i64* %15, align 8
  %193 = call i64 @OidIsValid(i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i64, i64* %15, align 8
  %197 = call i64 @get_typcollation(i64 %196)
  store i64 %197, i64* %18, align 8
  br label %206

198:                                              ; preds = %191
  %199 = load i64, i64* %16, align 8
  %200 = call i64 @OidIsValid(i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i64, i64* %16, align 8
  %204 = call i64 @get_typcollation(i64 %203)
  store i64 %204, i64* %18, align 8
  br label %205

205:                                              ; preds = %202, %198
  br label %206

206:                                              ; preds = %205, %195
  %207 = load i64, i64* %18, align 8
  %208 = call i64 @OidIsValid(i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %206
  %211 = load i32*, i32** %7, align 8
  %212 = call i64 @exprInputCollation(i32* %211)
  store i64 %212, i64* %21, align 8
  %213 = load i64, i64* %21, align 8
  %214 = call i64 @OidIsValid(i64 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i64, i64* %21, align 8
  store i64 %217, i64* %18, align 8
  br label %218

218:                                              ; preds = %216, %210
  br label %219

219:                                              ; preds = %218, %206
  store i32 0, i32* %19, align 4
  br label %220

220:                                              ; preds = %273, %219
  %221 = load i32, i32* %19, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %276

224:                                              ; preds = %220
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %226 = load i32, i32* %19, align 4
  %227 = call %struct.TYPE_12__* @TupleDescAttr(%struct.TYPE_11__* %225, i32 %226)
  store %struct.TYPE_12__* %227, %struct.TYPE_12__** %22, align 8
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  switch i32 %230, label %271 [
    i32 131, label %231
    i32 129, label %231
    i32 130, label %231
    i32 132, label %246
    i32 128, label %261
  ]

231:                                              ; preds = %224, %224, %224
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %233 = load i32, i32* %19, align 4
  %234 = add nsw i32 %233, 1
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @NameStr(i32 %237)
  %239 = load i64, i64* %15, align 8
  %240 = call i32 @TupleDescInitEntry(%struct.TYPE_11__* %232, i32 %234, i32 %238, i64 %239, i32 -1, i32 0)
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %242, 1
  %244 = load i64, i64* %18, align 8
  %245 = call i32 @TupleDescInitEntryCollation(%struct.TYPE_11__* %241, i32 %243, i64 %244)
  br label %272

246:                                              ; preds = %224
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %248 = load i32, i32* %19, align 4
  %249 = add nsw i32 %248, 1
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @NameStr(i32 %252)
  %254 = load i64, i64* %16, align 8
  %255 = call i32 @TupleDescInitEntry(%struct.TYPE_11__* %247, i32 %249, i32 %253, i64 %254, i32 -1, i32 0)
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %257 = load i32, i32* %19, align 4
  %258 = add nsw i32 %257, 1
  %259 = load i64, i64* %18, align 8
  %260 = call i32 @TupleDescInitEntryCollation(%struct.TYPE_11__* %256, i32 %258, i64 %259)
  br label %272

261:                                              ; preds = %224
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %263 = load i32, i32* %19, align 4
  %264 = add nsw i32 %263, 1
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @NameStr(i32 %267)
  %269 = load i64, i64* %17, align 8
  %270 = call i32 @TupleDescInitEntry(%struct.TYPE_11__* %262, i32 %264, i32 %268, i64 %269, i32 -1, i32 0)
  br label %272

271:                                              ; preds = %224
  br label %272

272:                                              ; preds = %271, %261, %246, %231
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %19, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %19, align 4
  br label %220

276:                                              ; preds = %220
  store i32 1, i32* %4, align 4
  br label %277

277:                                              ; preds = %276, %190, %182, %174, %153, %124, %66, %62
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local %struct.TYPE_12__* @TupleDescAttr(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @get_call_expr_argtype(i32*, i32) #1

declare dso_local i64 @resolve_generic_type(i32, i64, i32) #1

declare dso_local i64 @type_is_array(i64) #1

declare dso_local i32 @type_is_enum(i64) #1

declare dso_local i64 @get_typcollation(i64) #1

declare dso_local i64 @exprInputCollation(i32*) #1

declare dso_local i32 @TupleDescInitEntry(%struct.TYPE_11__*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @TupleDescInitEntryCollation(%struct.TYPE_11__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
