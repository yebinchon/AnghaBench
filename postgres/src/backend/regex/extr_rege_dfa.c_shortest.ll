; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_shortest.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_shortest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i64*, i64* }
%struct.dfa = type { %struct.TYPE_2__*, %struct.sset*, %struct.colormap* }
%struct.TYPE_2__ = type { i64*, i64* }
%struct.sset = type { i32, i64*, %struct.sset** }
%struct.colormap = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"--- startup ---\0A\00", align 1
@REG_NOTBOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"color %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"char %c, color %ld\0A\00", align 1
@POSTSTATE = common dso_local global i32 0, align 4
@REG_NOTEOL = common dso_local global i32 0, align 4
@REG_FTRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.vars*, %struct.dfa*, i64*, i64*, i64*, i64**, i32*)* @shortest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @shortest(%struct.vars* %0, %struct.dfa* %1, i64* %2, i64* %3, i64* %4, i64** %5, i32* %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca %struct.vars*, align 8
  %10 = alloca %struct.dfa*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.sset*, align 8
  %21 = alloca %struct.sset*, align 8
  %22 = alloca %struct.colormap*, align 8
  store %struct.vars* %0, %struct.vars** %9, align 8
  store %struct.dfa* %1, %struct.dfa** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64** %5, i64*** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = load %struct.vars*, %struct.vars** %9, align 8
  %25 = getelementptr inbounds %struct.vars, %struct.vars* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = icmp eq i64* %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i64*, i64** %12, align 8
  br label %33

30:                                               ; preds = %7
  %31 = load i64*, i64** %12, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i64* [ %29, %28 ], [ %32, %30 ]
  store i64* %34, i64** %17, align 8
  %35 = load i64*, i64** %13, align 8
  %36 = load %struct.vars*, %struct.vars** %9, align 8
  %37 = getelementptr inbounds %struct.vars, %struct.vars* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = icmp eq i64* %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64*, i64** %13, align 8
  br label %45

42:                                               ; preds = %33
  %43 = load i64*, i64** %13, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i64* [ %41, %40 ], [ %44, %42 ]
  store i64* %46, i64** %18, align 8
  %47 = load %struct.dfa*, %struct.dfa** %10, align 8
  %48 = getelementptr inbounds %struct.dfa, %struct.dfa* %47, i32 0, i32 2
  %49 = load %struct.colormap*, %struct.colormap** %48, align 8
  store %struct.colormap* %49, %struct.colormap** %22, align 8
  %50 = load i64**, i64*** %14, align 8
  %51 = icmp ne i64** %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i64**, i64*** %14, align 8
  store i64* null, i64** %53, align 8
  br label %54

54:                                               ; preds = %52, %45
  %55 = load i32*, i32** %15, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32*, i32** %15, align 8
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = load %struct.vars*, %struct.vars** %9, align 8
  %61 = load %struct.dfa*, %struct.dfa** %10, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = call %struct.sset* @initialize(%struct.vars* %60, %struct.dfa* %61, i64* %62)
  store %struct.sset* %63, %struct.sset** %20, align 8
  %64 = load %struct.sset*, %struct.sset** %20, align 8
  %65 = icmp eq %struct.sset* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i64* null, i64** %8, align 8
  br label %272

67:                                               ; preds = %59
  %68 = load i64*, i64** %11, align 8
  store i64* %68, i64** %16, align 8
  %69 = call i32 @FDEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %70 = load i64*, i64** %16, align 8
  %71 = load %struct.vars*, %struct.vars** %9, align 8
  %72 = getelementptr inbounds %struct.vars, %struct.vars* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = icmp eq i64* %70, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %67
  %76 = load %struct.dfa*, %struct.dfa** %10, align 8
  %77 = getelementptr inbounds %struct.dfa, %struct.dfa* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.vars*, %struct.vars** %9, align 8
  %82 = getelementptr inbounds %struct.vars, %struct.vars* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @REG_NOTBOL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 0, i32 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %80, i64 %89
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %19, align 8
  %92 = load i64, i64* %19, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @FDEBUG(i8* %93)
  br label %108

95:                                               ; preds = %67
  %96 = load %struct.colormap*, %struct.colormap** %22, align 8
  %97 = load i64*, i64** %16, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 -1
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @GETCOLOR(%struct.colormap* %96, i64 %99)
  store i64 %100, i64* %19, align 8
  %101 = load i64*, i64** %16, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 -1
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i8
  %105 = load i64, i64* %19, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @FDEBUG(i8* %106)
  br label %108

108:                                              ; preds = %95, %75
  %109 = load %struct.vars*, %struct.vars** %9, align 8
  %110 = load %struct.dfa*, %struct.dfa** %10, align 8
  %111 = load %struct.sset*, %struct.sset** %20, align 8
  %112 = load i64, i64* %19, align 8
  %113 = load i64*, i64** %16, align 8
  %114 = load i64*, i64** %11, align 8
  %115 = call %struct.sset* @miss(%struct.vars* %109, %struct.dfa* %110, %struct.sset* %111, i64 %112, i64* %113, i64* %114)
  store %struct.sset* %115, %struct.sset** %20, align 8
  %116 = load %struct.sset*, %struct.sset** %20, align 8
  %117 = icmp eq %struct.sset* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  store i64* null, i64** %8, align 8
  br label %272

119:                                              ; preds = %108
  %120 = load i64*, i64** %16, align 8
  %121 = load %struct.sset*, %struct.sset** %20, align 8
  %122 = getelementptr inbounds %struct.sset, %struct.sset* %121, i32 0, i32 1
  store i64* %120, i64** %122, align 8
  %123 = load %struct.sset*, %struct.sset** %20, align 8
  store %struct.sset* %123, %struct.sset** %21, align 8
  br label %124

124:                                              ; preds = %172, %119
  %125 = load i64*, i64** %16, align 8
  %126 = load i64*, i64** %18, align 8
  %127 = icmp ult i64* %125, %126
  br i1 %127, label %128, label %173

128:                                              ; preds = %124
  %129 = load %struct.colormap*, %struct.colormap** %22, align 8
  %130 = load i64*, i64** %16, align 8
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @GETCOLOR(%struct.colormap* %129, i64 %131)
  store i64 %132, i64* %19, align 8
  %133 = load %struct.sset*, %struct.sset** %20, align 8
  %134 = getelementptr inbounds %struct.sset, %struct.sset* %133, i32 0, i32 2
  %135 = load %struct.sset**, %struct.sset*** %134, align 8
  %136 = load i64, i64* %19, align 8
  %137 = getelementptr inbounds %struct.sset*, %struct.sset** %135, i64 %136
  %138 = load %struct.sset*, %struct.sset** %137, align 8
  store %struct.sset* %138, %struct.sset** %21, align 8
  %139 = load %struct.sset*, %struct.sset** %21, align 8
  %140 = icmp eq %struct.sset* %139, null
  br i1 %140, label %141, label %154

141:                                              ; preds = %128
  %142 = load %struct.vars*, %struct.vars** %9, align 8
  %143 = load %struct.dfa*, %struct.dfa** %10, align 8
  %144 = load %struct.sset*, %struct.sset** %20, align 8
  %145 = load i64, i64* %19, align 8
  %146 = load i64*, i64** %16, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 1
  %148 = load i64*, i64** %11, align 8
  %149 = call %struct.sset* @miss(%struct.vars* %142, %struct.dfa* %143, %struct.sset* %144, i64 %145, i64* %147, i64* %148)
  store %struct.sset* %149, %struct.sset** %21, align 8
  %150 = load %struct.sset*, %struct.sset** %21, align 8
  %151 = icmp eq %struct.sset* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  br label %173

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %128
  %155 = load i64*, i64** %16, align 8
  %156 = getelementptr inbounds i64, i64* %155, i32 1
  store i64* %156, i64** %16, align 8
  %157 = load i64*, i64** %16, align 8
  %158 = load %struct.sset*, %struct.sset** %21, align 8
  %159 = getelementptr inbounds %struct.sset, %struct.sset* %158, i32 0, i32 1
  store i64* %157, i64** %159, align 8
  %160 = load %struct.sset*, %struct.sset** %21, align 8
  store %struct.sset* %160, %struct.sset** %20, align 8
  %161 = load %struct.sset*, %struct.sset** %21, align 8
  %162 = getelementptr inbounds %struct.sset, %struct.sset* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @POSTSTATE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %154
  %168 = load i64*, i64** %16, align 8
  %169 = load i64*, i64** %17, align 8
  %170 = icmp uge i64* %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %173

172:                                              ; preds = %167, %154
  br label %124

173:                                              ; preds = %171, %152, %124
  %174 = load %struct.sset*, %struct.sset** %21, align 8
  %175 = icmp eq %struct.sset* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i64* null, i64** %8, align 8
  br label %272

177:                                              ; preds = %173
  %178 = load i64**, i64*** %14, align 8
  %179 = icmp ne i64** %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load %struct.vars*, %struct.vars** %9, align 8
  %182 = load %struct.dfa*, %struct.dfa** %10, align 8
  %183 = call i64* @lastcold(%struct.vars* %181, %struct.dfa* %182)
  %184 = load i64**, i64*** %14, align 8
  store i64* %183, i64** %184, align 8
  br label %185

185:                                              ; preds = %180, %177
  %186 = load %struct.sset*, %struct.sset** %21, align 8
  %187 = getelementptr inbounds %struct.sset, %struct.sset* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @POSTSTATE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %185
  %193 = load i64*, i64** %16, align 8
  %194 = load i64*, i64** %12, align 8
  %195 = icmp ugt i64* %193, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = load i64*, i64** %16, align 8
  %198 = load i64*, i64** %17, align 8
  %199 = icmp uge i64* %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = load i64*, i64** %16, align 8
  %203 = getelementptr inbounds i64, i64* %202, i32 -1
  store i64* %203, i64** %16, align 8
  br label %259

204:                                              ; preds = %192, %185
  %205 = load i64*, i64** %16, align 8
  %206 = load %struct.vars*, %struct.vars** %9, align 8
  %207 = getelementptr inbounds %struct.vars, %struct.vars* %206, i32 0, i32 1
  %208 = load i64*, i64** %207, align 8
  %209 = icmp eq i64* %205, %208
  br i1 %209, label %210, label %258

210:                                              ; preds = %204
  %211 = load i64*, i64** %13, align 8
  %212 = load %struct.vars*, %struct.vars** %9, align 8
  %213 = getelementptr inbounds %struct.vars, %struct.vars* %212, i32 0, i32 1
  %214 = load i64*, i64** %213, align 8
  %215 = icmp eq i64* %211, %214
  br i1 %215, label %216, label %258

216:                                              ; preds = %210
  %217 = load %struct.dfa*, %struct.dfa** %10, align 8
  %218 = getelementptr inbounds %struct.dfa, %struct.dfa* %217, i32 0, i32 0
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i64*, i64** %220, align 8
  %222 = load %struct.vars*, %struct.vars** %9, align 8
  %223 = getelementptr inbounds %struct.vars, %struct.vars* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @REG_NOTEOL, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 0, i32 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %221, i64 %230
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %19, align 8
  %233 = load i64, i64* %19, align 8
  %234 = inttoptr i64 %233 to i8*
  %235 = call i32 @FDEBUG(i8* %234)
  %236 = load %struct.vars*, %struct.vars** %9, align 8
  %237 = load %struct.dfa*, %struct.dfa** %10, align 8
  %238 = load %struct.sset*, %struct.sset** %20, align 8
  %239 = load i64, i64* %19, align 8
  %240 = load i64*, i64** %16, align 8
  %241 = load i64*, i64** %11, align 8
  %242 = call %struct.sset* @miss(%struct.vars* %236, %struct.dfa* %237, %struct.sset* %238, i64 %239, i64* %240, i64* %241)
  store %struct.sset* %242, %struct.sset** %21, align 8
  %243 = load %struct.sset*, %struct.sset** %21, align 8
  %244 = icmp eq %struct.sset* %243, null
  br i1 %244, label %252, label %245

245:                                              ; preds = %216
  %246 = load %struct.sset*, %struct.sset** %21, align 8
  %247 = getelementptr inbounds %struct.sset, %struct.sset* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @POSTSTATE, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %245, %216
  %253 = load i32*, i32** %15, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = load i32*, i32** %15, align 8
  store i32 1, i32* %256, align 4
  br label %257

257:                                              ; preds = %255, %252, %245
  br label %258

258:                                              ; preds = %257, %210, %204
  br label %259

259:                                              ; preds = %258, %196
  %260 = load %struct.sset*, %struct.sset** %21, align 8
  %261 = icmp eq %struct.sset* %260, null
  br i1 %261, label %269, label %262

262:                                              ; preds = %259
  %263 = load %struct.sset*, %struct.sset** %21, align 8
  %264 = getelementptr inbounds %struct.sset, %struct.sset* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @POSTSTATE, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %262, %259
  store i64* null, i64** %8, align 8
  br label %272

270:                                              ; preds = %262
  %271 = load i64*, i64** %16, align 8
  store i64* %271, i64** %8, align 8
  br label %272

272:                                              ; preds = %270, %269, %176, %118, %66
  %273 = load i64*, i64** %8, align 8
  ret i64* %273
}

declare dso_local %struct.sset* @initialize(%struct.vars*, %struct.dfa*, i64*) #1

declare dso_local i32 @FDEBUG(i8*) #1

declare dso_local i64 @GETCOLOR(%struct.colormap*, i64) #1

declare dso_local %struct.sset* @miss(%struct.vars*, %struct.dfa*, %struct.sset*, i64, i64*, i64*) #1

declare dso_local i64* @lastcold(%struct.vars*, %struct.dfa*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
