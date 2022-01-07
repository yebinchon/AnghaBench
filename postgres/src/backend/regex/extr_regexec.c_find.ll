; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_find.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__*, i32*, %struct.TYPE_7__*, i32, i32*, i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, %struct.cnfa }
%struct.TYPE_10__ = type { i32 }
%struct.cnfa = type { i32 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.colormap = type { i32 }
%struct.dfa = type { i32 }

@SHORTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\0Asearch at %ld\0A\00", align 1
@REG_EXPECT = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@REG_OKAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"between %ld and %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\0Afind trying at %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.cnfa*, %struct.colormap*)* @find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find(%struct.vars* %0, %struct.cnfa* %1, %struct.colormap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vars*, align 8
  %6 = alloca %struct.cnfa*, align 8
  %7 = alloca %struct.colormap*, align 8
  %8 = alloca %struct.dfa*, align 8
  %9 = alloca %struct.dfa*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %5, align 8
  store %struct.cnfa* %1, %struct.cnfa** %6, align 8
  store %struct.colormap* %2, %struct.colormap** %7, align 8
  store i32* null, i32** %11, align 8
  %17 = load %struct.vars*, %struct.vars** %5, align 8
  %18 = getelementptr inbounds %struct.vars, %struct.vars* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SHORTER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  store i32 %28, i32* %16, align 4
  %29 = load %struct.vars*, %struct.vars** %5, align 8
  %30 = load %struct.vars*, %struct.vars** %5, align 8
  %31 = getelementptr inbounds %struct.vars, %struct.vars* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load %struct.colormap*, %struct.colormap** %7, align 8
  %35 = load %struct.vars*, %struct.vars** %5, align 8
  %36 = getelementptr inbounds %struct.vars, %struct.vars* %35, i32 0, i32 6
  %37 = call %struct.dfa* @newdfa(%struct.vars* %29, %struct.cnfa* %33, %struct.colormap* %34, i32* %36)
  store %struct.dfa* %37, %struct.dfa** %8, align 8
  %38 = call i64 (...) @ISERR()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load %struct.dfa*, %struct.dfa** %8, align 8
  %42 = icmp ne %struct.dfa* %41, null
  br label %43

43:                                               ; preds = %40, %3
  %44 = phi i1 [ false, %3 ], [ %42, %40 ]
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = call i32 (...) @NOERR()
  %49 = load %struct.vars*, %struct.vars** %5, align 8
  %50 = getelementptr inbounds %struct.vars, %struct.vars* %49, i32 0, i32 8
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @LOFF(i32* %51)
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @MDEBUG(i8* %54)
  store i32* null, i32** %12, align 8
  %56 = load %struct.vars*, %struct.vars** %5, align 8
  %57 = load %struct.dfa*, %struct.dfa** %8, align 8
  %58 = load %struct.vars*, %struct.vars** %5, align 8
  %59 = getelementptr inbounds %struct.vars, %struct.vars* %58, i32 0, i32 7
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.vars*, %struct.vars** %5, align 8
  %62 = getelementptr inbounds %struct.vars, %struct.vars* %61, i32 0, i32 7
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.vars*, %struct.vars** %5, align 8
  %65 = getelementptr inbounds %struct.vars, %struct.vars* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = call i32* @shortest(%struct.vars* %56, %struct.dfa* %57, i32* %60, i32* %63, i32* %66, i32** %12, i32* null)
  store i32* %67, i32** %14, align 8
  %68 = load %struct.dfa*, %struct.dfa** %8, align 8
  %69 = call i32 @freedfa(%struct.dfa* %68)
  %70 = call i32 (...) @NOERR()
  %71 = load %struct.vars*, %struct.vars** %5, align 8
  %72 = getelementptr inbounds %struct.vars, %struct.vars* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @REG_EXPECT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %43
  %80 = load %struct.vars*, %struct.vars** %5, align 8
  %81 = getelementptr inbounds %struct.vars, %struct.vars* %80, i32 0, i32 5
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32*, i32** %12, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %79
  %89 = load i32*, i32** %12, align 8
  %90 = call i8* @OFF(i32* %89)
  %91 = load %struct.vars*, %struct.vars** %5, align 8
  %92 = getelementptr inbounds %struct.vars, %struct.vars* %91, i32 0, i32 5
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i8* %90, i8** %95, align 8
  br label %106

96:                                               ; preds = %79
  %97 = load %struct.vars*, %struct.vars** %5, align 8
  %98 = getelementptr inbounds %struct.vars, %struct.vars* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = call i8* @OFF(i32* %99)
  %101 = load %struct.vars*, %struct.vars** %5, align 8
  %102 = getelementptr inbounds %struct.vars, %struct.vars* %101, i32 0, i32 5
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i8* %100, i8** %105, align 8
  br label %106

106:                                              ; preds = %96, %88
  %107 = load %struct.vars*, %struct.vars** %5, align 8
  %108 = getelementptr inbounds %struct.vars, %struct.vars* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = call i8* @OFF(i32* %109)
  %111 = load %struct.vars*, %struct.vars** %5, align 8
  %112 = getelementptr inbounds %struct.vars, %struct.vars* %111, i32 0, i32 5
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i8* %110, i8** %115, align 8
  br label %116

116:                                              ; preds = %106, %43
  %117 = load i32*, i32** %14, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %120, i32* %4, align 4
  br label %303

121:                                              ; preds = %116
  %122 = load %struct.vars*, %struct.vars** %5, align 8
  %123 = getelementptr inbounds %struct.vars, %struct.vars* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @REG_OKAY, align 4
  store i32 %127, i32* %4, align 4
  br label %303

128:                                              ; preds = %121
  %129 = load i32*, i32** %12, align 8
  %130 = icmp ne i32* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i32*, i32** %12, align 8
  store i32* %133, i32** %13, align 8
  store i32* null, i32** %12, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @LOFF(i32* %134)
  %136 = load i32*, i32** %14, align 8
  %137 = call i32 @LOFF(i32* %136)
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = call i32 @MDEBUG(i8* %139)
  %141 = load %struct.vars*, %struct.vars** %5, align 8
  %142 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %143 = load %struct.colormap*, %struct.colormap** %7, align 8
  %144 = load %struct.vars*, %struct.vars** %5, align 8
  %145 = getelementptr inbounds %struct.vars, %struct.vars* %144, i32 0, i32 6
  %146 = call %struct.dfa* @newdfa(%struct.vars* %141, %struct.cnfa* %142, %struct.colormap* %143, i32* %145)
  store %struct.dfa* %146, %struct.dfa** %9, align 8
  %147 = call i64 (...) @ISERR()
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %128
  %150 = load %struct.dfa*, %struct.dfa** %9, align 8
  %151 = icmp ne %struct.dfa* %150, null
  br label %152

152:                                              ; preds = %149, %128
  %153 = phi i1 [ false, %128 ], [ %151, %149 ]
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = call i32 (...) @NOERR()
  %158 = load i32*, i32** %13, align 8
  store i32* %158, i32** %10, align 8
  br label %159

159:                                              ; preds = %210, %152
  %160 = load i32*, i32** %10, align 8
  %161 = load i32*, i32** %14, align 8
  %162 = icmp ule i32* %160, %161
  br i1 %162, label %163, label %213

163:                                              ; preds = %159
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @LOFF(i32* %164)
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 @MDEBUG(i8* %167)
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %163
  %172 = load %struct.vars*, %struct.vars** %5, align 8
  %173 = load %struct.dfa*, %struct.dfa** %9, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = load %struct.vars*, %struct.vars** %5, align 8
  %177 = getelementptr inbounds %struct.vars, %struct.vars* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = call i32* @shortest(%struct.vars* %172, %struct.dfa* %173, i32* %174, i32* %175, i32* %178, i32** null, i32* %15)
  store i32* %179, i32** %11, align 8
  br label %188

180:                                              ; preds = %163
  %181 = load %struct.vars*, %struct.vars** %5, align 8
  %182 = load %struct.dfa*, %struct.dfa** %9, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = load %struct.vars*, %struct.vars** %5, align 8
  %185 = getelementptr inbounds %struct.vars, %struct.vars* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = call i32* @longest(%struct.vars* %181, %struct.dfa* %182, i32* %183, i32* %186, i32* %15)
  store i32* %187, i32** %11, align 8
  br label %188

188:                                              ; preds = %180, %171
  %189 = call i64 (...) @ISERR()
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load %struct.dfa*, %struct.dfa** %9, align 8
  %193 = call i32 @freedfa(%struct.dfa* %192)
  %194 = load %struct.vars*, %struct.vars** %5, align 8
  %195 = getelementptr inbounds %struct.vars, %struct.vars* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %4, align 4
  br label %303

197:                                              ; preds = %188
  %198 = load i32, i32* %15, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load i32*, i32** %12, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = load i32*, i32** %10, align 8
  store i32* %204, i32** %12, align 8
  br label %205

205:                                              ; preds = %203, %200, %197
  %206 = load i32*, i32** %11, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %213

209:                                              ; preds = %205
  br label %210

210:                                              ; preds = %209
  %211 = load i32*, i32** %10, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %10, align 8
  br label %159

213:                                              ; preds = %208, %159
  %214 = load i32*, i32** %11, align 8
  %215 = icmp ne i32* %214, null
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  %218 = load %struct.dfa*, %struct.dfa** %9, align 8
  %219 = call i32 @freedfa(%struct.dfa* %218)
  %220 = load %struct.vars*, %struct.vars** %5, align 8
  %221 = getelementptr inbounds %struct.vars, %struct.vars* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp sgt i32 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i32 @assert(i32 %224)
  %226 = load i32*, i32** %10, align 8
  %227 = call i8* @OFF(i32* %226)
  %228 = load %struct.vars*, %struct.vars** %5, align 8
  %229 = getelementptr inbounds %struct.vars, %struct.vars* %228, i32 0, i32 3
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  store i8* %227, i8** %232, align 8
  %233 = load i32*, i32** %11, align 8
  %234 = call i8* @OFF(i32* %233)
  %235 = load %struct.vars*, %struct.vars** %5, align 8
  %236 = getelementptr inbounds %struct.vars, %struct.vars* %235, i32 0, i32 3
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  store i8* %234, i8** %239, align 8
  %240 = load %struct.vars*, %struct.vars** %5, align 8
  %241 = getelementptr inbounds %struct.vars, %struct.vars* %240, i32 0, i32 2
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @REG_EXPECT, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %279

248:                                              ; preds = %213
  %249 = load i32*, i32** %12, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %259

251:                                              ; preds = %248
  %252 = load i32*, i32** %12, align 8
  %253 = call i8* @OFF(i32* %252)
  %254 = load %struct.vars*, %struct.vars** %5, align 8
  %255 = getelementptr inbounds %struct.vars, %struct.vars* %254, i32 0, i32 5
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 1
  store i8* %253, i8** %258, align 8
  br label %269

259:                                              ; preds = %248
  %260 = load %struct.vars*, %struct.vars** %5, align 8
  %261 = getelementptr inbounds %struct.vars, %struct.vars* %260, i32 0, i32 4
  %262 = load i32*, i32** %261, align 8
  %263 = call i8* @OFF(i32* %262)
  %264 = load %struct.vars*, %struct.vars** %5, align 8
  %265 = getelementptr inbounds %struct.vars, %struct.vars* %264, i32 0, i32 5
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 1
  store i8* %263, i8** %268, align 8
  br label %269

269:                                              ; preds = %259, %251
  %270 = load %struct.vars*, %struct.vars** %5, align 8
  %271 = getelementptr inbounds %struct.vars, %struct.vars* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = call i8* @OFF(i32* %272)
  %274 = load %struct.vars*, %struct.vars** %5, align 8
  %275 = getelementptr inbounds %struct.vars, %struct.vars* %274, i32 0, i32 5
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  store i8* %273, i8** %278, align 8
  br label %279

279:                                              ; preds = %269, %213
  %280 = load %struct.vars*, %struct.vars** %5, align 8
  %281 = getelementptr inbounds %struct.vars, %struct.vars* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = load i32, i32* @REG_OKAY, align 4
  store i32 %285, i32* %4, align 4
  br label %303

286:                                              ; preds = %279
  %287 = load %struct.vars*, %struct.vars** %5, align 8
  %288 = getelementptr inbounds %struct.vars, %struct.vars* %287, i32 0, i32 3
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = load %struct.vars*, %struct.vars** %5, align 8
  %291 = getelementptr inbounds %struct.vars, %struct.vars* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @zapallsubs(%struct.TYPE_9__* %289, i32 %292)
  %294 = load %struct.vars*, %struct.vars** %5, align 8
  %295 = load %struct.vars*, %struct.vars** %5, align 8
  %296 = getelementptr inbounds %struct.vars, %struct.vars* %295, i32 0, i32 2
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %298, align 8
  %300 = load i32*, i32** %10, align 8
  %301 = load i32*, i32** %11, align 8
  %302 = call i32 @cdissect(%struct.vars* %294, %struct.TYPE_10__* %299, i32* %300, i32* %301)
  store i32 %302, i32* %4, align 4
  br label %303

303:                                              ; preds = %286, %284, %191, %126, %119
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local %struct.dfa* @newdfa(%struct.vars*, %struct.cnfa*, %struct.colormap*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ISERR(...) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i32 @MDEBUG(i8*) #1

declare dso_local i32 @LOFF(i32*) #1

declare dso_local i32* @shortest(%struct.vars*, %struct.dfa*, i32*, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @freedfa(%struct.dfa*) #1

declare dso_local i8* @OFF(i32*) #1

declare dso_local i32* @longest(%struct.vars*, %struct.dfa*, i32*, i32*, i32*) #1

declare dso_local i32 @zapallsubs(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @cdissect(%struct.vars*, %struct.TYPE_10__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
