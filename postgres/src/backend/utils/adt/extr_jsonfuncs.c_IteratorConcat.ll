; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_IteratorConcat.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_IteratorConcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@WJB_BEGIN_OBJECT = common dso_local global i64 0, align 8
@WJB_END_OBJECT = common dso_local global i64 0, align 8
@WJB_DONE = common dso_local global i64 0, align 8
@WJB_BEGIN_ARRAY = common dso_local global i64 0, align 8
@WJB_END_ARRAY = common dso_local global i64 0, align 8
@WJB_ELEM = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid concatenation of jsonb objects\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__**, %struct.TYPE_5__**, i32**)* @IteratorConcat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @IteratorConcat(%struct.TYPE_5__** %0, %struct.TYPE_5__** %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__**, align 8
  %15 = alloca %struct.TYPE_5__**, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %9, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %18 = call i64 @JsonbIteratorNext(%struct.TYPE_5__** %17, i32* %7, i32 0)
  store i64 %18, i64* %12, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %20 = call i64 @JsonbIteratorNext(%struct.TYPE_5__** %19, i32* %8, i32 0)
  store i64 %20, i64* %13, align 8
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %3
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = load i32**, i32*** %6, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32* @pushJsonbValue(i32** %29, i64 %30, i32* null)
  br label %32

32:                                               ; preds = %37, %28
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %34 = call i64 @JsonbIteratorNext(%struct.TYPE_5__** %33, i32* %7, i32 1)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* @WJB_END_OBJECT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32**, i32*** %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32* @pushJsonbValue(i32** %38, i64 %39, i32* %7)
  br label %32

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %55, %41
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %44 = call i64 @JsonbIteratorNext(%struct.TYPE_5__** %43, i32* %8, i32 1)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* @WJB_DONE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load i32**, i32*** %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @WJB_END_OBJECT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %55

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %53
  %56 = phi i32* [ %8, %53 ], [ null, %54 ]
  %57 = call i32* @pushJsonbValue(i32** %48, i64 %49, i32* %56)
  store i32* %57, i32** %9, align 8
  br label %42

58:                                               ; preds = %42
  br label %241

59:                                               ; preds = %24, %3
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %104

63:                                               ; preds = %59
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %63
  %68 = load i32**, i32*** %6, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32* @pushJsonbValue(i32** %68, i64 %69, i32* null)
  br label %71

71:                                               ; preds = %76, %67
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %73 = call i64 @JsonbIteratorNext(%struct.TYPE_5__** %72, i32* %7, i32 1)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* @WJB_END_ARRAY, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @WJB_ELEM, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @Assert(i32 %80)
  %82 = load i32**, i32*** %6, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32* @pushJsonbValue(i32** %82, i64 %83, i32* %7)
  br label %71

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %91, %85
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %88 = call i64 @JsonbIteratorNext(%struct.TYPE_5__** %87, i32* %8, i32 1)
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* @WJB_END_ARRAY, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @WJB_ELEM, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @Assert(i32 %95)
  %97 = load i32**, i32*** %6, align 8
  %98 = load i64, i64* @WJB_ELEM, align 8
  %99 = call i32* @pushJsonbValue(i32** %97, i64 %98, i32* %8)
  br label %86

100:                                              ; preds = %86
  %101 = load i32**, i32*** %6, align 8
  %102 = load i64, i64* @WJB_END_ARRAY, align 8
  %103 = call i32* @pushJsonbValue(i32** %101, i64 %102, i32* null)
  store i32* %103, i32** %9, align 8
  br label %240

104:                                              ; preds = %63, %59
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %132, label %118

118:                                              ; preds = %114, %108, %104
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %233

122:                                              ; preds = %118
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %233

126:                                              ; preds = %122
  %127 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %233, label %132

132:                                              ; preds = %126, %114
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  br label %140

138:                                              ; preds = %132
  %139 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi %struct.TYPE_5__** [ %137, %136 ], [ %139, %138 ]
  store %struct.TYPE_5__** %141, %struct.TYPE_5__*** %14, align 8
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  br label %149

147:                                              ; preds = %140
  %148 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi %struct.TYPE_5__** [ %146, %145 ], [ %148, %147 ]
  store %struct.TYPE_5__** %150, %struct.TYPE_5__*** %15, align 8
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %16, align 4
  %155 = load i32**, i32*** %6, align 8
  %156 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %157 = call i32* @pushJsonbValue(i32** %155, i64 %156, i32* null)
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %198

160:                                              ; preds = %149
  %161 = load i32**, i32*** %6, align 8
  %162 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %163 = call i32* @pushJsonbValue(i32** %161, i64 %162, i32* null)
  br label %164

164:                                              ; preds = %177, %160
  %165 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %166 = call i64 @JsonbIteratorNext(%struct.TYPE_5__** %165, i32* %7, i32 1)
  store i64 %166, i64* %10, align 8
  %167 = load i64, i64* @WJB_DONE, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load i32**, i32*** %6, align 8
  %171 = load i64, i64* %10, align 8
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* @WJB_END_OBJECT, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %177

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176, %175
  %178 = phi i32* [ %7, %175 ], [ null, %176 ]
  %179 = call i32* @pushJsonbValue(i32** %170, i64 %171, i32* %178)
  br label %164

180:                                              ; preds = %164
  br label %181

181:                                              ; preds = %194, %180
  %182 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %183 = call i64 @JsonbIteratorNext(%struct.TYPE_5__** %182, i32* %8, i32 1)
  store i64 %183, i64* %11, align 8
  %184 = load i64, i64* @WJB_DONE, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %181
  %187 = load i32**, i32*** %6, align 8
  %188 = load i64, i64* %11, align 8
  %189 = load i64, i64* %11, align 8
  %190 = load i64, i64* @WJB_END_ARRAY, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %194

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %193, %192
  %195 = phi i32* [ %8, %192 ], [ null, %193 ]
  %196 = call i32* @pushJsonbValue(i32** %187, i64 %188, i32* %195)
  store i32* %196, i32** %9, align 8
  br label %181

197:                                              ; preds = %181
  br label %232

198:                                              ; preds = %149
  br label %199

199:                                              ; preds = %204, %198
  %200 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %201 = call i64 @JsonbIteratorNext(%struct.TYPE_5__** %200, i32* %7, i32 1)
  store i64 %201, i64* %10, align 8
  %202 = load i64, i64* @WJB_END_ARRAY, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load i32**, i32*** %6, align 8
  %206 = load i64, i64* %10, align 8
  %207 = call i32* @pushJsonbValue(i32** %205, i64 %206, i32* %7)
  br label %199

208:                                              ; preds = %199
  %209 = load i32**, i32*** %6, align 8
  %210 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %211 = call i32* @pushJsonbValue(i32** %209, i64 %210, i32* null)
  br label %212

212:                                              ; preds = %225, %208
  %213 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %214 = call i64 @JsonbIteratorNext(%struct.TYPE_5__** %213, i32* %8, i32 1)
  store i64 %214, i64* %11, align 8
  %215 = load i64, i64* @WJB_DONE, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %212
  %218 = load i32**, i32*** %6, align 8
  %219 = load i64, i64* %11, align 8
  %220 = load i64, i64* %11, align 8
  %221 = load i64, i64* @WJB_END_OBJECT, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %225

224:                                              ; preds = %217
  br label %225

225:                                              ; preds = %224, %223
  %226 = phi i32* [ %8, %223 ], [ null, %224 ]
  %227 = call i32* @pushJsonbValue(i32** %218, i64 %219, i32* %226)
  br label %212

228:                                              ; preds = %212
  %229 = load i32**, i32*** %6, align 8
  %230 = load i64, i64* @WJB_END_ARRAY, align 8
  %231 = call i32* @pushJsonbValue(i32** %229, i64 %230, i32* null)
  store i32* %231, i32** %9, align 8
  br label %232

232:                                              ; preds = %228, %197
  br label %239

233:                                              ; preds = %126, %122, %118
  %234 = load i32, i32* @ERROR, align 4
  %235 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %236 = call i32 @errcode(i32 %235)
  %237 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %238 = call i32 @ereport(i32 %234, i32 %237)
  br label %239

239:                                              ; preds = %233, %232
  br label %240

240:                                              ; preds = %239, %100
  br label %241

241:                                              ; preds = %240, %58
  %242 = load i32*, i32** %9, align 8
  ret i32* %242
}

declare dso_local i64 @JsonbIteratorNext(%struct.TYPE_5__**, i32*, i32) #1

declare dso_local i32* @pushJsonbValue(i32**, i64, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
