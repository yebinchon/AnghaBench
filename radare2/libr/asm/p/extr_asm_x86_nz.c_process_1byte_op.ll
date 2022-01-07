; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_process_1byte_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_process_1byte_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32, i32, i32*, i64, i32 }

@X86R_AL = common dso_local global i32 0, align 4
@OT_CONSTANT = common dso_local global i32 0, align 4
@OT_QWORD = common dso_local global i32 0, align 4
@OT_MEMORY = common dso_local global i32 0, align 4
@OT_REGALL = common dso_local global i32 0, align 4
@OT_DWORD = common dso_local global i32 0, align 4
@OT_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error: mismatched operand sizes\0A\00", align 1
@ST8_MIN = common dso_local global i32 0, align 4
@ST8_MAX = common dso_local global i32 0, align 4
@X86R_UNDEFINED = common dso_local global i32 0, align 4
@X86R_EBP = common dso_local global i32 0, align 4
@X86R_ESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.TYPE_9__*, i32)* @process_1byte_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_1byte_op(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = call i32 @is_valid_registers(%struct.TYPE_9__* %18)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %822

28:                                               ; preds = %4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @X86R_AL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %28
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OT_CONSTANT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %60, %66
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %822

74:                                               ; preds = %37, %28
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 64
  br i1 %78, label %79, label %96

79:                                               ; preds = %74
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %85, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %79
  store i32 -1, i32* %5, align 4
  br label %822

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %74
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 64
  br i1 %100, label %101, label %148

101:                                              ; preds = %96
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @OT_QWORD, align 4
  %109 = and i32 %107, %108
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @OT_QWORD, align 4
  %117 = and i32 %115, %116
  %118 = or i32 %109, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %148

120:                                              ; preds = %101
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 1, i32* %14, align 4
  br label %129

129:                                              ; preds = %128, %120
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 4
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %137, %129
  %141 = load i32, i32* %14, align 4
  %142 = or i32 72, %141
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  br label %148

148:                                              ; preds = %140, %101, %96
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @OT_MEMORY, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %329

158:                                              ; preds = %148
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @OT_REGALL, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %329

168:                                              ; preds = %158
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 64
  br i1 %172, label %173, label %199

173:                                              ; preds = %168
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @OT_DWORD, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %173
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @OT_DWORD, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %183
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  store i32 103, i32* %198, align 4
  br label %199

199:                                              ; preds = %193, %183, %173, %168
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @OT_BYTE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %226

209:                                              ; preds = %199
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 1
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @OT_BYTE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %209
  %220 = load i32, i32* %9, align 4
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  store i32 %220, i32* %225, align 4
  br label %261

226:                                              ; preds = %209, %199
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @OT_DWORD, align 4
  %234 = load i32, i32* @OT_QWORD, align 4
  %235 = or i32 %233, %234
  %236 = and i32 %232, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %258

238:                                              ; preds = %226
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i64 1
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @OT_DWORD, align 4
  %246 = load i32, i32* @OT_QWORD, align 4
  %247 = or i32 %245, %246
  %248 = and i32 %244, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %238
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, 1
  %253 = load i32*, i32** %7, align 8
  %254 = load i32, i32* %10, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %10, align 4
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  store i32 %252, i32* %257, align 4
  br label %260

258:                                              ; preds = %238, %226
  %259 = call i32 @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %822

260:                                              ; preds = %250
  br label %261

261:                                              ; preds = %260, %219
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i64 1
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  store i32 %267, i32* %12, align 4
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i64 0
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 4
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %13, align 4
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i64 0
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i64 0
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 4
  %288 = mul nsw i32 %281, %287
  store i32 %288, i32* %16, align 4
  %289 = load i32, i32* %13, align 4
  %290 = icmp eq i32 %289, -1
  br i1 %290, label %291, label %292

291:                                              ; preds = %261
  store i32 5, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %328

292:                                              ; preds = %261
  %293 = load i32, i32* %16, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %305

295:                                              ; preds = %292
  store i32 1, i32* %11, align 4
  %296 = load i32, i32* %16, align 4
  %297 = load i32, i32* @ST8_MIN, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %303, label %299

299:                                              ; preds = %295
  %300 = load i32, i32* %16, align 4
  %301 = load i32, i32* @ST8_MAX, align 4
  %302 = icmp sgt i32 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %299, %295
  store i32 2, i32* %11, align 4
  br label %304

304:                                              ; preds = %303, %299
  br label %327

305:                                              ; preds = %292
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i64 0
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 4
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @X86R_UNDEFINED, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %326

316:                                              ; preds = %305
  store i32 4, i32* %13, align 4
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i64 0
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 4
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = shl i32 %324, 3
  store i32 %325, i32* %16, align 4
  br label %326

326:                                              ; preds = %316, %305
  br label %327

327:                                              ; preds = %326, %304
  br label %328

328:                                              ; preds = %327, %291
  br label %713

329:                                              ; preds = %158, %148
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i64 0
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @OT_REGALL, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %712

339:                                              ; preds = %329
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i64 1
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @OT_MEMORY, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %597

349:                                              ; preds = %339
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i64 0
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @OT_BYTE, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %377

359:                                              ; preds = %349
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i64 1
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @OT_BYTE, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %359
  %370 = load i32, i32* %9, align 4
  %371 = add nsw i32 %370, 2
  %372 = load i32*, i32** %7, align 8
  %373 = load i32, i32* %10, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %10, align 4
  %375 = sext i32 %373 to i64
  %376 = getelementptr inbounds i32, i32* %372, i64 %375
  store i32 %371, i32* %376, align 4
  br label %412

377:                                              ; preds = %359, %349
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_7__*, %struct.TYPE_7__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i64 0
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @OT_DWORD, align 4
  %385 = load i32, i32* @OT_QWORD, align 4
  %386 = or i32 %384, %385
  %387 = and i32 %383, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %409

389:                                              ; preds = %377
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i64 1
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @OT_DWORD, align 4
  %397 = load i32, i32* @OT_QWORD, align 4
  %398 = or i32 %396, %397
  %399 = and i32 %395, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %409

401:                                              ; preds = %389
  %402 = load i32, i32* %9, align 4
  %403 = add nsw i32 %402, 3
  %404 = load i32*, i32** %7, align 8
  %405 = load i32, i32* %10, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %10, align 4
  %407 = sext i32 %405 to i64
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  store i32 %403, i32* %408, align 4
  br label %411

409:                                              ; preds = %389, %377
  %410 = call i32 @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %822

411:                                              ; preds = %401
  br label %412

412:                                              ; preds = %411, %369
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_7__*, %struct.TYPE_7__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i64 0
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  store i32 %418, i32* %12, align 4
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 0
  %421 = load %struct.TYPE_7__*, %struct.TYPE_7__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %421, i64 1
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i32 0, i32 4
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 0
  %426 = load i32, i32* %425, align 4
  store i32 %426, i32* %13, align 4
  %427 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_7__*, %struct.TYPE_7__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i64 1
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 7
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 0
  %434 = load i32, i32* %433, align 4
  %435 = icmp sgt i32 %434, 1
  br i1 %435, label %436, label %570

436:                                              ; preds = %412
  %437 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 0
  %439 = load %struct.TYPE_7__*, %struct.TYPE_7__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %439, i64 1
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i32 0, i32 4
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 1
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* @X86R_UNDEFINED, align 4
  %446 = icmp ne i32 %444, %445
  br i1 %446, label %447, label %496

447:                                              ; preds = %436
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i32 0, i32 0
  %450 = load %struct.TYPE_7__*, %struct.TYPE_7__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %450, i64 0
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = shl i32 %453, 3
  %455 = or i32 %454, 4
  %456 = load i32*, i32** %7, align 8
  %457 = load i32, i32* %10, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %10, align 4
  %459 = sext i32 %457 to i64
  %460 = getelementptr inbounds i32, i32* %456, i64 %459
  store i32 %455, i32* %460, align 4
  %461 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %461, i32 0, i32 0
  %463 = load %struct.TYPE_7__*, %struct.TYPE_7__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %463, i64 1
  %465 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %464, i32 0, i32 7
  %466 = load i32*, i32** %465, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 0
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @getsib(i32 %468)
  %470 = shl i32 %469, 6
  %471 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 0
  %473 = load %struct.TYPE_7__*, %struct.TYPE_7__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %473, i64 1
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 4
  %476 = load i32*, i32** %475, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 0
  %478 = load i32, i32* %477, align 4
  %479 = shl i32 %478, 3
  %480 = or i32 %470, %479
  %481 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %482 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %481, i32 0, i32 0
  %483 = load %struct.TYPE_7__*, %struct.TYPE_7__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %483, i64 1
  %485 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %484, i32 0, i32 4
  %486 = load i32*, i32** %485, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 1
  %488 = load i32, i32* %487, align 4
  %489 = or i32 %480, %488
  %490 = load i32*, i32** %7, align 8
  %491 = load i32, i32* %10, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %10, align 4
  %493 = sext i32 %491 to i64
  %494 = getelementptr inbounds i32, i32* %490, i64 %493
  store i32 %489, i32* %494, align 4
  %495 = load i32, i32* %10, align 4
  store i32 %495, i32* %5, align 4
  br label %822

496:                                              ; preds = %436
  %497 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %498 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %497, i32 0, i32 0
  %499 = load %struct.TYPE_7__*, %struct.TYPE_7__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %499, i64 0
  %501 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = shl i32 %502, 3
  %504 = or i32 %503, 4
  %505 = load i32*, i32** %7, align 8
  %506 = load i32, i32* %10, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %10, align 4
  %508 = sext i32 %506 to i64
  %509 = getelementptr inbounds i32, i32* %505, i64 %508
  store i32 %504, i32* %509, align 4
  %510 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %511 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %510, i32 0, i32 0
  %512 = load %struct.TYPE_7__*, %struct.TYPE_7__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %512, i64 1
  %514 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %513, i32 0, i32 7
  %515 = load i32*, i32** %514, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 0
  %517 = load i32, i32* %516, align 4
  %518 = call i32 @getsib(i32 %517)
  %519 = shl i32 %518, 6
  %520 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 0
  %522 = load %struct.TYPE_7__*, %struct.TYPE_7__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %522, i64 1
  %524 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %523, i32 0, i32 4
  %525 = load i32*, i32** %524, align 8
  %526 = getelementptr inbounds i32, i32* %525, i64 0
  %527 = load i32, i32* %526, align 4
  %528 = shl i32 %527, 3
  %529 = or i32 %519, %528
  %530 = or i32 %529, 5
  %531 = load i32*, i32** %7, align 8
  %532 = load i32, i32* %10, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %10, align 4
  %534 = sext i32 %532 to i64
  %535 = getelementptr inbounds i32, i32* %531, i64 %534
  store i32 %530, i32* %535, align 4
  %536 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %537 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %536, i32 0, i32 0
  %538 = load %struct.TYPE_7__*, %struct.TYPE_7__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %538, i64 1
  %540 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %539, i32 0, i32 5
  %541 = load i32, i32* %540, align 8
  %542 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %543 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %542, i32 0, i32 0
  %544 = load %struct.TYPE_7__*, %struct.TYPE_7__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %544, i64 1
  %546 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %545, i32 0, i32 6
  %547 = load i32, i32* %546, align 4
  %548 = mul nsw i32 %541, %547
  %549 = load i32*, i32** %7, align 8
  %550 = load i32, i32* %10, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %10, align 4
  %552 = sext i32 %550 to i64
  %553 = getelementptr inbounds i32, i32* %549, i64 %552
  store i32 %548, i32* %553, align 4
  %554 = load i32*, i32** %7, align 8
  %555 = load i32, i32* %10, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %10, align 4
  %557 = sext i32 %555 to i64
  %558 = getelementptr inbounds i32, i32* %554, i64 %557
  store i32 0, i32* %558, align 4
  %559 = load i32*, i32** %7, align 8
  %560 = load i32, i32* %10, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %10, align 4
  %562 = sext i32 %560 to i64
  %563 = getelementptr inbounds i32, i32* %559, i64 %562
  store i32 0, i32* %563, align 4
  %564 = load i32*, i32** %7, align 8
  %565 = load i32, i32* %10, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %10, align 4
  %567 = sext i32 %565 to i64
  %568 = getelementptr inbounds i32, i32* %564, i64 %567
  store i32 0, i32* %568, align 4
  %569 = load i32, i32* %10, align 4
  store i32 %569, i32* %5, align 4
  br label %822

570:                                              ; preds = %412
  %571 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %572 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %571, i32 0, i32 0
  %573 = load %struct.TYPE_7__*, %struct.TYPE_7__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %573, i64 1
  %575 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %574, i32 0, i32 5
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %578 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %577, i32 0, i32 0
  %579 = load %struct.TYPE_7__*, %struct.TYPE_7__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %579, i64 1
  %581 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %580, i32 0, i32 6
  %582 = load i32, i32* %581, align 4
  %583 = mul nsw i32 %576, %582
  store i32 %583, i32* %16, align 4
  %584 = load i32, i32* %16, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %596

586:                                              ; preds = %570
  store i32 1, i32* %11, align 4
  %587 = load i32, i32* %16, align 4
  %588 = load i32, i32* @ST8_MIN, align 4
  %589 = icmp slt i32 %587, %588
  br i1 %589, label %594, label %590

590:                                              ; preds = %586
  %591 = load i32, i32* %16, align 4
  %592 = load i32, i32* @ST8_MAX, align 4
  %593 = icmp sgt i32 %591, %592
  br i1 %593, label %594, label %595

594:                                              ; preds = %590, %586
  store i32 2, i32* %11, align 4
  br label %595

595:                                              ; preds = %594, %590
  br label %596

596:                                              ; preds = %595, %570
  br label %711

597:                                              ; preds = %339
  %598 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %599 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %598, i32 0, i32 0
  %600 = load %struct.TYPE_7__*, %struct.TYPE_7__** %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %600, i64 1
  %602 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 4
  %604 = load i32, i32* @OT_REGALL, align 4
  %605 = and i32 %603, %604
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %710

607:                                              ; preds = %597
  %608 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %609 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %608, i32 0, i32 0
  %610 = load %struct.TYPE_7__*, %struct.TYPE_7__** %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i64 0
  %612 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %611, i32 0, i32 1
  %613 = load i32, i32* %612, align 4
  %614 = load i32, i32* @OT_BYTE, align 4
  %615 = and i32 %613, %614
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %634

617:                                              ; preds = %607
  %618 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %619 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %618, i32 0, i32 0
  %620 = load %struct.TYPE_7__*, %struct.TYPE_7__** %619, align 8
  %621 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %620, i64 1
  %622 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %621, i32 0, i32 1
  %623 = load i32, i32* %622, align 4
  %624 = load i32, i32* @OT_BYTE, align 4
  %625 = and i32 %623, %624
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %634

627:                                              ; preds = %617
  %628 = load i32, i32* %9, align 4
  %629 = load i32*, i32** %7, align 8
  %630 = load i32, i32* %10, align 4
  %631 = add nsw i32 %630, 1
  store i32 %631, i32* %10, align 4
  %632 = sext i32 %630 to i64
  %633 = getelementptr inbounds i32, i32* %629, i64 %632
  store i32 %628, i32* %633, align 4
  br label %663

634:                                              ; preds = %617, %607
  %635 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %636 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %635, i32 0, i32 0
  %637 = load %struct.TYPE_7__*, %struct.TYPE_7__** %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %637, i64 0
  %639 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %638, i32 0, i32 1
  %640 = load i32, i32* %639, align 4
  %641 = load i32, i32* @OT_DWORD, align 4
  %642 = and i32 %640, %641
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %662

644:                                              ; preds = %634
  %645 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %646 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %645, i32 0, i32 0
  %647 = load %struct.TYPE_7__*, %struct.TYPE_7__** %646, align 8
  %648 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %647, i64 1
  %649 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %648, i32 0, i32 1
  %650 = load i32, i32* %649, align 4
  %651 = load i32, i32* @OT_DWORD, align 4
  %652 = and i32 %650, %651
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %662

654:                                              ; preds = %644
  %655 = load i32, i32* %9, align 4
  %656 = add nsw i32 %655, 1
  %657 = load i32*, i32** %7, align 8
  %658 = load i32, i32* %10, align 4
  %659 = add nsw i32 %658, 1
  store i32 %659, i32* %10, align 4
  %660 = sext i32 %658 to i64
  %661 = getelementptr inbounds i32, i32* %657, i64 %660
  store i32 %656, i32* %661, align 4
  br label %662

662:                                              ; preds = %654, %644, %634
  br label %663

663:                                              ; preds = %662, %627
  %664 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %665 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %664, i32 0, i32 0
  %666 = load i32, i32* %665, align 4
  %667 = icmp eq i32 %666, 64
  br i1 %667, label %668, label %697

668:                                              ; preds = %663
  %669 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %670 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %669, i32 0, i32 0
  %671 = load %struct.TYPE_7__*, %struct.TYPE_7__** %670, align 8
  %672 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %671, i64 0
  %673 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %672, i32 0, i32 1
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* @OT_QWORD, align 4
  %676 = and i32 %674, %675
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %696

678:                                              ; preds = %668
  %679 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %680 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %679, i32 0, i32 0
  %681 = load %struct.TYPE_7__*, %struct.TYPE_7__** %680, align 8
  %682 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %681, i64 1
  %683 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %682, i32 0, i32 1
  %684 = load i32, i32* %683, align 4
  %685 = load i32, i32* @OT_QWORD, align 4
  %686 = and i32 %684, %685
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %696

688:                                              ; preds = %678
  %689 = load i32, i32* %9, align 4
  %690 = add nsw i32 %689, 1
  %691 = load i32*, i32** %7, align 8
  %692 = load i32, i32* %10, align 4
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %10, align 4
  %694 = sext i32 %692 to i64
  %695 = getelementptr inbounds i32, i32* %691, i64 %694
  store i32 %690, i32* %695, align 4
  br label %696

696:                                              ; preds = %688, %678, %668
  br label %697

697:                                              ; preds = %696, %663
  store i32 3, i32* %11, align 4
  %698 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %699 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %698, i32 0, i32 0
  %700 = load %struct.TYPE_7__*, %struct.TYPE_7__** %699, align 8
  %701 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %700, i64 1
  %702 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 8
  store i32 %703, i32* %12, align 4
  %704 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %705 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %704, i32 0, i32 0
  %706 = load %struct.TYPE_7__*, %struct.TYPE_7__** %705, align 8
  %707 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %706, i64 0
  %708 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %707, i32 0, i32 0
  %709 = load i32, i32* %708, align 8
  store i32 %709, i32* %13, align 4
  br label %710

710:                                              ; preds = %697, %597
  br label %711

711:                                              ; preds = %710, %596
  br label %712

712:                                              ; preds = %711, %329
  br label %713

713:                                              ; preds = %712, %328
  %714 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %715 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %714, i32 0, i32 0
  %716 = load %struct.TYPE_7__*, %struct.TYPE_7__** %715, align 8
  %717 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %716, i64 0
  %718 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %717, i32 0, i32 4
  %719 = load i32*, i32** %718, align 8
  %720 = getelementptr inbounds i32, i32* %719, i64 0
  %721 = load i32, i32* %720, align 4
  %722 = load i32, i32* @X86R_EBP, align 4
  %723 = icmp eq i32 %721, %722
  br i1 %723, label %735, label %724

724:                                              ; preds = %713
  %725 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %726 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %725, i32 0, i32 0
  %727 = load %struct.TYPE_7__*, %struct.TYPE_7__** %726, align 8
  %728 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %727, i64 1
  %729 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %728, i32 0, i32 4
  %730 = load i32*, i32** %729, align 8
  %731 = getelementptr inbounds i32, i32* %730, i64 0
  %732 = load i32, i32* %731, align 4
  %733 = load i32, i32* @X86R_EBP, align 4
  %734 = icmp eq i32 %732, %733
  br i1 %734, label %735, label %736

735:                                              ; preds = %724, %713
  store i32 1, i32* %17, align 4
  br label %736

736:                                              ; preds = %735, %724
  %737 = load i32, i32* %11, align 4
  %738 = shl i32 %737, 6
  %739 = load i32, i32* %12, align 4
  %740 = shl i32 %739, 3
  %741 = or i32 %738, %740
  %742 = load i32, i32* %13, align 4
  %743 = or i32 %741, %742
  %744 = load i32*, i32** %7, align 8
  %745 = load i32, i32* %10, align 4
  %746 = add nsw i32 %745, 1
  store i32 %746, i32* %10, align 4
  %747 = sext i32 %745 to i64
  %748 = getelementptr inbounds i32, i32* %744, i64 %747
  store i32 %743, i32* %748, align 4
  %749 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %750 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %749, i32 0, i32 0
  %751 = load %struct.TYPE_7__*, %struct.TYPE_7__** %750, align 8
  %752 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %751, i64 0
  %753 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %752, i32 0, i32 4
  %754 = load i32*, i32** %753, align 8
  %755 = getelementptr inbounds i32, i32* %754, i64 0
  %756 = load i32, i32* %755, align 4
  %757 = load i32, i32* @X86R_ESP, align 4
  %758 = icmp eq i32 %756, %757
  br i1 %758, label %770, label %759

759:                                              ; preds = %736
  %760 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %761 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %760, i32 0, i32 0
  %762 = load %struct.TYPE_7__*, %struct.TYPE_7__** %761, align 8
  %763 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %762, i64 1
  %764 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %763, i32 0, i32 4
  %765 = load i32*, i32** %764, align 8
  %766 = getelementptr inbounds i32, i32* %765, i64 0
  %767 = load i32, i32* %766, align 4
  %768 = load i32, i32* @X86R_ESP, align 4
  %769 = icmp eq i32 %767, %768
  br i1 %769, label %770, label %776

770:                                              ; preds = %759, %736
  %771 = load i32*, i32** %7, align 8
  %772 = load i32, i32* %10, align 4
  %773 = add nsw i32 %772, 1
  store i32 %773, i32* %10, align 4
  %774 = sext i32 %772 to i64
  %775 = getelementptr inbounds i32, i32* %771, i64 %774
  store i32 36, i32* %775, align 4
  br label %776

776:                                              ; preds = %770, %759
  %777 = load i32, i32* %16, align 4
  %778 = icmp ne i32 %777, 0
  br i1 %778, label %785, label %779

779:                                              ; preds = %776
  %780 = load i32, i32* %15, align 4
  %781 = icmp ne i32 %780, 0
  br i1 %781, label %785, label %782

782:                                              ; preds = %779
  %783 = load i32, i32* %17, align 4
  %784 = icmp ne i32 %783, 0
  br i1 %784, label %785, label %820

785:                                              ; preds = %782, %779, %776
  %786 = load i32, i32* %16, align 4
  %787 = load i32*, i32** %7, align 8
  %788 = load i32, i32* %10, align 4
  %789 = add nsw i32 %788, 1
  store i32 %789, i32* %10, align 4
  %790 = sext i32 %788 to i64
  %791 = getelementptr inbounds i32, i32* %787, i64 %790
  store i32 %786, i32* %791, align 4
  %792 = load i32, i32* %11, align 4
  %793 = icmp eq i32 %792, 2
  br i1 %793, label %797, label %794

794:                                              ; preds = %785
  %795 = load i32, i32* %15, align 4
  %796 = icmp ne i32 %795, 0
  br i1 %796, label %797, label %819

797:                                              ; preds = %794, %785
  %798 = load i32, i32* %16, align 4
  %799 = ashr i32 %798, 8
  %800 = load i32*, i32** %7, align 8
  %801 = load i32, i32* %10, align 4
  %802 = add nsw i32 %801, 1
  store i32 %802, i32* %10, align 4
  %803 = sext i32 %801 to i64
  %804 = getelementptr inbounds i32, i32* %800, i64 %803
  store i32 %799, i32* %804, align 4
  %805 = load i32, i32* %16, align 4
  %806 = ashr i32 %805, 16
  %807 = load i32*, i32** %7, align 8
  %808 = load i32, i32* %10, align 4
  %809 = add nsw i32 %808, 1
  store i32 %809, i32* %10, align 4
  %810 = sext i32 %808 to i64
  %811 = getelementptr inbounds i32, i32* %807, i64 %810
  store i32 %806, i32* %811, align 4
  %812 = load i32, i32* %16, align 4
  %813 = ashr i32 %812, 24
  %814 = load i32*, i32** %7, align 8
  %815 = load i32, i32* %10, align 4
  %816 = add nsw i32 %815, 1
  store i32 %816, i32* %10, align 4
  %817 = sext i32 %815 to i64
  %818 = getelementptr inbounds i32, i32* %814, i64 %817
  store i32 %813, i32* %818, align 4
  br label %819

819:                                              ; preds = %797, %794
  br label %820

820:                                              ; preds = %819, %782
  %821 = load i32, i32* %10, align 4
  store i32 %821, i32* %5, align 4
  br label %822

822:                                              ; preds = %820, %496, %447, %409, %258, %94, %47, %27
  %823 = load i32, i32* %5, align 4
  ret i32 %823
}

declare dso_local i32 @is_valid_registers(%struct.TYPE_9__*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @getsib(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
