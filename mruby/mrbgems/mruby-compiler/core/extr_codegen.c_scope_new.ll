; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_scope_new.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_scope_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_16__*, i64, i64, i32, i32*, i32, %struct.TYPE_14__*, i32*, i64, %struct.TYPE_15__*, i32*, i32*, i32 }
%struct.TYPE_16__ = type { i32*, %struct.mrb_locals*, i64, i32*, i64, i32*, i32*, i32** }
%struct.mrb_locals = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_14__* }

@scope_new.codegen_scope_zero = internal constant %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"unexpected scope\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i32*, %struct.TYPE_15__*, %struct.TYPE_14__*)* @scope_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @scope_new(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @mrb_pool_open(i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i64 @mrb_pool_alloc(i32* %14, i32 152)
  %16 = inttoptr i64 %15 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %9, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = call i32 @codegen_error(%struct.TYPE_15__* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %285

26:                                               ; preds = %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = bitcast %struct.TYPE_15__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.TYPE_15__* @scope_new.codegen_scope_zero to i8*), i64 152, i1 false)
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 21
  store i32* %29, i32** %31, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 20
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = icmp ne %struct.TYPE_15__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %4, align 8
  br label %285

39:                                               ; preds = %26
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 19
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %42, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 18
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call %struct.TYPE_16__* @mrb_add_irep(i32* %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 10
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 10
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = call i32 @scope_add_irep(%struct.TYPE_15__* %51, %struct.TYPE_16__* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  store i32 8, i32* %57, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 8, %62
  %64 = trunc i64 %63 to i32
  %65 = call i64 @mrb_malloc(i32* %58, i32 %64)
  %66 = inttoptr i64 %65 to i32**
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 10
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 7
  store i32** %66, i32*** %70, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  store i32 1024, i32* %72, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call i64 @mrb_malloc(i32* %73, i32 %79)
  %81 = inttoptr i64 %80 to i32*
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 17
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 10
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 6
  store i32* null, i32** %87, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 3
  store i32 32, i32* %89, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = trunc i64 %95 to i32
  %97 = call i64 @mrb_malloc(i32* %90, i32 %96)
  %98 = inttoptr i64 %97 to i32*
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 10
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 5
  store i32* %98, i32** %102, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 10
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 4
  store i32 256, i32* %108, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 4, %113
  %115 = trunc i64 %114 to i32
  %116 = call i64 @mrb_malloc(i32* %109, i32 %115)
  %117 = inttoptr i64 %116 to i32*
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 10
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  store i32* %117, i32** %121, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 10
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 16
  store %struct.TYPE_14__* %126, %struct.TYPE_14__** %128, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %130 = call i64 @node_len(%struct.TYPE_14__* %129)
  %131 = add nsw i64 %130, 1
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %131
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %144 = icmp ne %struct.TYPE_14__* %143, null
  br i1 %144, label %145, label %218

145:                                              ; preds = %39
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %146, %struct.TYPE_14__** %10, align 8
  store i64 0, i64* %11, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = mul i64 16, %152
  %154 = trunc i64 %153 to i32
  %155 = call i64 @mrb_malloc(i32* %147, i32 %154)
  %156 = inttoptr i64 %155 to %struct.mrb_locals*
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 10
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  store %struct.mrb_locals* %156, %struct.mrb_locals** %160, align 8
  store i64 0, i64* %11, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %161, %struct.TYPE_14__** %10, align 8
  br label %162

162:                                              ; preds = %202, %145
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %164 = icmp ne %struct.TYPE_14__* %163, null
  br i1 %164, label %165, label %208

165:                                              ; preds = %162
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %167 = call i64 @lv_name(%struct.TYPE_14__* %166)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 10
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load %struct.mrb_locals*, %struct.mrb_locals** %171, align 8
  %173 = load i64, i64* %11, align 8
  %174 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %172, i64 %173
  %175 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %174, i32 0, i32 1
  store i64 %167, i64* %175, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %177 = call i64 @lv_name(%struct.TYPE_14__* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %192

179:                                              ; preds = %165
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %182 = call i64 @lv_name(%struct.TYPE_14__* %181)
  %183 = call i64 @lv_idx(%struct.TYPE_15__* %180, i64 %182)
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 10
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  %188 = load %struct.mrb_locals*, %struct.mrb_locals** %187, align 8
  %189 = load i64, i64* %11, align 8
  %190 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %188, i64 %189
  %191 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %190, i32 0, i32 0
  store i64 %183, i64* %191, align 8
  br label %201

192:                                              ; preds = %165
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 10
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load %struct.mrb_locals*, %struct.mrb_locals** %196, align 8
  %198 = load i64, i64* %11, align 8
  %199 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %197, i64 %198
  %200 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %199, i32 0, i32 0
  store i64 0, i64* %200, align 8
  br label %201

201:                                              ; preds = %192, %179
  br label %202

202:                                              ; preds = %201
  %203 = load i64, i64* %11, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %11, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  store %struct.TYPE_14__* %207, %struct.TYPE_14__** %10, align 8
  br label %162

208:                                              ; preds = %162
  %209 = load i64, i64* %11, align 8
  %210 = add i64 %209, 1
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = icmp eq i64 %210, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @mrb_assert(i32 %216)
  br label %218

218:                                              ; preds = %208, %39
  %219 = load i32*, i32** %5, align 8
  %220 = call i32 @mrb_gc_arena_save(i32* %219)
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 15
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 11
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 11
  store i64 %225, i64* %227, align 8
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 11
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %218
  %233 = load i32*, i32** %5, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = mul i64 2, %237
  %239 = trunc i64 %238 to i32
  %240 = call i64 @mrb_malloc(i32* %233, i32 %239)
  %241 = inttoptr i64 %240 to i32*
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 14
  store i32* %241, i32** %243, align 8
  br label %244

244:                                              ; preds = %232, %218
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 13
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 13
  store i32 %247, i32* %249, align 8
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 12
  store i64 0, i64* %251, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 11
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %244
  %257 = load i32*, i32** %5, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 10
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %259, align 8
  %261 = call i32 @mrb_debug_info_alloc(i32* %257, %struct.TYPE_16__* %260)
  br label %267

262:                                              ; preds = %244
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 10
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 0
  store i32* null, i32** %266, align 8
  br label %267

267:                                              ; preds = %262, %256
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 9
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 9
  store i32 %270, i32* %272, align 4
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 8
  store i32 %275, i32* %277, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 7
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %280, 1
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 7
  store i64 %281, i64* %283, align 8
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %284, %struct.TYPE_15__** %4, align 8
  br label %285

285:                                              ; preds = %267, %37, %25
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %286
}

declare dso_local i32* @mrb_pool_open(i32*) #1

declare dso_local i64 @mrb_pool_alloc(i32*, i32) #1

declare dso_local i32 @codegen_error(%struct.TYPE_15__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_16__* @mrb_add_irep(i32*) #1

declare dso_local i32 @scope_add_irep(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i64 @mrb_malloc(i32*, i32) #1

declare dso_local i64 @node_len(%struct.TYPE_14__*) #1

declare dso_local i64 @lv_name(%struct.TYPE_14__*) #1

declare dso_local i64 @lv_idx(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_debug_info_alloc(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
