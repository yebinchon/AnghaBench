; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplestore.c_tuplestore_puttuple_common.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplestore.c_tuplestore_puttuple_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i8**, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@CurrentResourceOwner = common dso_local global i32 0, align 4
@EXEC_FLAG_BACKWARD = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not seek in tuplestore temporary file: %m\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid tuplestore state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*)* @tuplestore_puttuple_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tuplestore_puttuple_common(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 14
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %261 [
    i32 130, label %15
    i32 128, label %120
    i32 129, label %162
  ]

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %45, %15
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %30, %25
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 1
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %19

50:                                               ; preds = %19
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp sge i32 %53, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %50
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = call i32 @grow_memtuples(%struct.TYPE_8__* %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @Assert(i32 %69)
  br label %71

71:                                               ; preds = %59, %50
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 13
  %75 = load i8**, i8*** %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 12
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8*, i8** %75, i64 %80
  store i8* %72, i8** %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 12
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %71
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = call i32 @LACKMEM(%struct.TYPE_8__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  br label %264

94:                                               ; preds = %89, %71
  %95 = call i32 (...) @PrepareTempTablespaces()
  %96 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %96, i32* %7, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* @CurrentResourceOwner, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @BufFileCreateTemp(i32 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* @CurrentResourceOwner, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @EXEC_FLAG_BACKWARD, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 128, i32* %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = call i32 @dumptuples(%struct.TYPE_8__* %118)
  br label %264

120:                                              ; preds = %2
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %153, %120
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %158

130:                                              ; preds = %124
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %130
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %136, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %135
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = call i32 @BufFileTell(i32 %146, i32* %148, i32* %150)
  br label %152

152:                                              ; preds = %141, %135, %130
  br label %153

153:                                              ; preds = %152
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 1
  store %struct.TYPE_9__* %155, %struct.TYPE_9__** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %124

158:                                              ; preds = %124
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %160 = load i8*, i8** %4, align 8
  %161 = call i32 @WRITETUP(%struct.TYPE_8__* %159, i8* %160)
  br label %264

162:                                              ; preds = %2
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 7
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %197, label %174

174:                                              ; preds = %162
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 7
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = call i32 @BufFileTell(i32 %177, i32* %186, i32* %195)
  br label %197

197:                                              ; preds = %174, %162
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @SEEK_SET, align 4
  %208 = call i32 @BufFileSeek(i32 %200, i32 %203, i32 %206, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %197
  %211 = load i32, i32* @ERROR, align 4
  %212 = call i32 (...) @errcode_for_file_access()
  %213 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %214 = call i32 @ereport(i32 %211, i32 %213)
  br label %215

215:                                              ; preds = %210, %197
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  store i32 128, i32* %217, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 7
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  store %struct.TYPE_9__* %220, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %221

221:                                              ; preds = %252, %215
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %257

227:                                              ; preds = %221
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %251

232:                                              ; preds = %227
  %233 = load i32, i32* %6, align 4
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %233, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %232
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  store i32 0, i32* %240, align 4
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 4
  br label %251

251:                                              ; preds = %238, %232, %227
  br label %252

252:                                              ; preds = %251
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 1
  store %struct.TYPE_9__* %254, %struct.TYPE_9__** %5, align 8
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  br label %221

257:                                              ; preds = %221
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %259 = load i8*, i8** %4, align 8
  %260 = call i32 @WRITETUP(%struct.TYPE_8__* %258, i8* %259)
  br label %264

261:                                              ; preds = %2
  %262 = load i32, i32* @ERROR, align 4
  %263 = call i32 @elog(i32 %262, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %264

264:                                              ; preds = %93, %261, %257, %158, %94
  ret void
}

declare dso_local i32 @grow_memtuples(%struct.TYPE_8__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LACKMEM(%struct.TYPE_8__*) #1

declare dso_local i32 @PrepareTempTablespaces(...) #1

declare dso_local i32 @BufFileCreateTemp(i32) #1

declare dso_local i32 @dumptuples(%struct.TYPE_8__*) #1

declare dso_local i32 @BufFileTell(i32, i32*, i32*) #1

declare dso_local i32 @WRITETUP(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @BufFileSeek(i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
