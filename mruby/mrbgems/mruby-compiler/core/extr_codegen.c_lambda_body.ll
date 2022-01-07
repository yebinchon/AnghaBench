; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_lambda_body.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_lambda_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i32, i64, %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_32__*, %struct.TYPE_32__* }
%struct.loopinfo = type { i8* }

@LOOP_BLOCK = common dso_local global i32 0, align 4
@OP_ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"too many formal arguments\00", align 1
@OP_JMP = common dso_local global i32 0, align 4
@VAL = common dso_local global i32 0, align 4
@NODE_ARGS_TAIL = common dso_local global i64 0, align 8
@NODE_KW_ARG = common dso_local global i64 0, align 8
@OP_KEY_P = common dso_local global i32 0, align 4
@OP_JMPIF = common dso_local global i32 0, align 4
@OP_KARG = common dso_local global i32 0, align 4
@OP_KEYEND = common dso_local global i32 0, align 4
@NODE_MASGN = common dso_local global i64 0, align 8
@NOVAL = common dso_local global i32 0, align 4
@OP_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_32__*, i32)* @lambda_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lambda_body(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.loopinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_32__*, align 8
  %20 = alloca %struct.TYPE_32__*, align 8
  %21 = alloca %struct.TYPE_32__*, align 8
  %22 = alloca %struct.TYPE_32__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_32__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_32__*, align 8
  %29 = alloca %struct.TYPE_32__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_32__*, align 8
  %32 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  store i32 %2, i32* %6, align 4
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_33__* %33, %struct.TYPE_33__** %7, align 8
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %39, align 8
  %41 = call %struct.TYPE_33__* @scope_new(i32 %36, %struct.TYPE_33__* %37, %struct.TYPE_32__* %40)
  store %struct.TYPE_33__* %41, %struct.TYPE_33__** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %3
  %51 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %52 = load i32, i32* @LOOP_BLOCK, align 4
  %53 = call %struct.loopinfo* @loop_push(%struct.TYPE_33__* %51, i32 %52)
  store %struct.loopinfo* %53, %struct.loopinfo** %8, align 8
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %55 = call i8* @new_label(%struct.TYPE_33__* %54)
  %56 = load %struct.loopinfo*, %struct.loopinfo** %8, align 8
  %57 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %50, %3
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %60, align 8
  store %struct.TYPE_32__* %61, %struct.TYPE_32__** %5, align 8
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %63, align 8
  %65 = icmp eq %struct.TYPE_32__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %68 = load i32, i32* @OP_ENTER, align 4
  %69 = call i32 @genop_W(%struct.TYPE_33__* %67, i32 %68, i32 0)
  br label %535

70:                                               ; preds = %58
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %74, align 8
  %76 = call i32 @node_len(%struct.TYPE_32__* %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %80, align 8
  store %struct.TYPE_32__* %81, %struct.TYPE_32__** %20, align 8
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %91, align 8
  store %struct.TYPE_32__* %92, %struct.TYPE_32__** %22, align 8
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %98, align 8
  %100 = call i32 @node_len(%struct.TYPE_32__* %99)
  store i32 %100, i32* %11, align 4
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %108, align 8
  %110 = icmp ne %struct.TYPE_32__* %109, null
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  store i32 %112, i32* %12, align 4
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %122, align 8
  %124 = call i32 @node_len(%struct.TYPE_32__* %123)
  store i32 %124, i32* %13, align 4
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %134, align 8
  store %struct.TYPE_32__* %135, %struct.TYPE_32__** %21, align 8
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %137 = icmp ne %struct.TYPE_32__* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %70
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %142, align 8
  %144 = call i32 @node_len(%struct.TYPE_32__* %143)
  br label %146

145:                                              ; preds = %70
  br label %146

146:                                              ; preds = %145, %138
  %147 = phi i32 [ %144, %138 ], [ 0, %145 ]
  store i32 %147, i32* %14, align 4
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %149 = icmp ne %struct.TYPE_32__* %148, null
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %156, align 8
  %158 = icmp ne %struct.TYPE_32__* %157, null
  br label %159

159:                                              ; preds = %150, %146
  %160 = phi i1 [ false, %146 ], [ %158, %150 ]
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 1, i32 0
  store i32 %162, i32* %15, align 4
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %164 = icmp ne %struct.TYPE_32__* %163, null
  br i1 %164, label %165, label %176

165:                                              ; preds = %159
  %166 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %167 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %173, align 8
  %175 = icmp ne %struct.TYPE_32__* %174, null
  br label %176

176:                                              ; preds = %165, %159
  %177 = phi i1 [ false, %159 ], [ %175, %165 ]
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 1, i32 0
  store i32 %179, i32* %16, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp sgt i32 %180, 31
  br i1 %181, label %191, label %182

182:                                              ; preds = %176
  %183 = load i32, i32* %11, align 4
  %184 = icmp sgt i32 %183, 31
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %13, align 4
  %187 = icmp sgt i32 %186, 31
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %14, align 4
  %190 = icmp sgt i32 %189, 31
  br i1 %190, label %191, label %194

191:                                              ; preds = %188, %185, %182, %176
  %192 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %193 = call i32 @codegen_error(%struct.TYPE_33__* %192, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @MRB_ARGS_REQ(i32 %195)
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @MRB_ARGS_OPT(i32 %197)
  %199 = or i32 %196, %198
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %194
  %203 = call i32 (...) @MRB_ARGS_REST()
  br label %205

204:                                              ; preds = %194
  br label %205

205:                                              ; preds = %204, %202
  %206 = phi i32 [ %203, %202 ], [ 0, %204 ]
  %207 = or i32 %199, %206
  %208 = load i32, i32* %13, align 4
  %209 = call i32 @MRB_ARGS_POST(i32 %208)
  %210 = or i32 %207, %209
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %15, align 4
  %213 = call i32 @MRB_ARGS_KEY(i32 %211, i32 %212)
  %214 = or i32 %210, %213
  %215 = load i32, i32* %16, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %205
  %218 = call i32 (...) @MRB_ARGS_BLOCK()
  br label %220

219:                                              ; preds = %205
  br label %220

220:                                              ; preds = %219, %217
  %221 = phi i32 [ %218, %217 ], [ 0, %219 ]
  %222 = or i32 %214, %221
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %223, %224
  %226 = and i32 %225, 63
  %227 = shl i32 %226, 7
  %228 = load i32, i32* %12, align 4
  %229 = and i32 %228, 1
  %230 = shl i32 %229, 6
  %231 = or i32 %227, %230
  %232 = load i32, i32* %13, align 4
  %233 = and i32 %232, 31
  %234 = shl i32 %233, 1
  %235 = or i32 %231, %234
  %236 = load i32, i32* %15, align 4
  %237 = and i32 %236, 1
  %238 = or i32 %235, %237
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %242 = load i32, i32* @OP_ENTER, align 4
  %243 = load i32, i32* %9, align 4
  %244 = call i32 @genop_W(%struct.TYPE_33__* %241, i32 %242, i32 %243)
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %246 = call i8* @new_label(%struct.TYPE_33__* %245)
  %247 = ptrtoint i8* %246 to i32
  store i32 %247, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %248

248:                                              ; preds = %258, %220
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* %11, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %261

252:                                              ; preds = %248
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %254 = call i8* @new_label(%struct.TYPE_33__* %253)
  %255 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %256 = load i32, i32* @OP_JMP, align 4
  %257 = call i32 @genjmp(%struct.TYPE_33__* %255, i32 %256, i32 0)
  br label %258

258:                                              ; preds = %252
  %259 = load i32, i32* %18, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %18, align 4
  br label %248

261:                                              ; preds = %248
  %262 = load i32, i32* %11, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %266 = load i32, i32* @OP_JMP, align 4
  %267 = call i32 @genjmp(%struct.TYPE_33__* %265, i32 %266, i32 0)
  br label %268

268:                                              ; preds = %264, %261
  %269 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_32__*, %struct.TYPE_32__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %274, align 8
  store %struct.TYPE_32__* %275, %struct.TYPE_32__** %19, align 8
  store i32 0, i32* %18, align 4
  br label %276

276:                                              ; preds = %279, %268
  %277 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %278 = icmp ne %struct.TYPE_32__* %277, null
  br i1 %278, label %279, label %313

279:                                              ; preds = %276
  %280 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %281 = load i32, i32* %17, align 4
  %282 = load i32, i32* %18, align 4
  %283 = mul nsw i32 %282, 3
  %284 = add nsw i32 %281, %283
  %285 = add nsw i32 %284, 1
  %286 = call i32 @dispatch(%struct.TYPE_33__* %280, i32 %285)
  %287 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %289 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_32__*, %struct.TYPE_32__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_32__*, %struct.TYPE_32__** %291, align 8
  %293 = load i32, i32* @VAL, align 4
  %294 = call i32 @codegen(%struct.TYPE_33__* %287, %struct.TYPE_32__* %292, i32 %293)
  %295 = call i32 (...) @pop()
  %296 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %297 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %298 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_32__*, %struct.TYPE_32__** %300, align 8
  %302 = call i32 @nsym(%struct.TYPE_32__* %301)
  %303 = call i32 @lv_idx(%struct.TYPE_33__* %296, i32 %302)
  store i32 %303, i32* %23, align 4
  %304 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %305 = load i32, i32* %23, align 4
  %306 = call i32 (...) @cursp()
  %307 = call i32 @gen_move(%struct.TYPE_33__* %304, i32 %305, i32 %306, i32 0)
  %308 = load i32, i32* %18, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %18, align 4
  %310 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_32__*, %struct.TYPE_32__** %311, align 8
  store %struct.TYPE_32__* %312, %struct.TYPE_32__** %19, align 8
  br label %276

313:                                              ; preds = %276
  %314 = load i32, i32* %11, align 4
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %313
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* %18, align 4
  %320 = mul nsw i32 %319, 3
  %321 = add nsw i32 %318, %320
  %322 = add nsw i32 %321, 1
  %323 = call i32 @dispatch(%struct.TYPE_33__* %317, i32 %322)
  br label %324

324:                                              ; preds = %316, %313
  %325 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %326 = icmp ne %struct.TYPE_32__* %325, null
  br i1 %326, label %327, label %456

327:                                              ; preds = %324
  %328 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %329 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_32__*, %struct.TYPE_32__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_32__*, %struct.TYPE_32__** %331, align 8
  store %struct.TYPE_32__* %332, %struct.TYPE_32__** %24, align 8
  store i32 0, i32* %25, align 4
  %333 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %334 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_32__*, %struct.TYPE_32__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_32__*, %struct.TYPE_32__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_32__*, %struct.TYPE_32__** %338, align 8
  %340 = icmp ne %struct.TYPE_32__* %339, null
  br i1 %340, label %341, label %342

341:                                              ; preds = %327
  store i32 1, i32* %25, align 4
  br label %342

342:                                              ; preds = %341, %327
  %343 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %344 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_32__*, %struct.TYPE_32__** %344, align 8
  %346 = call i64 @nint(%struct.TYPE_32__* %345)
  %347 = load i64, i64* @NODE_ARGS_TAIL, align 8
  %348 = icmp eq i64 %346, %347
  %349 = zext i1 %348 to i32
  %350 = call i32 @mrb_assert(i32 %349)
  %351 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %352 = call i32 @node_len(%struct.TYPE_32__* %351)
  %353 = icmp eq i32 %352, 4
  %354 = zext i1 %353 to i32
  %355 = call i32 @mrb_assert(i32 %354)
  br label %356

356:                                              ; preds = %435, %342
  %357 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %358 = icmp ne %struct.TYPE_32__* %357, null
  br i1 %358, label %359, label %441

359:                                              ; preds = %356
  store i32 -1, i32* %27, align 4
  %360 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %361 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_32__*, %struct.TYPE_32__** %361, align 8
  store %struct.TYPE_32__* %362, %struct.TYPE_32__** %28, align 8
  %363 = load %struct.TYPE_32__*, %struct.TYPE_32__** %28, align 8
  %364 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_32__*, %struct.TYPE_32__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_32__*, %struct.TYPE_32__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_32__*, %struct.TYPE_32__** %368, align 8
  store %struct.TYPE_32__* %369, %struct.TYPE_32__** %29, align 8
  %370 = load %struct.TYPE_32__*, %struct.TYPE_32__** %28, align 8
  %371 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_32__*, %struct.TYPE_32__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_32__*, %struct.TYPE_32__** %373, align 8
  %375 = call i32 @nsym(%struct.TYPE_32__* %374)
  store i32 %375, i32* %30, align 4
  %376 = load %struct.TYPE_32__*, %struct.TYPE_32__** %28, align 8
  %377 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_32__*, %struct.TYPE_32__** %377, align 8
  %379 = call i64 @nint(%struct.TYPE_32__* %378)
  %380 = load i64, i64* @NODE_KW_ARG, align 8
  %381 = icmp eq i64 %379, %380
  %382 = zext i1 %381 to i32
  %383 = call i32 @mrb_assert(i32 %382)
  %384 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %385 = icmp ne %struct.TYPE_32__* %384, null
  br i1 %385, label %386, label %419

386:                                              ; preds = %359
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %388 = load i32, i32* @OP_KEY_P, align 4
  %389 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %390 = load i32, i32* %30, align 4
  %391 = call i32 @lv_idx(%struct.TYPE_33__* %389, i32 %390)
  %392 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %393 = load i32, i32* %30, align 4
  %394 = call i32 @new_sym(%struct.TYPE_33__* %392, i32 %393)
  %395 = call i32 @genop_2(%struct.TYPE_33__* %387, i32 %388, i32 %391, i32 %394)
  %396 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %397 = load i32, i32* @OP_JMPIF, align 4
  %398 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %399 = load i32, i32* %30, align 4
  %400 = call i32 @lv_idx(%struct.TYPE_33__* %398, i32 %399)
  %401 = call i32 @genjmp2(%struct.TYPE_33__* %396, i32 %397, i32 %400, i32 0, i32 0)
  store i32 %401, i32* %26, align 4
  %402 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %403 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %404 = load i32, i32* @VAL, align 4
  %405 = call i32 @codegen(%struct.TYPE_33__* %402, %struct.TYPE_32__* %403, i32 %404)
  %406 = call i32 (...) @pop()
  %407 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %408 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %409 = load i32, i32* %30, align 4
  %410 = call i32 @lv_idx(%struct.TYPE_33__* %408, i32 %409)
  %411 = call i32 (...) @cursp()
  %412 = call i32 @gen_move(%struct.TYPE_33__* %407, i32 %410, i32 %411, i32 0)
  %413 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %414 = load i32, i32* @OP_JMP, align 4
  %415 = call i32 @genjmp(%struct.TYPE_33__* %413, i32 %414, i32 0)
  store i32 %415, i32* %27, align 4
  %416 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %417 = load i32, i32* %26, align 4
  %418 = call i32 @dispatch(%struct.TYPE_33__* %416, i32 %417)
  br label %419

419:                                              ; preds = %386, %359
  %420 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %421 = load i32, i32* @OP_KARG, align 4
  %422 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %423 = load i32, i32* %30, align 4
  %424 = call i32 @lv_idx(%struct.TYPE_33__* %422, i32 %423)
  %425 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %426 = load i32, i32* %30, align 4
  %427 = call i32 @new_sym(%struct.TYPE_33__* %425, i32 %426)
  %428 = call i32 @genop_2(%struct.TYPE_33__* %420, i32 %421, i32 %424, i32 %427)
  %429 = load i32, i32* %27, align 4
  %430 = icmp ne i32 %429, -1
  br i1 %430, label %431, label %435

431:                                              ; preds = %419
  %432 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %433 = load i32, i32* %27, align 4
  %434 = call i32 @dispatch(%struct.TYPE_33__* %432, i32 %433)
  br label %435

435:                                              ; preds = %431, %419
  %436 = load i32, i32* %18, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %18, align 4
  %438 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %439 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %438, i32 0, i32 1
  %440 = load %struct.TYPE_32__*, %struct.TYPE_32__** %439, align 8
  store %struct.TYPE_32__* %440, %struct.TYPE_32__** %24, align 8
  br label %356

441:                                              ; preds = %356
  %442 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %443 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %442, i32 0, i32 1
  %444 = load %struct.TYPE_32__*, %struct.TYPE_32__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_32__*, %struct.TYPE_32__** %445, align 8
  %447 = icmp ne %struct.TYPE_32__* %446, null
  br i1 %447, label %448, label %455

448:                                              ; preds = %441
  %449 = load i32, i32* %25, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %455, label %451

451:                                              ; preds = %448
  %452 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %453 = load i32, i32* @OP_KEYEND, align 4
  %454 = call i32 @genop_0(%struct.TYPE_33__* %452, i32 %453)
  br label %455

455:                                              ; preds = %451, %448, %441
  br label %456

456:                                              ; preds = %455, %324
  %457 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %458 = icmp ne %struct.TYPE_32__* %457, null
  br i1 %458, label %459, label %492

459:                                              ; preds = %456
  %460 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  store %struct.TYPE_32__* %460, %struct.TYPE_32__** %31, align 8
  store i32 1, i32* %17, align 4
  br label %461

461:                                              ; preds = %485, %459
  %462 = load %struct.TYPE_32__*, %struct.TYPE_32__** %31, align 8
  %463 = icmp ne %struct.TYPE_32__* %462, null
  br i1 %463, label %464, label %491

464:                                              ; preds = %461
  %465 = load %struct.TYPE_32__*, %struct.TYPE_32__** %31, align 8
  %466 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %465, i32 0, i32 0
  %467 = load %struct.TYPE_32__*, %struct.TYPE_32__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %467, i32 0, i32 0
  %469 = load %struct.TYPE_32__*, %struct.TYPE_32__** %468, align 8
  %470 = call i64 @nint(%struct.TYPE_32__* %469)
  %471 = load i64, i64* @NODE_MASGN, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %473, label %485

473:                                              ; preds = %464
  %474 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %475 = load %struct.TYPE_32__*, %struct.TYPE_32__** %31, align 8
  %476 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %475, i32 0, i32 0
  %477 = load %struct.TYPE_32__*, %struct.TYPE_32__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %477, i32 0, i32 1
  %479 = load %struct.TYPE_32__*, %struct.TYPE_32__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %479, i32 0, i32 0
  %481 = load %struct.TYPE_32__*, %struct.TYPE_32__** %480, align 8
  %482 = load i32, i32* %17, align 4
  %483 = load i32, i32* @NOVAL, align 4
  %484 = call i32 @gen_vmassignment(%struct.TYPE_33__* %474, %struct.TYPE_32__* %481, i32 %482, i32 %483)
  br label %485

485:                                              ; preds = %473, %464
  %486 = load i32, i32* %17, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %17, align 4
  %488 = load %struct.TYPE_32__*, %struct.TYPE_32__** %31, align 8
  %489 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %488, i32 0, i32 1
  %490 = load %struct.TYPE_32__*, %struct.TYPE_32__** %489, align 8
  store %struct.TYPE_32__* %490, %struct.TYPE_32__** %31, align 8
  br label %461

491:                                              ; preds = %461
  br label %492

492:                                              ; preds = %491, %456
  %493 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %494 = icmp ne %struct.TYPE_32__* %493, null
  br i1 %494, label %495, label %534

495:                                              ; preds = %492
  %496 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  store %struct.TYPE_32__* %496, %struct.TYPE_32__** %32, align 8
  %497 = load i32, i32* %10, align 4
  %498 = load i32, i32* %11, align 4
  %499 = add nsw i32 %497, %498
  %500 = load i32, i32* %12, align 4
  %501 = add nsw i32 %499, %500
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %17, align 4
  br label %503

503:                                              ; preds = %527, %495
  %504 = load %struct.TYPE_32__*, %struct.TYPE_32__** %32, align 8
  %505 = icmp ne %struct.TYPE_32__* %504, null
  br i1 %505, label %506, label %533

506:                                              ; preds = %503
  %507 = load %struct.TYPE_32__*, %struct.TYPE_32__** %32, align 8
  %508 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %507, i32 0, i32 0
  %509 = load %struct.TYPE_32__*, %struct.TYPE_32__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %509, i32 0, i32 0
  %511 = load %struct.TYPE_32__*, %struct.TYPE_32__** %510, align 8
  %512 = call i64 @nint(%struct.TYPE_32__* %511)
  %513 = load i64, i64* @NODE_MASGN, align 8
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %515, label %527

515:                                              ; preds = %506
  %516 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %517 = load %struct.TYPE_32__*, %struct.TYPE_32__** %32, align 8
  %518 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %517, i32 0, i32 0
  %519 = load %struct.TYPE_32__*, %struct.TYPE_32__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %519, i32 0, i32 1
  %521 = load %struct.TYPE_32__*, %struct.TYPE_32__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %521, i32 0, i32 0
  %523 = load %struct.TYPE_32__*, %struct.TYPE_32__** %522, align 8
  %524 = load i32, i32* %17, align 4
  %525 = load i32, i32* @NOVAL, align 4
  %526 = call i32 @gen_vmassignment(%struct.TYPE_33__* %516, %struct.TYPE_32__* %523, i32 %524, i32 %525)
  br label %527

527:                                              ; preds = %515, %506
  %528 = load i32, i32* %17, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %17, align 4
  %530 = load %struct.TYPE_32__*, %struct.TYPE_32__** %32, align 8
  %531 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %530, i32 0, i32 1
  %532 = load %struct.TYPE_32__*, %struct.TYPE_32__** %531, align 8
  store %struct.TYPE_32__* %532, %struct.TYPE_32__** %32, align 8
  br label %503

533:                                              ; preds = %503
  br label %534

534:                                              ; preds = %533, %492
  br label %535

535:                                              ; preds = %534, %66
  %536 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %537 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %538 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %537, i32 0, i32 1
  %539 = load %struct.TYPE_32__*, %struct.TYPE_32__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %539, i32 0, i32 0
  %541 = load %struct.TYPE_32__*, %struct.TYPE_32__** %540, align 8
  %542 = load i32, i32* @VAL, align 4
  %543 = call i32 @codegen(%struct.TYPE_33__* %536, %struct.TYPE_32__* %541, i32 %542)
  %544 = call i32 (...) @pop()
  %545 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %546 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %545, i32 0, i32 2
  %547 = load i64, i64* %546, align 8
  %548 = icmp sgt i64 %547, 0
  br i1 %548, label %549, label %554

549:                                              ; preds = %535
  %550 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %551 = load i32, i32* @OP_RETURN, align 4
  %552 = call i32 (...) @cursp()
  %553 = call i32 @gen_return(%struct.TYPE_33__* %550, i32 %551, i32 %552)
  br label %554

554:                                              ; preds = %549, %535
  %555 = load i32, i32* %6, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %561

557:                                              ; preds = %554
  %558 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %559 = load i32, i32* @NOVAL, align 4
  %560 = call i32 @loop_pop(%struct.TYPE_33__* %558, i32 %559)
  br label %561

561:                                              ; preds = %557, %554
  %562 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %563 = call i32 @scope_finish(%struct.TYPE_33__* %562)
  %564 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %565 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %564, i32 0, i32 3
  %566 = load %struct.TYPE_31__*, %struct.TYPE_31__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  %569 = sub nsw i32 %568, 1
  ret i32 %569
}

declare dso_local %struct.TYPE_33__* @scope_new(i32, %struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local %struct.loopinfo* @loop_push(%struct.TYPE_33__*, i32) #1

declare dso_local i8* @new_label(%struct.TYPE_33__*) #1

declare dso_local i32 @genop_W(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @node_len(%struct.TYPE_32__*) #1

declare dso_local i32 @codegen_error(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @MRB_ARGS_REST(...) #1

declare dso_local i32 @MRB_ARGS_POST(i32) #1

declare dso_local i32 @MRB_ARGS_KEY(i32, i32) #1

declare dso_local i32 @MRB_ARGS_BLOCK(...) #1

declare dso_local i32 @genjmp(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @dispatch(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @codegen(%struct.TYPE_33__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @pop(...) #1

declare dso_local i32 @lv_idx(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @nsym(%struct.TYPE_32__*) #1

declare dso_local i32 @gen_move(%struct.TYPE_33__*, i32, i32, i32) #1

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i64 @nint(%struct.TYPE_32__*) #1

declare dso_local i32 @genop_2(%struct.TYPE_33__*, i32, i32, i32) #1

declare dso_local i32 @new_sym(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @genjmp2(%struct.TYPE_33__*, i32, i32, i32, i32) #1

declare dso_local i32 @genop_0(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @gen_vmassignment(%struct.TYPE_33__*, %struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @gen_return(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @loop_pop(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @scope_finish(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
