; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opjc.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opjc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@ST8_MAX = common dso_local global i32 0, align 4
@ST8_MIN = common dso_local global i32 0, align 4
@ST32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@OT_GPREG = common dso_local global i32 0, align 4
@OT_MEMORY = common dso_local global i32 0, align 4
@X86R_ESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"ja\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"jnbe\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"jae\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"jnb\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"jnc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"jz\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"je\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"jb\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"jnae\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"jc\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"jbe\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"jna\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"jg\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"jnle\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"jge\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"jnl\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"jl\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"jnge\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"jle\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"jng\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"jne\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"jnz\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"jno\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"jnp\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"jpo\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"jns\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"jo\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"jp\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"jpe\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"js\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.TYPE_9__*)* @opjc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opjc(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = call i32 @is_valid_registers(%struct.TYPE_9__* %12)
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %22, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @ST8_MAX, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @ST8_MIN, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %667

42:                                               ; preds = %36, %3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ST32_MAX, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @ST32_MAX, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %42
  store i32 -1, i32* %4, align 4
  br label %667

59:                                               ; preds = %53
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strcmp(i32 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %285, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @OT_GPREG, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %226

75:                                               ; preds = %65
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 255, i32* %80, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @OT_MEMORY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %212

90:                                               ; preds = %75
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %196

98:                                               ; preds = %90
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %104, %110
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp sge i32 %112, 128
  br i1 %113, label %117, label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %11, align 4
  %116 = icmp sle i32 %115, -129
  br i1 %116, label %117, label %122

117:                                              ; preds = %114, %98
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 160, i32* %121, align 4
  br label %127

122:                                              ; preds = %114
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 96, i32* %126, align 4
  br label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %135
  store i32 %142, i32* %140, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @X86R_ESP, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %127
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 36, i32* %158, align 4
  br label %159

159:                                              ; preds = %153, %127
  %160 = load i32, i32* %11, align 4
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 %160, i32* %165, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = icmp sge i32 %171, 128
  br i1 %172, label %173, label %195

173:                                              ; preds = %159
  %174 = load i32, i32* %11, align 4
  %175 = ashr i32 %174, 8
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %175, i32* %180, align 4
  %181 = load i32, i32* %11, align 4
  %182 = ashr i32 %181, 16
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 %182, i32* %187, align 4
  %188 = load i32, i32* %11, align 4
  %189 = ashr i32 %188, 24
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  br label %195

195:                                              ; preds = %173, %159
  br label %211

196:                                              ; preds = %90
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = or i32 32, %204
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  store i32 %205, i32* %210, align 4
  br label %211

211:                                              ; preds = %196, %195
  br label %225

212:                                              ; preds = %75
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = or i32 224, %218
  %220 = load i32*, i32** %6, align 8
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  store i32 %219, i32* %224, align 4
  br label %225

225:                                              ; preds = %212, %211
  br label %283

226:                                              ; preds = %65
  %227 = load i32, i32* %10, align 4
  %228 = sub nsw i32 %227, 2
  %229 = icmp sle i32 -128, %228
  br i1 %229, label %230, label %247

230:                                              ; preds = %226
  %231 = load i32, i32* %10, align 4
  %232 = sub nsw i32 %231, 2
  %233 = icmp sle i32 %232, 127
  br i1 %233, label %234, label %247

234:                                              ; preds = %230
  %235 = load i32*, i32** %6, align 8
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  store i32 235, i32* %239, align 4
  %240 = load i32, i32* %10, align 4
  %241 = sub nsw i32 %240, 2
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %8, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  store i32 %241, i32* %246, align 4
  br label %282

247:                                              ; preds = %230, %226
  %248 = load i32, i32* %10, align 4
  %249 = sub nsw i32 %248, 5
  store i32 %249, i32* %10, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %8, align 4
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  store i32 233, i32* %254, align 4
  %255 = load i32, i32* %10, align 4
  %256 = load i32*, i32** %6, align 8
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %8, align 4
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  store i32 %255, i32* %260, align 4
  %261 = load i32, i32* %10, align 4
  %262 = ashr i32 %261, 8
  %263 = load i32*, i32** %6, align 8
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  store i32 %262, i32* %267, align 4
  %268 = load i32, i32* %10, align 4
  %269 = ashr i32 %268, 16
  %270 = load i32*, i32** %6, align 8
  %271 = load i32, i32* %8, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %8, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  store i32 %269, i32* %274, align 4
  %275 = load i32, i32* %10, align 4
  %276 = ashr i32 %275, 24
  %277 = load i32*, i32** %6, align 8
  %278 = load i32, i32* %8, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %8, align 4
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  store i32 %276, i32* %281, align 4
  br label %282

282:                                              ; preds = %247, %234
  br label %283

283:                                              ; preds = %282, %225
  %284 = load i32, i32* %8, align 4
  store i32 %284, i32* %4, align 4
  br label %667

285:                                              ; preds = %59
  %286 = load i32, i32* %10, align 4
  %287 = icmp sle i32 %286, 129
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load i32, i32* %10, align 4
  %290 = icmp sgt i32 %289, -127
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  store i32 1, i32* %9, align 4
  br label %292

292:                                              ; preds = %291, %288, %285
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp eq i32 %295, 16
  br i1 %296, label %297, label %311

297:                                              ; preds = %292
  %298 = load i32, i32* %10, align 4
  %299 = icmp sgt i32 %298, 129
  br i1 %299, label %303, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* %10, align 4
  %302 = icmp slt i32 %301, -126
  br i1 %302, label %303, label %311

303:                                              ; preds = %300, %297
  %304 = load i32*, i32** %6, align 8
  %305 = load i32, i32* %8, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %8, align 4
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  store i32 102, i32* %308, align 4
  store i32 0, i32* %9, align 4
  %309 = load i32, i32* %10, align 4
  %310 = add nsw i32 %309, -1
  store i32 %310, i32* %10, align 4
  br label %311

311:                                              ; preds = %303, %300, %292
  %312 = load i32, i32* %9, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %320, label %314

314:                                              ; preds = %311
  %315 = load i32*, i32** %6, align 8
  %316 = load i32, i32* %8, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %8, align 4
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  store i32 15, i32* %319, align 4
  br label %320

320:                                              ; preds = %314, %311
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @strcmp(i32 %323, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %320
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @strcmp(i32 %329, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %338, label %332

332:                                              ; preds = %326, %320
  %333 = load i32*, i32** %6, align 8
  %334 = load i32, i32* %8, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %8, align 4
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  store i32 135, i32* %337, align 4
  br label %617

338:                                              ; preds = %326
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @strcmp(i32 %341, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %356

344:                                              ; preds = %338
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @strcmp(i32 %347, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %344
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @strcmp(i32 %353, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %362, label %356

356:                                              ; preds = %350, %344, %338
  %357 = load i32*, i32** %6, align 8
  %358 = load i32, i32* %8, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %8, align 4
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds i32, i32* %357, i64 %360
  store i32 131, i32* %361, align 4
  br label %616

362:                                              ; preds = %350
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @strcmp(i32 %365, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %362
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @strcmp(i32 %371, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %380, label %374

374:                                              ; preds = %368, %362
  %375 = load i32*, i32** %6, align 8
  %376 = load i32, i32* %8, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %8, align 4
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i32, i32* %375, i64 %378
  store i32 132, i32* %379, align 4
  br label %615

380:                                              ; preds = %368
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @strcmp(i32 %383, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %398

386:                                              ; preds = %380
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @strcmp(i32 %389, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %386
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @strcmp(i32 %395, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %404, label %398

398:                                              ; preds = %392, %386, %380
  %399 = load i32*, i32** %6, align 8
  %400 = load i32, i32* %8, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %8, align 4
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds i32, i32* %399, i64 %402
  store i32 130, i32* %403, align 4
  br label %614

404:                                              ; preds = %392
  %405 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @strcmp(i32 %407, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %416

410:                                              ; preds = %404
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @strcmp(i32 %413, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %422, label %416

416:                                              ; preds = %410, %404
  %417 = load i32*, i32** %6, align 8
  %418 = load i32, i32* %8, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %8, align 4
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i32, i32* %417, i64 %420
  store i32 134, i32* %421, align 4
  br label %613

422:                                              ; preds = %410
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @strcmp(i32 %425, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %434

428:                                              ; preds = %422
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @strcmp(i32 %431, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %440, label %434

434:                                              ; preds = %428, %422
  %435 = load i32*, i32** %6, align 8
  %436 = load i32, i32* %8, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %8, align 4
  %438 = sext i32 %436 to i64
  %439 = getelementptr inbounds i32, i32* %435, i64 %438
  store i32 143, i32* %439, align 4
  br label %612

440:                                              ; preds = %428
  %441 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @strcmp(i32 %443, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %452

446:                                              ; preds = %440
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = call i32 @strcmp(i32 %449, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %458, label %452

452:                                              ; preds = %446, %440
  %453 = load i32*, i32** %6, align 8
  %454 = load i32, i32* %8, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %8, align 4
  %456 = sext i32 %454 to i64
  %457 = getelementptr inbounds i32, i32* %453, i64 %456
  store i32 141, i32* %457, align 4
  br label %611

458:                                              ; preds = %446
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = call i32 @strcmp(i32 %461, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %470

464:                                              ; preds = %458
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @strcmp(i32 %467, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %476, label %470

470:                                              ; preds = %464, %458
  %471 = load i32*, i32** %6, align 8
  %472 = load i32, i32* %8, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %8, align 4
  %474 = sext i32 %472 to i64
  %475 = getelementptr inbounds i32, i32* %471, i64 %474
  store i32 140, i32* %475, align 4
  br label %610

476:                                              ; preds = %464
  %477 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = call i32 @strcmp(i32 %479, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %488

482:                                              ; preds = %476
  %483 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @strcmp(i32 %485, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %494, label %488

488:                                              ; preds = %482, %476
  %489 = load i32*, i32** %6, align 8
  %490 = load i32, i32* %8, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %8, align 4
  %492 = sext i32 %490 to i64
  %493 = getelementptr inbounds i32, i32* %489, i64 %492
  store i32 142, i32* %493, align 4
  br label %609

494:                                              ; preds = %482
  %495 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %496 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = call i32 @strcmp(i32 %497, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %506

500:                                              ; preds = %494
  %501 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %502 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @strcmp(i32 %503, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %512, label %506

506:                                              ; preds = %500, %494
  %507 = load i32*, i32** %6, align 8
  %508 = load i32, i32* %8, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %8, align 4
  %510 = sext i32 %508 to i64
  %511 = getelementptr inbounds i32, i32* %507, i64 %510
  store i32 133, i32* %511, align 4
  br label %608

512:                                              ; preds = %500
  %513 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @strcmp(i32 %515, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %524, label %518

518:                                              ; preds = %512
  %519 = load i32*, i32** %6, align 8
  %520 = load i32, i32* %8, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %8, align 4
  %522 = sext i32 %520 to i64
  %523 = getelementptr inbounds i32, i32* %519, i64 %522
  store i32 129, i32* %523, align 4
  br label %607

524:                                              ; preds = %512
  %525 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = call i32 @strcmp(i32 %527, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %536

530:                                              ; preds = %524
  %531 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %532 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 4
  %534 = call i32 @strcmp(i32 %533, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %542, label %536

536:                                              ; preds = %530, %524
  %537 = load i32*, i32** %6, align 8
  %538 = load i32, i32* %8, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %8, align 4
  %540 = sext i32 %538 to i64
  %541 = getelementptr inbounds i32, i32* %537, i64 %540
  store i32 139, i32* %541, align 4
  br label %606

542:                                              ; preds = %530
  %543 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %544 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = call i32 @strcmp(i32 %545, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %554, label %548

548:                                              ; preds = %542
  %549 = load i32*, i32** %6, align 8
  %550 = load i32, i32* %8, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %8, align 4
  %552 = sext i32 %550 to i64
  %553 = getelementptr inbounds i32, i32* %549, i64 %552
  store i32 137, i32* %553, align 4
  br label %605

554:                                              ; preds = %542
  %555 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %556 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = call i32 @strcmp(i32 %557, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %566, label %560

560:                                              ; preds = %554
  %561 = load i32*, i32** %6, align 8
  %562 = load i32, i32* %8, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %8, align 4
  %564 = sext i32 %562 to i64
  %565 = getelementptr inbounds i32, i32* %561, i64 %564
  store i32 128, i32* %565, align 4
  br label %604

566:                                              ; preds = %554
  %567 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %568 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = call i32 @strcmp(i32 %569, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %578

572:                                              ; preds = %566
  %573 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %574 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = call i32 @strcmp(i32 %575, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %584, label %578

578:                                              ; preds = %572, %566
  %579 = load i32*, i32** %6, align 8
  %580 = load i32, i32* %8, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %8, align 4
  %582 = sext i32 %580 to i64
  %583 = getelementptr inbounds i32, i32* %579, i64 %582
  store i32 138, i32* %583, align 4
  br label %603

584:                                              ; preds = %572
  %585 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %586 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = call i32 @strcmp(i32 %587, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %596

590:                                              ; preds = %584
  %591 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %592 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 4
  %594 = call i32 @strcmp(i32 %593, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %602, label %596

596:                                              ; preds = %590, %584
  %597 = load i32*, i32** %6, align 8
  %598 = load i32, i32* %8, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %8, align 4
  %600 = sext i32 %598 to i64
  %601 = getelementptr inbounds i32, i32* %597, i64 %600
  store i32 136, i32* %601, align 4
  br label %602

602:                                              ; preds = %596, %590
  br label %603

603:                                              ; preds = %602, %578
  br label %604

604:                                              ; preds = %603, %560
  br label %605

605:                                              ; preds = %604, %548
  br label %606

606:                                              ; preds = %605, %536
  br label %607

607:                                              ; preds = %606, %518
  br label %608

608:                                              ; preds = %607, %506
  br label %609

609:                                              ; preds = %608, %488
  br label %610

610:                                              ; preds = %609, %470
  br label %611

611:                                              ; preds = %610, %452
  br label %612

612:                                              ; preds = %611, %434
  br label %613

613:                                              ; preds = %612, %416
  br label %614

614:                                              ; preds = %613, %398
  br label %615

615:                                              ; preds = %614, %374
  br label %616

616:                                              ; preds = %615, %356
  br label %617

617:                                              ; preds = %616, %332
  %618 = load i32, i32* %9, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %628

620:                                              ; preds = %617
  %621 = load i32*, i32** %6, align 8
  %622 = load i32, i32* %8, align 4
  %623 = sub nsw i32 %622, 1
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i32, i32* %621, i64 %624
  %626 = load i32, i32* %625, align 4
  %627 = sub nsw i32 %626, 16
  store i32 %627, i32* %625, align 4
  br label %628

628:                                              ; preds = %620, %617
  %629 = load i32, i32* %9, align 4
  %630 = icmp ne i32 %629, 0
  %631 = zext i1 %630 to i64
  %632 = select i1 %630, i32 2, i32 6
  %633 = load i32, i32* %10, align 4
  %634 = sub nsw i32 %633, %632
  store i32 %634, i32* %10, align 4
  %635 = load i32, i32* %10, align 4
  %636 = load i32*, i32** %6, align 8
  %637 = load i32, i32* %8, align 4
  %638 = add nsw i32 %637, 1
  store i32 %638, i32* %8, align 4
  %639 = sext i32 %637 to i64
  %640 = getelementptr inbounds i32, i32* %636, i64 %639
  store i32 %635, i32* %640, align 4
  %641 = load i32, i32* %9, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %665, label %643

643:                                              ; preds = %628
  %644 = load i32, i32* %10, align 4
  %645 = ashr i32 %644, 8
  %646 = load i32*, i32** %6, align 8
  %647 = load i32, i32* %8, align 4
  %648 = add nsw i32 %647, 1
  store i32 %648, i32* %8, align 4
  %649 = sext i32 %647 to i64
  %650 = getelementptr inbounds i32, i32* %646, i64 %649
  store i32 %645, i32* %650, align 4
  %651 = load i32, i32* %10, align 4
  %652 = ashr i32 %651, 16
  %653 = load i32*, i32** %6, align 8
  %654 = load i32, i32* %8, align 4
  %655 = add nsw i32 %654, 1
  store i32 %655, i32* %8, align 4
  %656 = sext i32 %654 to i64
  %657 = getelementptr inbounds i32, i32* %653, i64 %656
  store i32 %652, i32* %657, align 4
  %658 = load i32, i32* %10, align 4
  %659 = ashr i32 %658, 24
  %660 = load i32*, i32** %6, align 8
  %661 = load i32, i32* %8, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %8, align 4
  %663 = sext i32 %661 to i64
  %664 = getelementptr inbounds i32, i32* %660, i64 %663
  store i32 %659, i32* %664, align 4
  br label %665

665:                                              ; preds = %643, %628
  %666 = load i32, i32* %8, align 4
  store i32 %666, i32* %4, align 4
  br label %667

667:                                              ; preds = %665, %283, %58, %40
  %668 = load i32, i32* %4, align 4
  ret i32 %668
}

declare dso_local i32 @is_valid_registers(%struct.TYPE_9__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
