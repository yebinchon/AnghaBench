; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_rsym.c_rsym_parse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_rsym.c_rsym_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.pool = type { i32 }
%struct.sparse_array = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid ROSSYM_HEADER\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@SymDia = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rsym_parse(%struct.module* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.pool, align 4
  %16 = alloca %struct.sparse_array, align 4
  %17 = alloca %struct.sparse_array, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca %struct.TYPE_7__*, align 8
  store %struct.module* %0, %struct.module** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %18, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %10, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 16
  br i1 %31, label %61, label %32

32:                                               ; preds = %4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = icmp slt i32 %35, %42
  br i1 %43, label %61, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = icmp slt i32 %45, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %44
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = urem i64 %58, 24
  %60 = icmp ne i64 0, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54, %44, %32, %4
  %62 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %63 = load i8*, i8** @FALSE, align 8
  store i8* %63, i8** %5, align 8
  br label %273

64:                                               ; preds = %54
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = bitcast i8* %70 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %11, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %76, 24
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %77
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %12, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  store i8* %84, i8** %14, align 8
  %85 = call i32 @pool_init(%struct.pool* %15, i32 65536)
  %86 = call i32 @sparse_array_init(%struct.sparse_array* %16, i32 16, i32 64)
  %87 = call i32 @sparse_array_init(%struct.sparse_array* %17, i32 24, i32 128)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %13, align 8
  br label %89

89:                                               ; preds = %227, %64
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %92 = icmp ne %struct.TYPE_10__* %90, %91
  br i1 %92, label %93, label %230

93:                                               ; preds = %89
  %94 = load i64, i64* %7, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %94, %97
  store i64 %98, i64* %19, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %145, label %103

103:                                              ; preds = %93
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @sparse_array_find(%struct.sparse_array* %17, i32 %106)
  %108 = bitcast i8* %107 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %20, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %110 = icmp ne %struct.TYPE_7__* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %19, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %111, %103
  %118 = load i8*, i8** %14, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  store i8* %123, i8** %21, align 8
  %124 = load i8*, i8** %21, align 8
  %125 = call i32 @is_metadata_sym(i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %117
  store i64 8, i64* %22, align 8
  %128 = load i8*, i8** %21, align 8
  %129 = call i64 @use_raw_address(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %19, align 8
  br label %135

135:                                              ; preds = %131, %127
  %136 = load %struct.module*, %struct.module** %6, align 8
  %137 = load i8*, i8** %21, align 8
  %138 = load i8*, i8** @FALSE, align 8
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* %22, align 8
  %141 = call i32 @symt_new_public(%struct.module* %136, i32* null, i8* %137, i8* %138, i64 %139, i64 %140)
  br label %143

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142, %135
  br label %144

144:                                              ; preds = %143, %111
  br label %226

145:                                              ; preds = %93
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @sparse_array_find(%struct.sparse_array* %16, i32 %148)
  %150 = bitcast i8* %149 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %150, %struct.TYPE_8__** %23, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @sparse_array_find(%struct.sparse_array* %17, i32 %153)
  %155 = bitcast i8* %154 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %155, %struct.TYPE_7__** %24, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %157 = icmp ne %struct.TYPE_8__* %156, null
  br i1 %157, label %182, label %158

158:                                              ; preds = %145
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @sparse_array_add(%struct.sparse_array* %16, i32 %161, %struct.pool* %15)
  %163 = bitcast i8* %162 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %163, %struct.TYPE_8__** %23, align 8
  %164 = load i8*, i8** %14, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %164, i64 %168
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  %172 = load %struct.module*, %struct.module** %6, align 8
  %173 = load i8*, i8** %14, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %173, i64 %177
  %179 = call i32 @source_new(%struct.module* %172, i32* null, i8* %178)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %158, %145
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %184 = icmp ne %struct.TYPE_7__* %183, null
  br i1 %184, label %209, label %185

185:                                              ; preds = %182
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @sparse_array_add(%struct.sparse_array* %17, i32 %188, %struct.pool* %15)
  %190 = bitcast i8* %189 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %190, %struct.TYPE_7__** %24, align 8
  %191 = load %struct.module*, %struct.module** %6, align 8
  %192 = load i8*, i8** %14, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %192, i64 %196
  %198 = load i64, i64* %19, align 8
  %199 = call i32 @symt_new_function(%struct.module* %191, i32* null, i8* %197, i64 %198, i32 0, i32* null)
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  %202 = load i64, i64* %19, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  store %struct.TYPE_7__* %205, %struct.TYPE_7__** %207, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %208, %struct.TYPE_7__** %18, align 8
  br label %209

209:                                              ; preds = %185, %182
  %210 = load %struct.module*, %struct.module** %6, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load i64, i64* %19, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = sub nsw i64 %220, %223
  %225 = call i32 @symt_add_func_line(%struct.module* %210, i32 %213, i32 %216, i32 %219, i64 %224)
  br label %226

226:                                              ; preds = %209, %144
  br label %227

227:                                              ; preds = %226
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 1
  store %struct.TYPE_10__* %229, %struct.TYPE_10__** %13, align 8
  br label %89

230:                                              ; preds = %89
  br label %231

231:                                              ; preds = %234, %230
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %233 = icmp ne %struct.TYPE_7__* %232, null
  br i1 %233, label %234, label %243

234:                                              ; preds = %231
  %235 = load %struct.module*, %struct.module** %6, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @rsym_finalize_function(%struct.module* %235, i32 %238)
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  store %struct.TYPE_7__* %242, %struct.TYPE_7__** %18, align 8
  br label %231

243:                                              ; preds = %231
  %244 = load i32, i32* @SymDia, align 4
  %245 = load %struct.module*, %struct.module** %6, align 8
  %246 = getelementptr inbounds %struct.module, %struct.module* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 6
  store i32 %244, i32* %247, align 8
  %248 = load %struct.module*, %struct.module** %6, align 8
  %249 = getelementptr inbounds %struct.module, %struct.module* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  store i8 82, i8* %250, align 8
  %251 = load i8*, i8** @TRUE, align 8
  %252 = load %struct.module*, %struct.module** %6, align 8
  %253 = getelementptr inbounds %struct.module, %struct.module* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 5
  store i8* %251, i8** %254, align 8
  %255 = load i8*, i8** @TRUE, align 8
  %256 = load %struct.module*, %struct.module** %6, align 8
  %257 = getelementptr inbounds %struct.module, %struct.module* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 4
  store i8* %255, i8** %258, align 8
  %259 = load i8*, i8** @FALSE, align 8
  %260 = load %struct.module*, %struct.module** %6, align 8
  %261 = getelementptr inbounds %struct.module, %struct.module* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 3
  store i8* %259, i8** %262, align 8
  %263 = load i8*, i8** @TRUE, align 8
  %264 = load %struct.module*, %struct.module** %6, align 8
  %265 = getelementptr inbounds %struct.module, %struct.module* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 2
  store i8* %263, i8** %266, align 8
  %267 = load i8*, i8** @TRUE, align 8
  %268 = load %struct.module*, %struct.module** %6, align 8
  %269 = getelementptr inbounds %struct.module, %struct.module* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  store i8* %267, i8** %270, align 8
  %271 = call i32 @pool_destroy(%struct.pool* %15)
  %272 = load i8*, i8** @TRUE, align 8
  store i8* %272, i8** %5, align 8
  br label %273

273:                                              ; preds = %243, %61
  %274 = load i8*, i8** %5, align 8
  ret i8* %274
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @pool_init(%struct.pool*, i32) #1

declare dso_local i32 @sparse_array_init(%struct.sparse_array*, i32, i32) #1

declare dso_local i8* @sparse_array_find(%struct.sparse_array*, i32) #1

declare dso_local i32 @is_metadata_sym(i8*) #1

declare dso_local i64 @use_raw_address(i8*) #1

declare dso_local i32 @symt_new_public(%struct.module*, i32*, i8*, i8*, i64, i64) #1

declare dso_local i8* @sparse_array_add(%struct.sparse_array*, i32, %struct.pool*) #1

declare dso_local i32 @source_new(%struct.module*, i32*, i8*) #1

declare dso_local i32 @symt_new_function(%struct.module*, i32*, i8*, i64, i32, i32*) #1

declare dso_local i32 @symt_add_func_line(%struct.module*, i32, i32, i32, i64) #1

declare dso_local i32 @rsym_finalize_function(%struct.module*, i32) #1

declare dso_local i32 @pool_destroy(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
