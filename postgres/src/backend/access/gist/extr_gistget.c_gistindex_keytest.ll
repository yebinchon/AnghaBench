; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistget.c_gistindex_keytest.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistget.c_gistindex_keytest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { double, i32 }
%struct.TYPE_12__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"invalid GiST tuple found on leaf page\00", align 1
@SK_ISNULL = common dso_local global i32 0, align 4
@SK_SEARCHNULL = common dso_local global i32 0, align 4
@SK_SEARCHNOTNULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32, i32*, i32*)* @gistindex_keytest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gistindex_keytest(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %14, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %15, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %16, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %17, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %19, align 4
  %48 = load i32*, i32** %12, align 8
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %13, align 8
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @GistTupleIsInvalid(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %6
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @GistPageIsLeaf(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @ERROR, align 4
  %59 = call i32 @elog(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %53
  store i32 0, i32* %20, align 4
  br label %61

61:                                               ; preds = %84, %60
  %62 = load i32, i32* %20, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %61
  %68 = call double (...) @get_float8_infinity()
  %69 = fneg double %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i32, i32* %20, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store double %69, double* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %20, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %67
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %20, align 4
  br label %61

87:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %270

88:                                               ; preds = %6
  br label %89

89:                                               ; preds = %180, %88
  %90 = load i32, i32* %17, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %185

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @index_getattr(i32 %93, i64 %96, i32 %99, i32* %22)
  store i32 %100, i32* %21, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SK_ISNULL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %92
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SK_SEARCHNULL, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load i32, i32* %10, align 4
  %116 = call i64 @GistPageIsLeaf(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* %22, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %270

122:                                              ; preds = %118, %114
  br label %134

123:                                              ; preds = %107
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SK_SEARCHNOTNULL, align 4
  %128 = and i32 %126, %127
  %129 = call i32 @Assert(i32 %128)
  %130 = load i32, i32* %22, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  br label %270

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %122
  br label %180

135:                                              ; preds = %92
  %136 = load i32, i32* %22, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, i32* %7, align 4
  br label %270

139:                                              ; preds = %135
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %143, 1
  %145 = load i32, i32* %21, align 4
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %22, align 4
  %150 = call i32 @gistdentryinit(%struct.TYPE_12__* %140, i64 %144, i32* %25, i32 %145, i32 %146, i32 %147, i32 %148, i32 0, i32 %149)
  store i32 1, i32* %24, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @PointerGetDatum(i32* %25)
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @Int16GetDatum(i32 %162)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ObjectIdGetDatum(i32 %166)
  %168 = call i32 @PointerGetDatum(i32* %24)
  %169 = call i32 @FunctionCall5Coll(i32* %152, i32 %155, i32 %156, i32 %159, i32 %163, i32 %167, i32 %168)
  store i32 %169, i32* %23, align 4
  %170 = load i32, i32* %23, align 4
  %171 = call i32 @DatumGetBool(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %139
  store i32 0, i32* %7, align 4
  br label %270

174:                                              ; preds = %139
  %175 = load i32, i32* %24, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %175
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %174
  br label %180

180:                                              ; preds = %179, %134
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 1
  store %struct.TYPE_8__* %182, %struct.TYPE_8__** %16, align 8
  %183 = load i32, i32* %17, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %17, align 4
  br label %89

185:                                              ; preds = %89
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  store %struct.TYPE_8__* %188, %struct.TYPE_8__** %16, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  store %struct.TYPE_10__* %191, %struct.TYPE_10__** %18, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %17, align 4
  br label %195

195:                                              ; preds = %262, %185
  %196 = load i32, i32* %17, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %269

198:                                              ; preds = %195
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @index_getattr(i32 %199, i64 %202, i32 %205, i32* %27)
  store i32 %206, i32* %26, align 4
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @SK_ISNULL, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %198
  %214 = load i32, i32* %27, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213, %198
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  store double 0.000000e+00, double* %218, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  store i32 1, i32* %220, align 8
  br label %262

221:                                              ; preds = %213
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 6
  %225 = load i64, i64* %224, align 8
  %226 = sub nsw i64 %225, 1
  %227 = load i32, i32* %26, align 4
  %228 = load i32, i32* %19, align 4
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* %27, align 4
  %232 = call i32 @gistdentryinit(%struct.TYPE_12__* %222, i64 %226, i32* %30, i32 %227, i32 %228, i32 %229, i32 %230, i32 0, i32 %231)
  store i32 0, i32* %29, align 4
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 5
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @PointerGetDatum(i32* %30)
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @Int16GetDatum(i32 %244)
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @ObjectIdGetDatum(i32 %248)
  %250 = call i32 @PointerGetDatum(i32* %29)
  %251 = call i32 @FunctionCall5Coll(i32* %234, i32 %237, i32 %238, i32 %241, i32 %245, i32 %249, i32 %250)
  store i32 %251, i32* %28, align 4
  %252 = load i32, i32* %29, align 4
  %253 = load i32*, i32** %13, align 8
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %252
  store i32 %255, i32* %253, align 4
  %256 = load i32, i32* %28, align 4
  %257 = call double @DatumGetFloat8(i32 %256)
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  store double %257, double* %259, align 8
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  store i32 0, i32* %261, align 8
  br label %262

262:                                              ; preds = %221, %216
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 1
  store %struct.TYPE_8__* %264, %struct.TYPE_8__** %16, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 1
  store %struct.TYPE_10__* %266, %struct.TYPE_10__** %18, align 8
  %267 = load i32, i32* %17, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %17, align 4
  br label %195

269:                                              ; preds = %195
  store i32 1, i32* %7, align 4
  br label %270

270:                                              ; preds = %269, %173, %138, %132, %121, %87
  %271 = load i32, i32* %7, align 4
  ret i32 %271
}

declare dso_local i64 @GistTupleIsInvalid(i32) #1

declare dso_local i64 @GistPageIsLeaf(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local double @get_float8_infinity(...) #1

declare dso_local i32 @index_getattr(i32, i64, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @gistdentryinit(%struct.TYPE_12__*, i64, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FunctionCall5Coll(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local double @DatumGetFloat8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
