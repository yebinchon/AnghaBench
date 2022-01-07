; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplestore.c_tuplestore_gettuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplestore.c_tuplestore_gettuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i8**, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32 }

@EXEC_FLAG_BACKWARD = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not seek in tuplestore temporary file: %m\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid tuplestore state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i32, i32*)* @tuplestore_gettuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tuplestore_gettuple(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 9
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %16
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @EXEC_FLAG_BACKWARD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %20, %3
  %28 = phi i1 [ true, %3 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %272 [
    i32 130, label %34
    i32 128, label %127
    i32 129, label %171
  ]

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i8* null, i8** %4, align 8
  br label %275

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8*, i8** %55, i64 %60
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %4, align 8
  br label %275

63:                                               ; preds = %44
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  store i8* null, i8** %4, align 8
  br label %275

66:                                               ; preds = %34
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  br label %100

79:                                               ; preds = %66
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %82, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  store i8* null, i8** %4, align 8
  br label %275

95:                                               ; preds = %79
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %71
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = icmp sle i32 %103, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @Assert(i32 %114)
  store i8* null, i8** %4, align 8
  br label %275

116:                                              ; preds = %100
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i8**, i8*** %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %119, i64 %124
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %4, align 8
  br label %275

127:                                              ; preds = %27
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i8* null, i8** %4, align 8
  br label %275

136:                                              ; preds = %132, %127
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  %144 = call i32 @BufFileTell(i32 %139, i32* %141, i32* %143)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %168, label %149

149:                                              ; preds = %136
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* @SEEK_SET, align 4
  %160 = call i32 @BufFileSeek(i32 %152, i32 %155, i64 %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %149
  %163 = load i32, i32* @ERROR, align 4
  %164 = call i32 (...) @errcode_for_file_access()
  %165 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %166 = call i32 @ereport(i32 %163, i32 %165)
  br label %167

167:                                              ; preds = %162, %149
  br label %168

168:                                              ; preds = %167, %136
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  store i32 129, i32* %170, align 8
  br label %171

171:                                              ; preds = %27, %168
  %172 = load i32*, i32** %7, align 8
  store i32 1, i32* %172, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %171
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %177 = call i32 @getlen(%struct.TYPE_6__* %176, i32 1)
  store i32 %177, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i8* @READTUP(%struct.TYPE_6__* %180, i32 %181)
  store i8* %182, i8** %10, align 8
  %183 = load i8*, i8** %10, align 8
  store i8* %183, i8** %4, align 8
  br label %275

184:                                              ; preds = %175
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  store i8* null, i8** %4, align 8
  br label %275

187:                                              ; preds = %171
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @SEEK_CUR, align 4
  %192 = call i32 @BufFileSeek(i32 %190, i32 0, i64 -4, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %187
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  store i32 0, i32* %196, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = call i32 @Assert(i32 %202)
  store i8* null, i8** %4, align 8
  br label %275

204:                                              ; preds = %187
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %206 = call i32 @getlen(%struct.TYPE_6__* %205, i32 0)
  store i32 %206, i32* %9, align 4
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  store i32 0, i32* %213, align 4
  br label %252

214:                                              ; preds = %204
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = zext i32 %218 to i64
  %220 = add i64 %219, 8
  %221 = sub nsw i64 0, %220
  %222 = load i32, i32* @SEEK_CUR, align 4
  %223 = call i32 @BufFileSeek(i32 %217, i32 0, i64 %221, i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %249

225:                                              ; preds = %214
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = zext i32 %229 to i64
  %231 = add i64 %230, 4
  %232 = sub nsw i64 0, %231
  %233 = load i32, i32* @SEEK_CUR, align 4
  %234 = call i32 @BufFileSeek(i32 %228, i32 0, i64 %232, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %225
  %237 = load i32, i32* @ERROR, align 4
  %238 = call i32 (...) @errcode_for_file_access()
  %239 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %240 = call i32 @ereport(i32 %237, i32 %239)
  br label %241

241:                                              ; preds = %236, %225
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = call i32 @Assert(i32 %247)
  store i8* null, i8** %4, align 8
  br label %275

249:                                              ; preds = %214
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %251 = call i32 @getlen(%struct.TYPE_6__* %250, i32 0)
  store i32 %251, i32* %9, align 4
  br label %252

252:                                              ; preds = %249, %211
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = zext i32 %256 to i64
  %258 = sub nsw i64 0, %257
  %259 = load i32, i32* @SEEK_CUR, align 4
  %260 = call i32 @BufFileSeek(i32 %255, i32 0, i64 %258, i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %252
  %263 = load i32, i32* @ERROR, align 4
  %264 = call i32 (...) @errcode_for_file_access()
  %265 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %266 = call i32 @ereport(i32 %263, i32 %265)
  br label %267

267:                                              ; preds = %262, %252
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %269 = load i32, i32* %9, align 4
  %270 = call i8* @READTUP(%struct.TYPE_6__* %268, i32 %269)
  store i8* %270, i8** %10, align 8
  %271 = load i8*, i8** %10, align 8
  store i8* %271, i8** %4, align 8
  br label %275

272:                                              ; preds = %27
  %273 = load i32, i32* @ERROR, align 4
  %274 = call i32 @elog(i32 %273, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %275

275:                                              ; preds = %272, %267, %241, %194, %184, %179, %135, %116, %108, %87, %63, %52, %43
  %276 = load i8*, i8** %4, align 8
  ret i8* %276
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufFileTell(i32, i32*, i32*) #1

declare dso_local i32 @BufFileSeek(i32, i32, i64, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @getlen(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @READTUP(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
