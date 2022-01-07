; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_resolve_column_ref.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_resolve_column_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }

@String = common dso_local global i32 0, align 4
@A_Star = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@PLPGSQL_DTYPE_RECFIELD = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"record \22%s\22 has no field \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unrecognized plpgsql itemtype: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_16__*, %struct.TYPE_18__*, i32)* @resolve_column_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_column_ref(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_18__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_14__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %10, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @list_length(i32 %36)
  switch i32 %37, label %121 [
    i32 1, label %38
    i32 2, label %50
    i32 3, label %80
  ]

38:                                               ; preds = %4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @linitial(i32 %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %20, align 8
  %44 = load i32*, i32** %20, align 8
  %45 = load i32, i32* @String, align 4
  %46 = call i32 @IsA(i32* %44, i32 %45)
  %47 = call i32 @Assert(i32 %46)
  %48 = load i32*, i32** %20, align 8
  %49 = call i8* @strVal(i32* %48)
  store i8* %49, i8** %12, align 8
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  br label %122

50:                                               ; preds = %4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @linitial(i32 %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %21, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @lsecond(i32 %58)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %22, align 8
  %61 = load i32*, i32** %21, align 8
  %62 = load i32, i32* @String, align 4
  %63 = call i32 @IsA(i32* %61, i32 %62)
  %64 = call i32 @Assert(i32 %63)
  %65 = load i32*, i32** %21, align 8
  %66 = call i8* @strVal(i32* %65)
  store i8* %66, i8** %12, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = load i32, i32* @A_Star, align 4
  %69 = call i32 @IsA(i32* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %50
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i32 1, i32* %18, align 4
  br label %122

72:                                               ; preds = %50
  %73 = load i32*, i32** %22, align 8
  %74 = load i32, i32* @String, align 4
  %75 = call i32 @IsA(i32* %73, i32 %74)
  %76 = call i32 @Assert(i32 %75)
  %77 = load i32*, i32** %22, align 8
  %78 = call i8* @strVal(i32* %77)
  store i8* %78, i8** %13, align 8
  %79 = load i8*, i8** %13, align 8
  store i8* %79, i8** %15, align 8
  store i32 2, i32* %17, align 4
  store i32 2, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %122

80:                                               ; preds = %4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @linitial(i32 %83)
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %23, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @lsecond(i32 %88)
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %24, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @lthird(i32 %93)
  %95 = inttoptr i64 %94 to i32*
  store i32* %95, i32** %25, align 8
  %96 = load i32*, i32** %23, align 8
  %97 = load i32, i32* @String, align 4
  %98 = call i32 @IsA(i32* %96, i32 %97)
  %99 = call i32 @Assert(i32 %98)
  %100 = load i32*, i32** %23, align 8
  %101 = call i8* @strVal(i32* %100)
  store i8* %101, i8** %12, align 8
  %102 = load i32*, i32** %24, align 8
  %103 = load i32, i32* @String, align 4
  %104 = call i32 @IsA(i32* %102, i32 %103)
  %105 = call i32 @Assert(i32 %104)
  %106 = load i32*, i32** %24, align 8
  %107 = call i8* @strVal(i32* %106)
  store i8* %107, i8** %13, align 8
  %108 = load i32*, i32** %25, align 8
  %109 = load i32, i32* @A_Star, align 4
  %110 = call i32 @IsA(i32* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %80
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i32 2, i32* %18, align 4
  br label %122

113:                                              ; preds = %80
  %114 = load i32*, i32** %25, align 8
  %115 = load i32, i32* @String, align 4
  %116 = call i32 @IsA(i32* %114, i32 %115)
  %117 = call i32 @Assert(i32 %116)
  %118 = load i32*, i32** %25, align 8
  %119 = call i8* @strVal(i32* %118)
  store i8* %119, i8** %14, align 8
  %120 = load i8*, i8** %14, align 8
  store i8* %120, i8** %15, align 8
  store i32 2, i32* %19, align 4
  br label %122

121:                                              ; preds = %4
  store i32* null, i32** %5, align 8
  br label %261

122:                                              ; preds = %113, %112, %72, %71, %38
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = call %struct.TYPE_15__* @plpgsql_ns_lookup(i32 %125, i32 0, i8* %126, i8* %127, i8* %128, i32* %16)
  store %struct.TYPE_15__* %129, %struct.TYPE_15__** %11, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %131 = icmp eq %struct.TYPE_15__* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  store i32* null, i32** %5, align 8
  br label %261

133:                                              ; preds = %122
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %254 [
    i32 128, label %137
    i32 129, label %151
  ]

137:                                              ; preds = %133
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32* @make_datum_param(%struct.TYPE_16__* %142, i32 %145, i32 %148)
  store i32* %149, i32** %5, align 8
  br label %261

150:                                              ; preds = %137
  br label %260

151:                                              ; preds = %133
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %18, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32* @make_datum_param(%struct.TYPE_16__* %156, i32 %159, i32 %162)
  store i32* %163, i32** %5, align 8
  br label %261

164:                                              ; preds = %151
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %19, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %253

168:                                              ; preds = %164
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %171, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %26, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %27, align 4
  br label %182

182:                                              ; preds = %225, %168
  %183 = load i32, i32* %27, align 4
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %185, label %229

185:                                              ; preds = %182
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %27, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %193, %struct.TYPE_13__** %28, align 8
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @PLPGSQL_DTYPE_RECFIELD, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %185
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = icmp eq i64 %202, %206
  br label %208

208:                                              ; preds = %199, %185
  %209 = phi i1 [ false, %185 ], [ %207, %199 ]
  %210 = zext i1 %209 to i32
  %211 = call i32 @Assert(i32 %210)
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load i8*, i8** %15, align 8
  %216 = call i32 @strcmp(i32 %214, i8* %215)
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %208
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %220 = load i32, i32* %27, align 4
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32* @make_datum_param(%struct.TYPE_16__* %219, i32 %220, i32 %223)
  store i32* %224, i32** %5, align 8
  br label %261

225:                                              ; preds = %208
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  store i32 %228, i32* %27, align 4
  br label %182

229:                                              ; preds = %182
  %230 = load i32, i32* %9, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %252

232:                                              ; preds = %229
  %233 = load i32, i32* @ERROR, align 4
  %234 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %235 = call i32 @errcode(i32 %234)
  %236 = load i32, i32* %19, align 4
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = load i8*, i8** %12, align 8
  br label %242

240:                                              ; preds = %232
  %241 = load i8*, i8** %13, align 8
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i8* [ %239, %238 ], [ %241, %240 ]
  %244 = load i8*, i8** %15, align 8
  %245 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %243, i8* %244)
  %246 = load i32*, i32** %6, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @parser_errposition(i32* %246, i32 %249)
  %251 = call i32 @ereport(i32 %233, i32 %250)
  br label %252

252:                                              ; preds = %242, %229
  br label %253

253:                                              ; preds = %252, %164
  br label %260

254:                                              ; preds = %133
  %255 = load i32, i32* @ERROR, align 4
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @elog(i32 %255, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %258)
  br label %260

260:                                              ; preds = %254, %253, %150
  store i32* null, i32** %5, align 8
  br label %261

261:                                              ; preds = %260, %218, %155, %141, %132, %121
  %262 = load i32*, i32** %5, align 8
  ret i32* %262
}

declare dso_local i32 @list_length(i32) #1

declare dso_local i64 @linitial(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsA(i32*, i32) #1

declare dso_local i8* @strVal(i32*) #1

declare dso_local i64 @lsecond(i32) #1

declare dso_local i64 @lthird(i32) #1

declare dso_local %struct.TYPE_15__* @plpgsql_ns_lookup(i32, i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32* @make_datum_param(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
