; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_longest.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_longest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i64*, i64* }
%struct.dfa = type { i32, %struct.sset*, i64*, %struct.TYPE_2__*, %struct.colormap* }
%struct.sset = type { i32, i64*, %struct.sset** }
%struct.TYPE_2__ = type { i64*, i64* }
%struct.colormap = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"+++ startup +++\0A\00", align 1
@REG_NOTBOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"color %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"char %c, color %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"+++ shutdown at c%d +++\0A\00", align 1
@REG_NOTEOL = common dso_local global i32 0, align 4
@POSTSTATE = common dso_local global i32 0, align 4
@REG_FTRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.vars*, %struct.dfa*, i64*, i64*, i32*)* @longest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @longest(%struct.vars* %0, %struct.dfa* %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca %struct.vars*, align 8
  %8 = alloca %struct.dfa*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sset*, align 8
  %16 = alloca %struct.sset*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.colormap*, align 8
  store %struct.vars* %0, %struct.vars** %7, align 8
  store %struct.dfa* %1, %struct.dfa** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i64*, i64** %10, align 8
  %21 = load %struct.vars*, %struct.vars** %7, align 8
  %22 = getelementptr inbounds %struct.vars, %struct.vars* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = icmp eq i64* %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i64*, i64** %10, align 8
  br label %30

27:                                               ; preds = %5
  %28 = load i64*, i64** %10, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i64* [ %26, %25 ], [ %29, %27 ]
  store i64* %31, i64** %13, align 8
  %32 = load %struct.dfa*, %struct.dfa** %8, align 8
  %33 = getelementptr inbounds %struct.dfa, %struct.dfa* %32, i32 0, i32 4
  %34 = load %struct.colormap*, %struct.colormap** %33, align 8
  store %struct.colormap* %34, %struct.colormap** %19, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32*, i32** %11, align 8
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = load %struct.vars*, %struct.vars** %7, align 8
  %41 = load %struct.dfa*, %struct.dfa** %8, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = call %struct.sset* @initialize(%struct.vars* %40, %struct.dfa* %41, i64* %42)
  store %struct.sset* %43, %struct.sset** %15, align 8
  %44 = load %struct.sset*, %struct.sset** %15, align 8
  %45 = icmp eq %struct.sset* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i64* null, i64** %6, align 8
  br label %276

47:                                               ; preds = %39
  %48 = load i64*, i64** %9, align 8
  store i64* %48, i64** %12, align 8
  %49 = call i32 @FDEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %50 = load i64*, i64** %12, align 8
  %51 = load %struct.vars*, %struct.vars** %7, align 8
  %52 = getelementptr inbounds %struct.vars, %struct.vars* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = icmp eq i64* %50, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %47
  %56 = load %struct.dfa*, %struct.dfa** %8, align 8
  %57 = getelementptr inbounds %struct.dfa, %struct.dfa* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.vars*, %struct.vars** %7, align 8
  %62 = getelementptr inbounds %struct.vars, %struct.vars* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @REG_NOTBOL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 0, i32 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %60, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %14, align 8
  %72 = load i64, i64* %14, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @FDEBUG(i8* %73)
  br label %88

75:                                               ; preds = %47
  %76 = load %struct.colormap*, %struct.colormap** %19, align 8
  %77 = load i64*, i64** %12, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 -1
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @GETCOLOR(%struct.colormap* %76, i64 %79)
  store i64 %80, i64* %14, align 8
  %81 = load i64*, i64** %12, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 -1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i8
  %85 = load i64, i64* %14, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @FDEBUG(i8* %86)
  br label %88

88:                                               ; preds = %75, %55
  %89 = load %struct.vars*, %struct.vars** %7, align 8
  %90 = load %struct.dfa*, %struct.dfa** %8, align 8
  %91 = load %struct.sset*, %struct.sset** %15, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64*, i64** %12, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = call %struct.sset* @miss(%struct.vars* %89, %struct.dfa* %90, %struct.sset* %91, i64 %92, i64* %93, i64* %94)
  store %struct.sset* %95, %struct.sset** %15, align 8
  %96 = load %struct.sset*, %struct.sset** %15, align 8
  %97 = icmp eq %struct.sset* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i64* null, i64** %6, align 8
  br label %276

99:                                               ; preds = %88
  %100 = load i64*, i64** %12, align 8
  %101 = load %struct.sset*, %struct.sset** %15, align 8
  %102 = getelementptr inbounds %struct.sset, %struct.sset* %101, i32 0, i32 1
  store i64* %100, i64** %102, align 8
  br label %103

103:                                              ; preds = %133, %99
  %104 = load i64*, i64** %12, align 8
  %105 = load i64*, i64** %13, align 8
  %106 = icmp ult i64* %104, %105
  br i1 %106, label %107, label %140

107:                                              ; preds = %103
  %108 = load %struct.colormap*, %struct.colormap** %19, align 8
  %109 = load i64*, i64** %12, align 8
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @GETCOLOR(%struct.colormap* %108, i64 %110)
  store i64 %111, i64* %14, align 8
  %112 = load %struct.sset*, %struct.sset** %15, align 8
  %113 = getelementptr inbounds %struct.sset, %struct.sset* %112, i32 0, i32 2
  %114 = load %struct.sset**, %struct.sset*** %113, align 8
  %115 = load i64, i64* %14, align 8
  %116 = getelementptr inbounds %struct.sset*, %struct.sset** %114, i64 %115
  %117 = load %struct.sset*, %struct.sset** %116, align 8
  store %struct.sset* %117, %struct.sset** %16, align 8
  %118 = load %struct.sset*, %struct.sset** %16, align 8
  %119 = icmp eq %struct.sset* %118, null
  br i1 %119, label %120, label %133

120:                                              ; preds = %107
  %121 = load %struct.vars*, %struct.vars** %7, align 8
  %122 = load %struct.dfa*, %struct.dfa** %8, align 8
  %123 = load %struct.sset*, %struct.sset** %15, align 8
  %124 = load i64, i64* %14, align 8
  %125 = load i64*, i64** %12, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 1
  %127 = load i64*, i64** %9, align 8
  %128 = call %struct.sset* @miss(%struct.vars* %121, %struct.dfa* %122, %struct.sset* %123, i64 %124, i64* %126, i64* %127)
  store %struct.sset* %128, %struct.sset** %16, align 8
  %129 = load %struct.sset*, %struct.sset** %16, align 8
  %130 = icmp eq %struct.sset* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %140

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %107
  %134 = load i64*, i64** %12, align 8
  %135 = getelementptr inbounds i64, i64* %134, i32 1
  store i64* %135, i64** %12, align 8
  %136 = load i64*, i64** %12, align 8
  %137 = load %struct.sset*, %struct.sset** %16, align 8
  %138 = getelementptr inbounds %struct.sset, %struct.sset* %137, i32 0, i32 1
  store i64* %136, i64** %138, align 8
  %139 = load %struct.sset*, %struct.sset** %16, align 8
  store %struct.sset* %139, %struct.sset** %15, align 8
  br label %103

140:                                              ; preds = %131, %103
  %141 = call i64 (...) @ISERR()
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i64* null, i64** %6, align 8
  br label %276

144:                                              ; preds = %140
  %145 = load %struct.sset*, %struct.sset** %15, align 8
  %146 = load %struct.dfa*, %struct.dfa** %8, align 8
  %147 = getelementptr inbounds %struct.dfa, %struct.dfa* %146, i32 0, i32 1
  %148 = load %struct.sset*, %struct.sset** %147, align 8
  %149 = ptrtoint %struct.sset* %145 to i64
  %150 = ptrtoint %struct.sset* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sdiv exact i64 %151, 24
  %153 = trunc i64 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = call i32 @FDEBUG(i8* %155)
  %157 = load i64*, i64** %12, align 8
  %158 = load %struct.vars*, %struct.vars** %7, align 8
  %159 = getelementptr inbounds %struct.vars, %struct.vars* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = icmp eq i64* %157, %160
  br i1 %161, label %162, label %224

162:                                              ; preds = %144
  %163 = load i64*, i64** %10, align 8
  %164 = load %struct.vars*, %struct.vars** %7, align 8
  %165 = getelementptr inbounds %struct.vars, %struct.vars* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = icmp eq i64* %163, %166
  br i1 %167, label %168, label %224

168:                                              ; preds = %162
  %169 = load i32*, i32** %11, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i32*, i32** %11, align 8
  store i32 1, i32* %172, align 4
  br label %173

173:                                              ; preds = %171, %168
  %174 = load %struct.dfa*, %struct.dfa** %8, align 8
  %175 = getelementptr inbounds %struct.dfa, %struct.dfa* %174, i32 0, i32 3
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i64*, i64** %177, align 8
  %179 = load %struct.vars*, %struct.vars** %7, align 8
  %180 = getelementptr inbounds %struct.vars, %struct.vars* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @REG_NOTEOL, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 0, i32 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %178, i64 %187
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %14, align 8
  %190 = load i64, i64* %14, align 8
  %191 = inttoptr i64 %190 to i8*
  %192 = call i32 @FDEBUG(i8* %191)
  %193 = load %struct.vars*, %struct.vars** %7, align 8
  %194 = load %struct.dfa*, %struct.dfa** %8, align 8
  %195 = load %struct.sset*, %struct.sset** %15, align 8
  %196 = load i64, i64* %14, align 8
  %197 = load i64*, i64** %12, align 8
  %198 = load i64*, i64** %9, align 8
  %199 = call %struct.sset* @miss(%struct.vars* %193, %struct.dfa* %194, %struct.sset* %195, i64 %196, i64* %197, i64* %198)
  store %struct.sset* %199, %struct.sset** %16, align 8
  %200 = call i64 (...) @ISERR()
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %173
  store i64* null, i64** %6, align 8
  br label %276

203:                                              ; preds = %173
  %204 = load %struct.sset*, %struct.sset** %16, align 8
  %205 = icmp ne %struct.sset* %204, null
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load %struct.sset*, %struct.sset** %16, align 8
  %208 = getelementptr inbounds %struct.sset, %struct.sset* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @POSTSTATE, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i64*, i64** %12, align 8
  store i64* %214, i64** %6, align 8
  br label %276

215:                                              ; preds = %206, %203
  %216 = load %struct.sset*, %struct.sset** %16, align 8
  %217 = icmp ne %struct.sset* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i64*, i64** %12, align 8
  %220 = load %struct.sset*, %struct.sset** %16, align 8
  %221 = getelementptr inbounds %struct.sset, %struct.sset* %220, i32 0, i32 1
  store i64* %219, i64** %221, align 8
  br label %222

222:                                              ; preds = %218, %215
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223, %162, %144
  %225 = load %struct.dfa*, %struct.dfa** %8, align 8
  %226 = getelementptr inbounds %struct.dfa, %struct.dfa* %225, i32 0, i32 2
  %227 = load i64*, i64** %226, align 8
  store i64* %227, i64** %17, align 8
  %228 = load %struct.dfa*, %struct.dfa** %8, align 8
  %229 = getelementptr inbounds %struct.dfa, %struct.dfa* %228, i32 0, i32 1
  %230 = load %struct.sset*, %struct.sset** %229, align 8
  store %struct.sset* %230, %struct.sset** %16, align 8
  %231 = load %struct.dfa*, %struct.dfa** %8, align 8
  %232 = getelementptr inbounds %struct.dfa, %struct.dfa* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %18, align 4
  br label %234

234:                                              ; preds = %264, %224
  %235 = load i32, i32* %18, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %269

237:                                              ; preds = %234
  %238 = load %struct.sset*, %struct.sset** %16, align 8
  %239 = getelementptr inbounds %struct.sset, %struct.sset* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @POSTSTATE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %263

244:                                              ; preds = %237
  %245 = load i64*, i64** %17, align 8
  %246 = load %struct.sset*, %struct.sset** %16, align 8
  %247 = getelementptr inbounds %struct.sset, %struct.sset* %246, i32 0, i32 1
  %248 = load i64*, i64** %247, align 8
  %249 = icmp ne i64* %245, %248
  br i1 %249, label %250, label %263

250:                                              ; preds = %244
  %251 = load i64*, i64** %17, align 8
  %252 = icmp eq i64* %251, null
  br i1 %252, label %259, label %253

253:                                              ; preds = %250
  %254 = load i64*, i64** %17, align 8
  %255 = load %struct.sset*, %struct.sset** %16, align 8
  %256 = getelementptr inbounds %struct.sset, %struct.sset* %255, i32 0, i32 1
  %257 = load i64*, i64** %256, align 8
  %258 = icmp ult i64* %254, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %253, %250
  %260 = load %struct.sset*, %struct.sset** %16, align 8
  %261 = getelementptr inbounds %struct.sset, %struct.sset* %260, i32 0, i32 1
  %262 = load i64*, i64** %261, align 8
  store i64* %262, i64** %17, align 8
  br label %263

263:                                              ; preds = %259, %253, %244, %237
  br label %264

264:                                              ; preds = %263
  %265 = load %struct.sset*, %struct.sset** %16, align 8
  %266 = getelementptr inbounds %struct.sset, %struct.sset* %265, i32 1
  store %struct.sset* %266, %struct.sset** %16, align 8
  %267 = load i32, i32* %18, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %18, align 4
  br label %234

269:                                              ; preds = %234
  %270 = load i64*, i64** %17, align 8
  %271 = icmp ne i64* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i64*, i64** %17, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 -1
  store i64* %274, i64** %6, align 8
  br label %276

275:                                              ; preds = %269
  store i64* null, i64** %6, align 8
  br label %276

276:                                              ; preds = %275, %272, %213, %202, %143, %98, %46
  %277 = load i64*, i64** %6, align 8
  ret i64* %277
}

declare dso_local %struct.sset* @initialize(%struct.vars*, %struct.dfa*, i64*) #1

declare dso_local i32 @FDEBUG(i8*) #1

declare dso_local i64 @GETCOLOR(%struct.colormap*, i64) #1

declare dso_local %struct.sset* @miss(%struct.vars*, %struct.dfa*, %struct.sset*, i64, i64*, i64*) #1

declare dso_local i64 @ISERR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
