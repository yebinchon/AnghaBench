; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_thesaurus.c_compileTheLexeme.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_thesaurus.c_compileTheLexeme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_23__ = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"thesaurus sample word \22%s\22 isn't recognized by subdictionary (rule %d)\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"thesaurus sample word \22%s\22 is a stop word (rule %d)\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Use \22?\22 to represent a stop word within a sample phrase.\00", align 1
@cmpTheLexeme = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @compileTheLexeme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compileTheLexeme(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 16, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 32, %13
  %15 = trunc i64 %14 to i32
  %16 = call i64 @palloc(i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %6, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %224, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %227

24:                                               ; preds = %18
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %33 = call i64 @strcmp(%struct.TYPE_22__* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %24
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %45 = call %struct.TYPE_22__* @addCompiledLexeme(%struct.TYPE_22__* %36, i32* %4, i32* %5, %struct.TYPE_23__* null, %struct.TYPE_22__* %44, i32 0)
  store %struct.TYPE_22__* %45, %struct.TYPE_22__** %6, align 8
  br label %205

46:                                               ; preds = %24
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  %56 = call i32 @PointerGetDatum(%struct.TYPE_22__* %55)
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  %65 = call i32 @PointerGetDatum(%struct.TYPE_22__* %64)
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = call i32 @strlen(%struct.TYPE_22__* %73)
  %75 = call i32 @Int32GetDatum(i32 %74)
  %76 = call i32 @PointerGetDatum(%struct.TYPE_22__* null)
  %77 = call i32 @FunctionCall4(i32* %50, i32 %56, i32 %65, i32 %75, i32 %76)
  %78 = call i64 @DatumGetPointer(i32 %77)
  %79 = inttoptr i64 %78 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %79, %struct.TYPE_23__** %8, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %81 = icmp ne %struct.TYPE_23__* %80, null
  br i1 %81, label %107, label %82

82:                                               ; preds = %46
  %83 = load i32, i32* @ERROR, align 4
  %84 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %85 = call i32 @errcode(i32 %84)
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  %105 = call i32 @errmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_22__* %93, i64 %104)
  %106 = call i32 @ereport(i32 %83, i32 %105)
  br label %204

107:                                              ; preds = %46
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %138, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %115 = call i32 @errcode(i32 %114)
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 1
  %135 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_22__* %123, i64 %134)
  %136 = call i32 @errhint(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %137 = call i32 @ereport(i32 %113, i32 %136)
  br label %203

138:                                              ; preds = %107
  br label %139

139:                                              ; preds = %200, %138
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %202

144:                                              ; preds = %139
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i64 1
  store %struct.TYPE_23__* %146, %struct.TYPE_23__** %9, align 8
  store i32 1, i32* %10, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %165, %144
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %150
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i64 -1
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %158, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %170

165:                                              ; preds = %155
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 1
  store %struct.TYPE_23__* %169, %struct.TYPE_23__** %9, align 8
  br label %150

170:                                              ; preds = %164, %150
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %171, %struct.TYPE_23__** %9, align 8
  br label %172

172:                                              ; preds = %185, %170
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = icmp eq i32 %180, %181
  br label %183

183:                                              ; preds = %177, %172
  %184 = phi i1 [ false, %172 ], [ %182, %177 ]
  br i1 %184, label %185, label %200

185:                                              ; preds = %183
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %189, align 8
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = call %struct.TYPE_22__* @addCompiledLexeme(%struct.TYPE_22__* %186, i32* %4, i32* %5, %struct.TYPE_23__* %187, %struct.TYPE_22__* %195, i32 %196)
  store %struct.TYPE_22__* %197, %struct.TYPE_22__** %6, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 1
  store %struct.TYPE_23__* %199, %struct.TYPE_23__** %9, align 8
  br label %172

200:                                              ; preds = %183
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %201, %struct.TYPE_23__** %8, align 8
  br label %139

202:                                              ; preds = %139
  br label %203

203:                                              ; preds = %202, %112
  br label %204

204:                                              ; preds = %203, %82
  br label %205

205:                                              ; preds = %204, %35
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %207, align 8
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %212, align 8
  %214 = call i32 @pfree(%struct.TYPE_22__* %213)
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %216, align 8
  %218 = load i32, i32* %3, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %221, align 8
  %223 = call i32 @pfree(%struct.TYPE_22__* %222)
  br label %224

224:                                              ; preds = %205
  %225 = load i32, i32* %3, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %3, align 4
  br label %18

227:                                              ; preds = %18
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %229, align 8
  %231 = icmp ne %struct.TYPE_22__* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %234, align 8
  %236 = call i32 @pfree(%struct.TYPE_22__* %235)
  br label %237

237:                                              ; preds = %232, %227
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 2
  store %struct.TYPE_22__* %238, %struct.TYPE_22__** %240, align 8
  %241 = load i32, i32* %4, align 4
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load i32, i32* %5, align 4
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp sgt i32 %249, 1
  br i1 %250, label %251, label %360

251:                                              ; preds = %237
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %253, align 8
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @cmpTheLexeme, align 4
  %259 = call i32 @qsort(%struct.TYPE_22__* %254, i32 %257, i32 32, i32 %258)
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %261, align 8
  store %struct.TYPE_22__* %262, %struct.TYPE_22__** %6, align 8
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i64 1
  store %struct.TYPE_22__* %266, %struct.TYPE_22__** %7, align 8
  br label %267

267:                                              ; preds = %331, %251
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %270, align 8
  %272 = ptrtoint %struct.TYPE_22__* %268 to i64
  %273 = ptrtoint %struct.TYPE_22__* %271 to i64
  %274 = sub i64 %272, %273
  %275 = sdiv exact i64 %274, 32
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = icmp slt i64 %275, %279
  br i1 %280, label %281, label %334

281:                                              ; preds = %267
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %284 = call i64 @cmpLexeme(%struct.TYPE_22__* %282, %struct.TYPE_22__* %283)
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %324

286:                                              ; preds = %281
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %288, align 8
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %291, align 8
  %293 = call i64 @cmpLexemeInfo(%struct.TYPE_22__* %289, %struct.TYPE_22__* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %308

295:                                              ; preds = %286
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %297, align 8
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 2
  store %struct.TYPE_22__* %298, %struct.TYPE_22__** %302, align 8
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %304, align 8
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 1
  store %struct.TYPE_22__* %305, %struct.TYPE_22__** %307, align 8
  br label %313

308:                                              ; preds = %286
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %310, align 8
  %312 = call i32 @pfree(%struct.TYPE_22__* %311)
  br label %313

313:                                              ; preds = %308, %295
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %315, align 8
  %317 = icmp ne %struct.TYPE_22__* %316, null
  br i1 %317, label %318, label %323

318:                                              ; preds = %313
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %320, align 8
  %322 = call i32 @pfree(%struct.TYPE_22__* %321)
  br label %323

323:                                              ; preds = %318, %313
  br label %331

324:                                              ; preds = %281
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 1
  store %struct.TYPE_22__* %326, %struct.TYPE_22__** %6, align 8
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %329 = bitcast %struct.TYPE_22__* %327 to i8*
  %330 = bitcast %struct.TYPE_22__* %328 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %329, i8* align 8 %330, i64 32, i1 false)
  br label %331

331:                                              ; preds = %324, %323
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 1
  store %struct.TYPE_22__* %333, %struct.TYPE_22__** %7, align 8
  br label %267

334:                                              ; preds = %267
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 2
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %337, align 8
  %339 = ptrtoint %struct.TYPE_22__* %335 to i64
  %340 = ptrtoint %struct.TYPE_22__* %338 to i64
  %341 = sub i64 %339, %340
  %342 = sdiv exact i64 %341, 32
  %343 = add nsw i64 %342, 1
  %344 = trunc i64 %343 to i32
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 0
  store i32 %344, i32* %346, align 8
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_22__*, %struct.TYPE_22__** %348, align 8
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = sext i32 %352 to i64
  %354 = mul i64 32, %353
  %355 = trunc i64 %354 to i32
  %356 = call i64 @repalloc(%struct.TYPE_22__* %349, i32 %355)
  %357 = inttoptr i64 %356 to %struct.TYPE_22__*
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 2
  store %struct.TYPE_22__* %357, %struct.TYPE_22__** %359, align 8
  br label %360

360:                                              ; preds = %334, %237
  ret void
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @strcmp(%struct.TYPE_22__*, i8*) #1

declare dso_local %struct.TYPE_22__* @addCompiledLexeme(%struct.TYPE_22__*, i32*, i32*, %struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @FunctionCall4(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_22__*) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @strlen(%struct.TYPE_22__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @pfree(%struct.TYPE_22__*) #1

declare dso_local i32 @qsort(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i64 @cmpLexeme(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i64 @cmpLexemeInfo(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @repalloc(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
