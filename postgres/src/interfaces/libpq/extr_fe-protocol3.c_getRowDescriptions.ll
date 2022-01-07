; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getRowDescriptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getRowDescriptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i32, %struct.TYPE_16__*, i32, %struct.TYPE_19__ }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@PGQUERY_DESCRIBE = common dso_local global i64 0, align 8
@PGRES_COMMAND_OK = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"insufficient data in \22T\22 message\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"extraneous data in \22T\22 message\00", align 1
@PGASYNC_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"out of memory for query result\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @getRowDescriptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getRowDescriptions(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PGQUERY_DESCRIBE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = icmp ne %struct.TYPE_16__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %6, align 8
  br label %34

30:                                               ; preds = %21
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = load i32, i32* @PGRES_COMMAND_OK, align 4
  %33 = call %struct.TYPE_16__* @PQmakeEmptyPGresult(%struct.TYPE_18__* %31, i32 %32)
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %6, align 8
  br label %34

34:                                               ; preds = %30, %26
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %38 = call %struct.TYPE_16__* @PQmakeEmptyPGresult(%struct.TYPE_18__* %36, i32 %37)
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %6, align 8
  br label %39

39:                                               ; preds = %35, %34
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = icmp ne %struct.TYPE_16__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i8* null, i8** %8, align 8
  br label %248

43:                                               ; preds = %39
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = call i64 @pqGetInt(i32* %45, i32 2, %struct.TYPE_18__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i8* @libpq_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* %50, i8** %8, align 8
  br label %248

51:                                               ; preds = %43
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %51
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 28
  %62 = trunc i64 %61 to i32
  %63 = call i64 @pqResultAlloc(%struct.TYPE_16__* %58, i32 %62, i32 1)
  %64 = inttoptr i64 %63 to %struct.TYPE_17__*
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = icmp ne %struct.TYPE_17__* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %57
  store i8* null, i8** %8, align 8
  br label %248

72:                                               ; preds = %57
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 28
  %79 = trunc i64 %78 to i32
  %80 = call i32 @MemSet(%struct.TYPE_17__* %75, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %72, %51
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %212, %81
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %215

92:                                               ; preds = %88
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = call i64 @pqGets(%struct.TYPE_19__* %94, %struct.TYPE_18__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %122, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = call i64 @pqGetInt(i32* %10, i32 4, %struct.TYPE_18__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %122, label %102

102:                                              ; preds = %98
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = call i64 @pqGetInt(i32* %11, i32 2, %struct.TYPE_18__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %122, label %106

106:                                              ; preds = %102
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = call i64 @pqGetInt(i32* %12, i32 4, %struct.TYPE_18__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %106
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = call i64 @pqGetInt(i32* %13, i32 2, %struct.TYPE_18__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = call i64 @pqGetInt(i32* %14, i32 4, %struct.TYPE_18__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %120 = call i64 @pqGetInt(i32* %15, i32 2, %struct.TYPE_18__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118, %114, %110, %106, %102, %98, %92
  %123 = call i8* @libpq_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* %123, i8** %8, align 8
  br label %248

124:                                              ; preds = %118
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %15, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @pqResultStrdup(%struct.TYPE_16__* %134, i32 %138)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 6
  store i32 %139, i32* %146, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %124
  store i8* null, i8** %8, align 8
  br label %248

157:                                              ; preds = %124
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  store i32 %158, i32* %165, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  store i32 %166, i32* %173, align 4
  %174 = load i32, i32* %15, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 2
  store i32 %174, i32* %181, align 4
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 3
  store i32 %182, i32* %189, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 4
  store i32 %190, i32* %197, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 5
  store i32 %198, i32* %205, align 4
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 1
  br i1 %207, label %208, label %211

208:                                              ; preds = %157
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  store i32 0, i32* %210, align 4
  br label %211

211:                                              ; preds = %208, %157
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  br label %88

215:                                              ; preds = %88
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %221, 5
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %222, %224
  %226 = icmp ne i64 %218, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %215
  %228 = call i8* @libpq_gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i8* %228, i8** %8, align 8
  br label %248

229:                                              ; preds = %215
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 4
  store %struct.TYPE_16__* %230, %struct.TYPE_16__** %232, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 2
  store i64 %235, i64* %237, align 8
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @PGQUERY_DESCRIBE, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %229
  %244 = load i32, i32* @PGASYNC_READY, align 4
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 5
  store i32 %244, i32* %246, align 8
  store i32 0, i32* %3, align 4
  br label %281

247:                                              ; preds = %229
  store i32 0, i32* %3, align 4
  br label %281

248:                                              ; preds = %227, %156, %122, %71, %49, %42
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %250 = icmp ne %struct.TYPE_16__* %249, null
  br i1 %250, label %251, label %260

251:                                              ; preds = %248
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 4
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %254, align 8
  %256 = icmp ne %struct.TYPE_16__* %252, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %251
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %259 = call i32 @PQclear(%struct.TYPE_16__* %258)
  br label %260

260:                                              ; preds = %257, %251, %248
  %261 = load i32, i32* %5, align 4
  %262 = add nsw i32 5, %261
  %263 = sext i32 %262 to i64
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %266, %263
  store i64 %267, i64* %265, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %269 = call i32 @pqClearAsyncResult(%struct.TYPE_18__* %268)
  %270 = load i8*, i8** %8, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %274, label %272

272:                                              ; preds = %260
  %273 = call i8* @libpq_gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i8* %273, i8** %8, align 8
  br label %274

274:                                              ; preds = %272, %260
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 3
  %277 = load i8*, i8** %8, align 8
  %278 = call i32 @printfPQExpBuffer(i32* %276, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %277)
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %280 = call i32 @pqSaveErrorResult(%struct.TYPE_18__* %279)
  store i32 0, i32* %3, align 4
  br label %281

281:                                              ; preds = %274, %247, %243
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local %struct.TYPE_16__* @PQmakeEmptyPGresult(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @pqGetInt(i32*, i32, %struct.TYPE_18__*) #1

declare dso_local i8* @libpq_gettext(i8*) #1

declare dso_local i64 @pqResultAlloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @pqGets(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @pqResultStrdup(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @PQclear(%struct.TYPE_16__*) #1

declare dso_local i32 @pqClearAsyncResult(%struct.TYPE_18__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i8*, i8*) #1

declare dso_local i32 @pqSaveErrorResult(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
