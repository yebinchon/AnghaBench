; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_optest.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_optest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [25 x i8] c"Error: Invalid operands\0A\00", align 1
@OT_MEMORY = common dso_local global i32 0, align 4
@OT_DWORD = common dso_local global i32 0, align 4
@OT_QWORD = common dso_local global i32 0, align 4
@OT_CONSTANT = common dso_local global i32 0, align 4
@OT_BYTE = common dso_local global i32 0, align 4
@OT_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.TYPE_9__*)* @optest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optest(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %10 = call i32 @is_valid_registers(%struct.TYPE_9__* %9)
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18, %3
  %27 = call i32 @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %384

28:                                               ; preds = %18
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 64
  br i1 %32, label %33, label %99

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @OT_MEMORY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %33
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @OT_DWORD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 103, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %43, %33
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @OT_QWORD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %59
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %69
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 77, i32* %90, align 4
  br label %97

91:                                               ; preds = %77, %69
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 72, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %85
  br label %98

98:                                               ; preds = %97, %59
  br label %99

99:                                               ; preds = %98, %28
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @OT_CONSTANT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %262

109:                                              ; preds = %99
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @OT_BYTE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %109
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 246, i32* %124, align 4
  br label %152

125:                                              ; preds = %109
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @OT_WORD, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %125
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 16
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 102, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %135, %125
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 247, i32* %151, align 4
  br label %152

152:                                              ; preds = %146, %119
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @OT_MEMORY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %152
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = or i32 0, %168
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32 %169, i32* %174, align 4
  br label %188

175:                                              ; preds = %152
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = or i32 192, %181
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 %182, i32* %187, align 4
  br label %188

188:                                              ; preds = %175, %162
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 1
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %194, 0
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  store i32 %195, i32* %200, align 4
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @OT_BYTE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %188
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %4, align 4
  br label %384

212:                                              ; preds = %188
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 1
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = ashr i32 %218, 8
  %220 = load i32*, i32** %6, align 8
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  store i32 %219, i32* %224, align 4
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @OT_WORD, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %212
  %235 = load i32, i32* %8, align 4
  store i32 %235, i32* %4, align 4
  br label %384

236:                                              ; preds = %212
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i64 1
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = ashr i32 %242, 16
  %244 = load i32*, i32** %6, align 8
  %245 = load i32, i32* %8, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %8, align 4
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  store i32 %243, i32* %248, align 4
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i64 1
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = ashr i32 %254, 24
  %256 = load i32*, i32** %6, align 8
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %8, align 4
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  store i32 %255, i32* %260, align 4
  %261 = load i32, i32* %8, align 4
  store i32 %261, i32* %4, align 4
  br label %384

262:                                              ; preds = %99
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i64 0
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @OT_BYTE, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %282, label %272

272:                                              ; preds = %262
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i64 1
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @OT_BYTE, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %272, %262
  %283 = load i32*, i32** %6, align 8
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %8, align 4
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  store i32 132, i32* %287, align 4
  br label %294

288:                                              ; preds = %272
  %289 = load i32*, i32** %6, align 8
  %290 = load i32, i32* %8, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %8, align 4
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  store i32 133, i32* %293, align 4
  br label %294

294:                                              ; preds = %288, %282
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i64 0
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @OT_MEMORY, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %327

304:                                              ; preds = %294
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i64 1
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = shl i32 %310, 3
  %312 = or i32 0, %311
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i64 0
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 4
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %312, %320
  %322 = load i32*, i32** %6, align 8
  %323 = load i32, i32* %8, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %8, align 4
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  store i32 %321, i32* %326, align 4
  br label %382

327:                                              ; preds = %294
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i64 1
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @OT_MEMORY, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %360

337:                                              ; preds = %327
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i64 0
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = shl i32 %343, 3
  %345 = or i32 0, %344
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i64 1
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 4
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 0
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %345, %353
  %355 = load i32*, i32** %6, align 8
  %356 = load i32, i32* %8, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %8, align 4
  %358 = sext i32 %356 to i64
  %359 = getelementptr inbounds i32, i32* %355, i64 %358
  store i32 %354, i32* %359, align 4
  br label %381

360:                                              ; preds = %327
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i64 1
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = shl i32 %366, 3
  %368 = or i32 192, %367
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i64 0
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = or i32 %368, %374
  %376 = load i32*, i32** %6, align 8
  %377 = load i32, i32* %8, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %8, align 4
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  store i32 %375, i32* %380, align 4
  br label %381

381:                                              ; preds = %360, %337
  br label %382

382:                                              ; preds = %381, %304
  %383 = load i32, i32* %8, align 4
  store i32 %383, i32* %4, align 4
  br label %384

384:                                              ; preds = %382, %236, %234, %210, %26
  %385 = load i32, i32* %4, align 4
  ret i32 %385
}

declare dso_local i32 @is_valid_registers(%struct.TYPE_9__*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
