; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_fix_dependencies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_fix_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__*, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i32, i64*, i32, i64*, i64, i64, i32*, %struct.TYPE_7__*, i32, i32*, i32* }

@K_VERS_1_11 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"BLOB COMMENTS\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BLOBS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @fix_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_dependencies(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %3, align 8
  br label %14

14:                                               ; preds = %34, %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store i64* null, i64** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  store i32 0, i32* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 11
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 10
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %20
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %3, align 8
  br label %14

38:                                               ; preds = %14
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = call i32 @repoint_table_dependencies(%struct.TYPE_8__* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @K_VERS_1_11, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %119

46:                                               ; preds = %38
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %3, align 8
  br label %52

52:                                               ; preds = %114, %46
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = icmp ne %struct.TYPE_7__* %53, %56
  br i1 %57, label %58, label %118

58:                                               ; preds = %52
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @strcmp(i32 %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %113

64:                                               ; preds = %58
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %113

69:                                               ; preds = %64
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %5, align 8
  br label %75

75:                                               ; preds = %108, %69
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = icmp ne %struct.TYPE_7__* %76, %79
  br i1 %80, label %81, label %112

81:                                               ; preds = %75
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @strcmp(i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = call i64 @pg_malloc(i32 8)
  %89 = inttoptr i64 %88 to i64*
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  store i64* %89, i64** %91, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 %94, i64* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  br label %112

107:                                              ; preds = %81
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %5, align 8
  br label %75

112:                                              ; preds = %87, %75
  br label %118

113:                                              ; preds = %64, %58
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %3, align 8
  br label %52

118:                                              ; preds = %112, %52
  br label %119

119:                                              ; preds = %118, %38
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %3, align 8
  br label %125

125:                                              ; preds = %179, %119
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = icmp ne %struct.TYPE_7__* %126, %129
  br i1 %130, label %131, label %183

131:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %175, %131
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %178

138:                                              ; preds = %132
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 4
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %6, align 8
  %146 = load i64, i64* %6, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ule i64 %146, %149
  br i1 %150, label %151, label %169

151:                                              ; preds = %138
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %153, align 8
  %155 = load i64, i64* %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %154, i64 %155
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = icmp ne %struct.TYPE_7__* %157, null
  br i1 %158, label %159, label %169

159:                                              ; preds = %151
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %161, align 8
  %163 = load i64, i64* %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %162, i64 %163
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  br label %174

169:                                              ; preds = %151, %138
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %169, %159
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %132

178:                                              ; preds = %132
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  store %struct.TYPE_7__* %182, %struct.TYPE_7__** %3, align 8
  br label %125

183:                                              ; preds = %125
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  store %struct.TYPE_7__* %188, %struct.TYPE_7__** %3, align 8
  br label %189

189:                                              ; preds = %214, %183
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = icmp ne %struct.TYPE_7__* %190, %193
  br i1 %194, label %195, label %218

195:                                              ; preds = %189
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %195
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 8
  %206 = trunc i64 %205 to i32
  %207 = call i64 @pg_malloc(i32 %206)
  %208 = inttoptr i64 %207 to i64*
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  store i64* %208, i64** %210, align 8
  br label %211

211:                                              ; preds = %200, %195
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 3
  store i32 0, i32* %213, align 8
  br label %214

214:                                              ; preds = %211
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  store %struct.TYPE_7__* %217, %struct.TYPE_7__** %3, align 8
  br label %189

218:                                              ; preds = %189
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  store %struct.TYPE_7__* %223, %struct.TYPE_7__** %3, align 8
  br label %224

224:                                              ; preds = %282, %218
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = icmp ne %struct.TYPE_7__* %225, %228
  br i1 %229, label %230, label %286

230:                                              ; preds = %224
  store i32 0, i32* %4, align 4
  br label %231

231:                                              ; preds = %278, %230
  %232 = load i32, i32* %4, align 4
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %281

237:                                              ; preds = %231
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 4
  %240 = load i64*, i64** %239, align 8
  %241 = load i32, i32* %4, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %7, align 8
  %245 = load i64, i64* %7, align 8
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ule i64 %245, %248
  br i1 %249, label %250, label %277

250:                                              ; preds = %237
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 3
  %253 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %252, align 8
  %254 = load i64, i64* %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %253, i64 %254
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = icmp ne %struct.TYPE_7__* %256, null
  br i1 %257, label %258, label %277

258:                                              ; preds = %250
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %260, align 8
  %262 = load i64, i64* %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %261, i64 %262
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  store %struct.TYPE_7__* %264, %struct.TYPE_7__** %8, align 8
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 5
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 2
  %270 = load i64*, i64** %269, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 8
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i64, i64* %270, i64 %275
  store i64 %267, i64* %276, align 8
  br label %277

277:                                              ; preds = %258, %250, %237
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %4, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %4, align 4
  br label %231

281:                                              ; preds = %231
  br label %282

282:                                              ; preds = %281
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 8
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %284, align 8
  store %struct.TYPE_7__* %285, %struct.TYPE_7__** %3, align 8
  br label %224

286:                                              ; preds = %224
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 2
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 8
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %290, align 8
  store %struct.TYPE_7__* %291, %struct.TYPE_7__** %3, align 8
  br label %292

292:                                              ; preds = %306, %286
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %295, align 8
  %297 = icmp ne %struct.TYPE_7__* %293, %296
  br i1 %297, label %298, label %310

298:                                              ; preds = %292
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 7
  store i32* null, i32** %300, align 8
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 6
  store i64 0, i64* %302, align 8
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %305 = call i32 @identify_locking_dependencies(%struct.TYPE_8__* %303, %struct.TYPE_7__* %304)
  br label %306

306:                                              ; preds = %298
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 8
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %308, align 8
  store %struct.TYPE_7__* %309, %struct.TYPE_7__** %3, align 8
  br label %292

310:                                              ; preds = %292
  ret void
}

declare dso_local i32 @repoint_table_dependencies(%struct.TYPE_8__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @identify_locking_dependencies(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
