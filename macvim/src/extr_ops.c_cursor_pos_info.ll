; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_ops.c_cursor_pos_info.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_ops.c_cursor_pos_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__, i64, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__, i64 }
%struct.TYPE_16__ = type { i32, i64, i64, i32, i32 }
%struct.block_def = type { i64, i32* }

@curbuf = common dso_local global %struct.TYPE_18__* null, align 8
@ML_EMPTY = common dso_local global i32 0, align 4
@no_lines_msg = common dso_local global i8* null, align 8
@EOL_DOS = common dso_local global i64 0, align 8
@VIsual_active = common dso_local global i64 0, align 8
@VIsual = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@curwin = common dso_local global %struct.TYPE_17__* null, align 8
@p_sel = common dso_local global i8* null, align 8
@VIsual_mode = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OP_NOP = common dso_local global i32 0, align 4
@MAXCOL = common dso_local global i64 0, align 8
@got_int = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%ld Cols; \00", align 1
@NUL = common dso_local global i32 0, align 4
@IObuff = common dso_local global i32* null, align 8
@IOSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Selected %s%ld of %ld Lines; %ld of %ld Words; %ld of %ld Bytes\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"Selected %s%ld of %ld Lines; %ld of %ld Words; %ld of %ld Chars; %ld of %ld Bytes\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Col %s of %s; Line %ld of %ld; Word %ld of %ld; Byte %ld of %ld\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"Col %s of %s; Line %ld of %ld; Word %ld of %ld; Char %ld of %ld; Byte %ld of %ld\00", align 1
@p_shm = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAYBE = common dso_local global i32 0, align 4
@empty_option = common dso_local global i32* null, align 8
@p_sbr = common dso_local global i32* null, align 8
@virtual_op = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_pos_info() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [50 x i32], align 16
  %3 = alloca [40 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca %struct.TYPE_15__, align 8
  %16 = alloca %struct.TYPE_16__, align 8
  %17 = alloca %struct.block_def, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 100000, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ML_EMPTY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %0
  %30 = load i8*, i8** @no_lines_msg, align 8
  %31 = call i8* @_(i8* %30)
  %32 = call i32 @MSG(i8* %31)
  br label %460

33:                                               ; preds = %0
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %35 = call i64 @get_fileformat(%struct.TYPE_18__* %34)
  %36 = load i64, i64* @EOL_DOS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 2, i32* %11, align 4
  br label %40

39:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i64, i64* @VIsual_active, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %133

43:                                               ; preds = %40
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i64, i64* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.TYPE_15__* @VIsual to { i64, i32 }*), i32 0, i32 0), align 8
  %47 = load i32, i32* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.TYPE_15__* @VIsual to { i64, i32 }*), i32 0, i32 1), align 8
  %48 = bitcast %struct.TYPE_15__* %45 to { i64, i32 }*
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %48, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @lt(i64 %46, i32 %47, i64 %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %43
  %56 = bitcast %struct.TYPE_15__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 bitcast (%struct.TYPE_15__* @VIsual to i8*), i64 16, i1 false)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = bitcast %struct.TYPE_15__* %15 to i8*
  %60 = bitcast %struct.TYPE_15__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  br label %67

61:                                               ; preds = %43
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = bitcast %struct.TYPE_15__* %14 to i8*
  %65 = bitcast %struct.TYPE_15__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 16, i1 false)
  %66 = bitcast %struct.TYPE_15__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 bitcast (%struct.TYPE_15__* @VIsual to i8*), i64 16, i1 false)
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i8*, i8** @p_sel, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 101
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %76, %72, %67
  %81 = load i32, i32* @VIsual_mode, align 4
  %82 = icmp eq i32 %81, 128
  br i1 %82, label %83, label %125

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load i32, i32* @TRUE, align 4
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 4
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @OP_NOP, align 4
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  store i32 %87, i32* %88, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %92 = call i32 @getvcols(%struct.TYPE_17__* %89, %struct.TYPE_15__* %14, %struct.TYPE_15__* %15, i64* %90, i64* %91)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MAXCOL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load i64, i64* @MAXCOL, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %83
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %109
  store i64 %112, i64* %110, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %114, %116
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  store i64 %117, i64* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, %120
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %107, %101
  br label %125

125:                                              ; preds = %124, %80
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %127, %129
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %13, align 8
  br label %133

133:                                              ; preds = %125, %40
  store i32 1, i32* %4, align 4
  br label %134

134:                                              ; preds = %282, %133
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp sle i32 %135, %139
  br i1 %140, label %141, label %285

141:                                              ; preds = %134
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* %12, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = call i32 (...) @ui_breakcheck()
  %147 = load i64, i64* @got_int, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %460

150:                                              ; preds = %145
  %151 = load i64, i64* %5, align 8
  %152 = add nsw i64 %151, 100000
  store i64 %152, i64* %12, align 8
  br label %153

153:                                              ; preds = %150, %141
  %154 = load i64, i64* @VIsual_active, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %248

156:                                              ; preds = %153
  %157 = load i32, i32* %4, align 4
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp sge i32 %157, %159
  br i1 %160, label %161, label %248

161:                                              ; preds = %156
  %162 = load i32, i32* %4, align 4
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp sle i32 %162, %164
  br i1 %165, label %166, label %248

166:                                              ; preds = %161
  store i32* null, i32** %18, align 8
  store i64 0, i64* %19, align 8
  %167 = load i32, i32* @VIsual_mode, align 4
  switch i32 %167, label %209 [
    i32 128, label %168
    i32 86, label %175
    i32 118, label %179
  ]

168:                                              ; preds = %166
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @block_prep(%struct.TYPE_16__* %16, %struct.block_def* %17, i32 %169, i32 0)
  %171 = getelementptr inbounds %struct.block_def, %struct.block_def* %17, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %18, align 8
  %173 = getelementptr inbounds %struct.block_def, %struct.block_def* %17, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %19, align 8
  br label %209

175:                                              ; preds = %166
  %176 = load i32, i32* %4, align 4
  %177 = call i32* @ml_get(i32 %176)
  store i32* %177, i32** %18, align 8
  %178 = load i64, i64* @MAXCOL, align 8
  store i64 %178, i64* %19, align 8
  br label %209

179:                                              ; preds = %166
  %180 = load i32, i32* %4, align 4
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  br label %188

187:                                              ; preds = %179
  br label %188

188:                                              ; preds = %187, %184
  %189 = phi i64 [ %186, %184 ], [ 0, %187 ]
  store i64 %189, i64* %20, align 8
  %190 = load i32, i32* %4, align 4
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %20, align 8
  %198 = sub nsw i64 %196, %197
  %199 = add nsw i64 %198, 1
  br label %202

200:                                              ; preds = %188
  %201 = load i64, i64* @MAXCOL, align 8
  br label %202

202:                                              ; preds = %200, %194
  %203 = phi i64 [ %199, %194 ], [ %201, %200 ]
  store i64 %203, i64* %21, align 8
  %204 = load i32, i32* %4, align 4
  %205 = call i32* @ml_get(i32 %204)
  %206 = load i64, i64* %20, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %18, align 8
  %208 = load i64, i64* %21, align 8
  store i64 %208, i64* %19, align 8
  br label %209

209:                                              ; preds = %166, %202, %175, %168
  %210 = load i32*, i32** %18, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %247

212:                                              ; preds = %209
  %213 = load i32*, i32** %18, align 8
  %214 = load i64, i64* %19, align 8
  %215 = load i32, i32* %11, align 4
  %216 = call i64 @line_count_info(i32* %213, i64* %10, i64* %8, i64 %214, i32 %215)
  %217 = load i64, i64* %6, align 8
  %218 = add nsw i64 %217, %216
  store i64 %218, i64* %6, align 8
  %219 = load i32, i32* %4, align 4
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %219, %223
  br i1 %224, label %225, label %246

225:                                              ; preds = %212
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %246, label %230

230:                                              ; preds = %225
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %230
  %236 = load i32*, i32** %18, align 8
  %237 = call i32 @STRLEN(i32* %236)
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* %19, align 8
  %240 = icmp slt i64 %238, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %235
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* %6, align 8
  %245 = sub nsw i64 %244, %243
  store i64 %245, i64* %6, align 8
  br label %246

246:                                              ; preds = %241, %235, %230, %225, %212
  br label %247

247:                                              ; preds = %246, %209
  br label %274

248:                                              ; preds = %161, %156, %153
  %249 = load i32, i32* %4, align 4
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %249, %253
  br i1 %254, label %255, label %273

255:                                              ; preds = %248
  %256 = load i64, i64* %9, align 8
  %257 = load i64, i64* %10, align 8
  %258 = add nsw i64 %257, %256
  store i64 %258, i64* %10, align 8
  %259 = load i64, i64* %7, align 8
  %260 = load i64, i64* %8, align 8
  %261 = add nsw i64 %260, %259
  store i64 %261, i64* %8, align 8
  %262 = load i64, i64* %5, align 8
  %263 = load i32, i32* %4, align 4
  %264 = call i32* @ml_get(i32 %263)
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, 1
  %270 = load i32, i32* %11, align 4
  %271 = call i64 @line_count_info(i32* %264, i64* %10, i64* %8, i64 %269, i32 %270)
  %272 = add nsw i64 %262, %271
  store i64 %272, i64* %6, align 8
  br label %273

273:                                              ; preds = %255, %248
  br label %274

274:                                              ; preds = %273, %247
  %275 = load i32, i32* %4, align 4
  %276 = call i32* @ml_get(i32 %275)
  %277 = load i64, i64* @MAXCOL, align 8
  %278 = load i32, i32* %11, align 4
  %279 = call i64 @line_count_info(i32* %276, i64* %9, i64* %7, i64 %277, i32 %278)
  %280 = load i64, i64* %5, align 8
  %281 = add nsw i64 %280, %279
  store i64 %281, i64* %5, align 8
  br label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %4, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %4, align 4
  br label %134

285:                                              ; preds = %134
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %300, label %290

290:                                              ; preds = %285
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %290
  %296 = load i32, i32* %11, align 4
  %297 = sext i32 %296 to i64
  %298 = load i64, i64* %5, align 8
  %299 = sub nsw i64 %298, %297
  store i64 %299, i64* %5, align 8
  br label %300

300:                                              ; preds = %295, %290, %285
  %301 = load i64, i64* @VIsual_active, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %375

303:                                              ; preds = %300
  %304 = load i32, i32* @VIsual_mode, align 4
  %305 = icmp eq i32 %304, 128
  br i1 %305, label %306, label %327

306:                                              ; preds = %303
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @MAXCOL, align 8
  %311 = icmp slt i64 %309, %310
  br i1 %311, label %312, label %327

312:                                              ; preds = %306
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %316 = call i32 @getvcols(%struct.TYPE_17__* %313, %struct.TYPE_15__* %14, %struct.TYPE_15__* %15, i64* %314, i64* %315)
  %317 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i64 0, i64 0
  %318 = bitcast i32* %317 to i8*
  %319 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = sub nsw i64 %321, %323
  %325 = add nsw i64 %324, 1
  %326 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %318, i32 200, i8* %319, i64 %325)
  br label %330

327:                                              ; preds = %306, %303
  %328 = load i32, i32* @NUL, align 4
  %329 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i64 0, i64 0
  store i32 %328, i32* %329, align 16
  br label %330

330:                                              ; preds = %327, %312
  %331 = load i64, i64* %8, align 8
  %332 = load i64, i64* %6, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %355

334:                                              ; preds = %330
  %335 = load i64, i64* %7, align 8
  %336 = load i64, i64* %5, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %355

338:                                              ; preds = %334
  %339 = load i32*, i32** @IObuff, align 8
  %340 = bitcast i32* %339 to i8*
  %341 = load i32, i32* @IOSIZE, align 4
  %342 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %343 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i64 0, i64 0
  %344 = load i64, i64* %13, align 8
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = load i64, i64* %10, align 8
  %351 = load i64, i64* %9, align 8
  %352 = load i64, i64* %6, align 8
  %353 = load i64, i64* %5, align 8
  %354 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %340, i32 %341, i8* %342, i32* %343, i64 %344, i64 %349, i64 %350, i64 %351, i64 %352, i64 %353)
  br label %374

355:                                              ; preds = %334, %330
  %356 = load i32*, i32** @IObuff, align 8
  %357 = bitcast i32* %356 to i8*
  %358 = load i32, i32* @IOSIZE, align 4
  %359 = call i8* @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  %360 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i64 0, i64 0
  %361 = load i64, i64* %13, align 8
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  %367 = load i64, i64* %10, align 8
  %368 = load i64, i64* %9, align 8
  %369 = load i64, i64* %8, align 8
  %370 = load i64, i64* %7, align 8
  %371 = load i64, i64* %6, align 8
  %372 = load i64, i64* %5, align 8
  %373 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %357, i32 %358, i8* %359, i32* %360, i64 %361, i64 %366, i64 %367, i64 %368, i64 %369, i64 %370, i64 %371, i64 %372)
  br label %374

374:                                              ; preds = %355, %338
  br label %455

375:                                              ; preds = %300
  %376 = call i32* (...) @ml_get_curline()
  store i32* %376, i32** %1, align 8
  %377 = call i32 (...) @validate_virtcol()
  %378 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i64 0, i64 0
  %379 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = trunc i64 %382 to i32
  %384 = add nsw i32 %383, 1
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i32 0, i32 2
  %387 = load i64, i64* %386, align 8
  %388 = trunc i64 %387 to i32
  %389 = add nsw i32 %388, 1
  %390 = call i32 @col_print(i32* %378, i32 200, i32 %384, i32 %389)
  %391 = getelementptr inbounds [40 x i32], [40 x i32]* %3, i64 0, i64 0
  %392 = load i32*, i32** %1, align 8
  %393 = call i32 @STRLEN(i32* %392)
  %394 = load i32*, i32** %1, align 8
  %395 = call i32 @linetabsize(i32* %394)
  %396 = call i32 @col_print(i32* %391, i32 160, i32 %393, i32 %395)
  %397 = load i64, i64* %8, align 8
  %398 = load i64, i64* %6, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %428

400:                                              ; preds = %375
  %401 = load i64, i64* %7, align 8
  %402 = load i64, i64* %5, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %404, label %428

404:                                              ; preds = %400
  %405 = load i32*, i32** @IObuff, align 8
  %406 = bitcast i32* %405 to i8*
  %407 = load i32, i32* @IOSIZE, align 4
  %408 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %409 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i64 0, i64 0
  %410 = bitcast i32* %409 to i8*
  %411 = getelementptr inbounds [40 x i32], [40 x i32]* %3, i64 0, i64 0
  %412 = bitcast i32* %411 to i8*
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = sext i32 %416 to i64
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  %423 = load i64, i64* %10, align 8
  %424 = load i64, i64* %9, align 8
  %425 = load i64, i64* %6, align 8
  %426 = load i64, i64* %5, align 8
  %427 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %406, i32 %407, i8* %408, i8* %410, i8* %412, i64 %417, i64 %422, i64 %423, i64 %424, i64 %425, i64 %426)
  br label %454

428:                                              ; preds = %400, %375
  %429 = load i32*, i32** @IObuff, align 8
  %430 = bitcast i32* %429 to i8*
  %431 = load i32, i32* @IOSIZE, align 4
  %432 = call i8* @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  %433 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i64 0, i64 0
  %434 = bitcast i32* %433 to i8*
  %435 = getelementptr inbounds [40 x i32], [40 x i32]* %3, i64 0, i64 0
  %436 = bitcast i32* %435 to i8*
  %437 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %438 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 8
  %441 = sext i32 %440 to i64
  %442 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %443 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  %447 = load i64, i64* %10, align 8
  %448 = load i64, i64* %9, align 8
  %449 = load i64, i64* %8, align 8
  %450 = load i64, i64* %7, align 8
  %451 = load i64, i64* %6, align 8
  %452 = load i64, i64* %5, align 8
  %453 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %430, i32 %431, i8* %432, i8* %434, i8* %436, i64 %441, i64 %446, i64 %447, i64 %448, i64 %449, i64 %450, i64 %451, i64 %452)
  br label %454

454:                                              ; preds = %428, %404
  br label %455

455:                                              ; preds = %454, %374
  %456 = load i32*, i32** @p_shm, align 8
  store i32* %456, i32** %1, align 8
  store i32* bitcast ([1 x i8]* @.str.5 to i32*), i32** @p_shm, align 8
  %457 = load i32*, i32** @IObuff, align 8
  %458 = call i32 @msg(i32* %457)
  %459 = load i32*, i32** %1, align 8
  store i32* %459, i32** @p_shm, align 8
  br label %460

460:                                              ; preds = %149, %455, %29
  ret void
}

declare dso_local i32 @MSG(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @get_fileformat(%struct.TYPE_18__*) #1

declare dso_local i64 @lt(i64, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getvcols(%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i64*, i64*) #1

declare dso_local i32 @ui_breakcheck(...) #1

declare dso_local i32 @block_prep(%struct.TYPE_16__*, %struct.block_def*, i32, i32) #1

declare dso_local i32* @ml_get(i32) #1

declare dso_local i64 @line_count_info(i32*, i64*, i64*, i64, i32) #1

declare dso_local i32 @STRLEN(i32*) #1

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32* @ml_get_curline(...) #1

declare dso_local i32 @validate_virtcol(...) #1

declare dso_local i32 @col_print(i32*, i32, i32, i32) #1

declare dso_local i32 @linetabsize(i32*) #1

declare dso_local i32 @msg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
