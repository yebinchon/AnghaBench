; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_pickss.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_pickss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sset = type { i32, i32*, %struct.TYPE_4__*, i32**, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.vars = type { i32 }
%struct.dfa = type { i32, i32, i32, i32, %struct.sset*, %struct.sset*, %struct.TYPE_4__*, i32**, i32* }

@.str = private unnamed_addr constant [9 x i8] c"new c%d\0A\00", align 1
@WHITE = common dso_local global i32 0, align 4
@LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"replacing c%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot find victim to replace!\0A\00", align 1
@REG_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sset* (%struct.vars*, %struct.dfa*, i32*, i32*)* @pickss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sset* @pickss(%struct.vars* %0, %struct.dfa* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.sset*, align 8
  %6 = alloca %struct.vars*, align 8
  %7 = alloca %struct.dfa*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sset*, align 8
  %12 = alloca %struct.sset*, align 8
  %13 = alloca i32*, align 8
  store %struct.vars* %0, %struct.vars** %6, align 8
  store %struct.dfa* %1, %struct.dfa** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.dfa*, %struct.dfa** %7, align 8
  %15 = getelementptr inbounds %struct.dfa, %struct.dfa* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.dfa*, %struct.dfa** %7, align 8
  %18 = getelementptr inbounds %struct.dfa, %struct.dfa* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %109

21:                                               ; preds = %4
  %22 = load %struct.dfa*, %struct.dfa** %7, align 8
  %23 = getelementptr inbounds %struct.dfa, %struct.dfa* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.dfa*, %struct.dfa** %7, align 8
  %26 = getelementptr inbounds %struct.dfa, %struct.dfa* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.dfa*, %struct.dfa** %7, align 8
  %30 = getelementptr inbounds %struct.dfa, %struct.dfa* %29, i32 0, i32 4
  %31 = load %struct.sset*, %struct.sset** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sset, %struct.sset* %31, i64 %33
  store %struct.sset* %34, %struct.sset** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @FDEBUG(i8* %37)
  %39 = load %struct.dfa*, %struct.dfa** %7, align 8
  %40 = getelementptr inbounds %struct.dfa, %struct.dfa* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.dfa*, %struct.dfa** %7, align 8
  %44 = getelementptr inbounds %struct.dfa, %struct.dfa* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  %49 = load %struct.sset*, %struct.sset** %11, align 8
  %50 = getelementptr inbounds %struct.sset, %struct.sset* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  %51 = load %struct.sset*, %struct.sset** %11, align 8
  %52 = getelementptr inbounds %struct.sset, %struct.sset* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.sset*, %struct.sset** %11, align 8
  %54 = getelementptr inbounds %struct.sset, %struct.sset* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @WHITE, align 4
  %57 = load %struct.sset*, %struct.sset** %11, align 8
  %58 = getelementptr inbounds %struct.sset, %struct.sset* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.dfa*, %struct.dfa** %7, align 8
  %61 = getelementptr inbounds %struct.dfa, %struct.dfa* %60, i32 0, i32 7
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.dfa*, %struct.dfa** %7, align 8
  %65 = getelementptr inbounds %struct.dfa, %struct.dfa* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %62, i64 %68
  %70 = load %struct.sset*, %struct.sset** %11, align 8
  %71 = getelementptr inbounds %struct.sset, %struct.sset* %70, i32 0, i32 3
  store i32** %69, i32*** %71, align 8
  %72 = load %struct.dfa*, %struct.dfa** %7, align 8
  %73 = getelementptr inbounds %struct.dfa, %struct.dfa* %72, i32 0, i32 6
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.dfa*, %struct.dfa** %7, align 8
  %77 = getelementptr inbounds %struct.dfa, %struct.dfa* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %80
  %82 = load %struct.sset*, %struct.sset** %11, align 8
  %83 = getelementptr inbounds %struct.sset, %struct.sset* %82, i32 0, i32 2
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %83, align 8
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %104, %21
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.dfa*, %struct.dfa** %7, align 8
  %87 = getelementptr inbounds %struct.dfa, %struct.dfa* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %84
  %91 = load %struct.sset*, %struct.sset** %11, align 8
  %92 = getelementptr inbounds %struct.sset, %struct.sset* %91, i32 0, i32 3
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  store i32* null, i32** %96, align 8
  %97 = load %struct.sset*, %struct.sset** %11, align 8
  %98 = getelementptr inbounds %struct.sset, %struct.sset* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %90
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %84

107:                                              ; preds = %84
  %108 = load %struct.sset*, %struct.sset** %11, align 8
  store %struct.sset* %108, %struct.sset** %5, align 8
  br label %246

109:                                              ; preds = %4
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = ptrtoint i32* %110 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = load %struct.dfa*, %struct.dfa** %7, align 8
  %117 = getelementptr inbounds %struct.dfa, %struct.dfa* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 2
  %120 = sdiv i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = icmp sgt i64 %115, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %109
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.dfa*, %struct.dfa** %7, align 8
  %126 = getelementptr inbounds %struct.dfa, %struct.dfa* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 2
  %129 = sdiv i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = sub i64 0, %130
  %132 = getelementptr inbounds i32, i32* %124, i64 %131
  store i32* %132, i32** %13, align 8
  br label %135

133:                                              ; preds = %109
  %134 = load i32*, i32** %9, align 8
  store i32* %134, i32** %13, align 8
  br label %135

135:                                              ; preds = %133, %123
  %136 = load %struct.dfa*, %struct.dfa** %7, align 8
  %137 = getelementptr inbounds %struct.dfa, %struct.dfa* %136, i32 0, i32 5
  %138 = load %struct.sset*, %struct.sset** %137, align 8
  store %struct.sset* %138, %struct.sset** %11, align 8
  %139 = load %struct.dfa*, %struct.dfa** %7, align 8
  %140 = getelementptr inbounds %struct.dfa, %struct.dfa* %139, i32 0, i32 4
  %141 = load %struct.sset*, %struct.sset** %140, align 8
  %142 = load %struct.dfa*, %struct.dfa** %7, align 8
  %143 = getelementptr inbounds %struct.dfa, %struct.dfa* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.sset, %struct.sset* %141, i64 %145
  store %struct.sset* %146, %struct.sset** %12, align 8
  br label %147

147:                                              ; preds = %188, %135
  %148 = load %struct.sset*, %struct.sset** %11, align 8
  %149 = load %struct.sset*, %struct.sset** %12, align 8
  %150 = icmp ult %struct.sset* %148, %149
  br i1 %150, label %151, label %191

151:                                              ; preds = %147
  %152 = load %struct.sset*, %struct.sset** %11, align 8
  %153 = getelementptr inbounds %struct.sset, %struct.sset* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = load %struct.sset*, %struct.sset** %11, align 8
  %158 = getelementptr inbounds %struct.sset, %struct.sset* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** %13, align 8
  %161 = icmp ult i32* %159, %160
  br i1 %161, label %162, label %187

162:                                              ; preds = %156, %151
  %163 = load %struct.sset*, %struct.sset** %11, align 8
  %164 = getelementptr inbounds %struct.sset, %struct.sset* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @LOCKED, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %187, label %169

169:                                              ; preds = %162
  %170 = load %struct.sset*, %struct.sset** %11, align 8
  %171 = getelementptr inbounds %struct.sset, %struct.sset* %170, i64 1
  %172 = load %struct.dfa*, %struct.dfa** %7, align 8
  %173 = getelementptr inbounds %struct.dfa, %struct.dfa* %172, i32 0, i32 5
  store %struct.sset* %171, %struct.sset** %173, align 8
  %174 = load %struct.sset*, %struct.sset** %11, align 8
  %175 = load %struct.dfa*, %struct.dfa** %7, align 8
  %176 = getelementptr inbounds %struct.dfa, %struct.dfa* %175, i32 0, i32 4
  %177 = load %struct.sset*, %struct.sset** %176, align 8
  %178 = ptrtoint %struct.sset* %174 to i64
  %179 = ptrtoint %struct.sset* %177 to i64
  %180 = sub i64 %178, %179
  %181 = sdiv exact i64 %180, 56
  %182 = trunc i64 %181 to i32
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  %185 = call i32 @FDEBUG(i8* %184)
  %186 = load %struct.sset*, %struct.sset** %11, align 8
  store %struct.sset* %186, %struct.sset** %5, align 8
  br label %246

187:                                              ; preds = %162, %156
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.sset*, %struct.sset** %11, align 8
  %190 = getelementptr inbounds %struct.sset, %struct.sset* %189, i32 1
  store %struct.sset* %190, %struct.sset** %11, align 8
  br label %147

191:                                              ; preds = %147
  %192 = load %struct.dfa*, %struct.dfa** %7, align 8
  %193 = getelementptr inbounds %struct.dfa, %struct.dfa* %192, i32 0, i32 4
  %194 = load %struct.sset*, %struct.sset** %193, align 8
  store %struct.sset* %194, %struct.sset** %11, align 8
  %195 = load %struct.dfa*, %struct.dfa** %7, align 8
  %196 = getelementptr inbounds %struct.dfa, %struct.dfa* %195, i32 0, i32 5
  %197 = load %struct.sset*, %struct.sset** %196, align 8
  store %struct.sset* %197, %struct.sset** %12, align 8
  br label %198

198:                                              ; preds = %239, %191
  %199 = load %struct.sset*, %struct.sset** %11, align 8
  %200 = load %struct.sset*, %struct.sset** %12, align 8
  %201 = icmp ult %struct.sset* %199, %200
  br i1 %201, label %202, label %242

202:                                              ; preds = %198
  %203 = load %struct.sset*, %struct.sset** %11, align 8
  %204 = getelementptr inbounds %struct.sset, %struct.sset* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %213, label %207

207:                                              ; preds = %202
  %208 = load %struct.sset*, %struct.sset** %11, align 8
  %209 = getelementptr inbounds %struct.sset, %struct.sset* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = icmp ult i32* %210, %211
  br i1 %212, label %213, label %238

213:                                              ; preds = %207, %202
  %214 = load %struct.sset*, %struct.sset** %11, align 8
  %215 = getelementptr inbounds %struct.sset, %struct.sset* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @LOCKED, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %238, label %220

220:                                              ; preds = %213
  %221 = load %struct.sset*, %struct.sset** %11, align 8
  %222 = getelementptr inbounds %struct.sset, %struct.sset* %221, i64 1
  %223 = load %struct.dfa*, %struct.dfa** %7, align 8
  %224 = getelementptr inbounds %struct.dfa, %struct.dfa* %223, i32 0, i32 5
  store %struct.sset* %222, %struct.sset** %224, align 8
  %225 = load %struct.sset*, %struct.sset** %11, align 8
  %226 = load %struct.dfa*, %struct.dfa** %7, align 8
  %227 = getelementptr inbounds %struct.dfa, %struct.dfa* %226, i32 0, i32 4
  %228 = load %struct.sset*, %struct.sset** %227, align 8
  %229 = ptrtoint %struct.sset* %225 to i64
  %230 = ptrtoint %struct.sset* %228 to i64
  %231 = sub i64 %229, %230
  %232 = sdiv exact i64 %231, 56
  %233 = trunc i64 %232 to i32
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  %236 = call i32 @FDEBUG(i8* %235)
  %237 = load %struct.sset*, %struct.sset** %11, align 8
  store %struct.sset* %237, %struct.sset** %5, align 8
  br label %246

238:                                              ; preds = %213, %207
  br label %239

239:                                              ; preds = %238
  %240 = load %struct.sset*, %struct.sset** %11, align 8
  %241 = getelementptr inbounds %struct.sset, %struct.sset* %240, i32 1
  store %struct.sset* %241, %struct.sset** %11, align 8
  br label %198

242:                                              ; preds = %198
  %243 = call i32 @FDEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %244 = load i32, i32* @REG_ASSERT, align 4
  %245 = call i32 @ERR(i32 %244)
  store %struct.sset* null, %struct.sset** %5, align 8
  br label %246

246:                                              ; preds = %242, %220, %169, %107
  %247 = load %struct.sset*, %struct.sset** %5, align 8
  ret %struct.sset* %247
}

declare dso_local i32 @FDEBUG(i8*) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
