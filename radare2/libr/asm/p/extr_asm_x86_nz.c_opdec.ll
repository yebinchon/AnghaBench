; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opdec.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32, i32, i32*, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"Error: Invalid operands\0A\00", align 1
@ALL_SIZE = common dso_local global i32 0, align 4
@OT_WORD = common dso_local global i32 0, align 4
@OT_QWORD = common dso_local global i32 0, align 4
@OT_BYTE = common dso_local global i32 0, align 4
@OT_MEMORY = common dso_local global i32 0, align 4
@OT_DWORD = common dso_local global i32 0, align 4
@X86R_RIP = common dso_local global i32 0, align 4
@X86R_BX = common dso_local global i32 0, align 4
@X86R_SI = common dso_local global i32 0, align 4
@B0000 = common dso_local global i32 0, align 4
@X86R_DI = common dso_local global i32 0, align 4
@B0001 = common dso_local global i32 0, align 4
@X86R_BP = common dso_local global i32 0, align 4
@B0010 = common dso_local global i32 0, align 4
@B0011 = common dso_local global i32 0, align 4
@B0100 = common dso_local global i32 0, align 4
@B0101 = common dso_local global i32 0, align 4
@B0111 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.TYPE_9__*)* @opdec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opdec(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = call i32 @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %607

32:                                               ; preds = %3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = call i32 @is_valid_registers(%struct.TYPE_9__* %33)
  store i32 0, i32* %8, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ALL_SIZE, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %32
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %50, %32
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @OT_WORD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 102, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %57
  store i32 64, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @OT_QWORD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  store i32 1, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, 8
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  store i32 1, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %84, %76
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @OT_BYTE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 254, i32* %12, align 4
  br label %94

93:                                               ; preds = %87
  store i32 255, i32* %12, align 4
  br label %94

94:                                               ; preds = %93, %92
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @OT_MEMORY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %171, label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %107, %104
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %117, 32
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @OT_BYTE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119, %114
  %125 = load i32, i32* %12, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %125, i32* %130, align 4
  br label %131

131:                                              ; preds = %124, %119
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 32
  br i1 %135, label %136, label %156

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @OT_DWORD, align 4
  %139 = load i32, i32* @OT_WORD, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %137, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %136
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 72, %149
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32 %150, i32* %155, align 4
  br label %169

156:                                              ; preds = %136, %131
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 200, %162
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  store i32 %163, i32* %168, align 4
  br label %169

169:                                              ; preds = %156, %143
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %4, align 4
  br label %607

171:                                              ; preds = %94
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @X86R_RIP, align 4
  %181 = icmp eq i32 %179, %180
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %13, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %188, %194
  store i32 %195, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %171
  store i32 0, i32* %16, align 4
  br label %208

199:                                              ; preds = %171
  %200 = load i32, i32* %14, align 4
  %201 = icmp slt i32 %200, 128
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load i32, i32* %14, align 4
  %204 = icmp sgt i32 %203, -129
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  store i32 1, i32* %16, align 4
  br label %207

206:                                              ; preds = %202, %199
  store i32 2, i32* %16, align 4
  br label %207

207:                                              ; preds = %206, %205
  br label %208

208:                                              ; preds = %207, %198
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @OT_WORD, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %400

220:                                              ; preds = %208
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @X86R_BX, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %220
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @X86R_SI, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %231
  %243 = load i32, i32* @B0000, align 4
  store i32 %243, i32* %18, align 4
  br label %392

244:                                              ; preds = %231, %220
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i64 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @X86R_BX, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %268

255:                                              ; preds = %244
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i64 0
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 3
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @X86R_DI, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %255
  %267 = load i32, i32* @B0001, align 4
  store i32 %267, i32* %18, align 4
  br label %391

268:                                              ; preds = %255, %244
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i64 0
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @X86R_BP, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %292

279:                                              ; preds = %268
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 3
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @X86R_SI, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %279
  %291 = load i32, i32* @B0010, align 4
  store i32 %291, i32* %18, align 4
  br label %390

292:                                              ; preds = %279, %268
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i64 0
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 3
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @X86R_BP, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %316

303:                                              ; preds = %292
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 0
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 3
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @X86R_DI, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %303
  %315 = load i32, i32* @B0011, align 4
  store i32 %315, i32* %18, align 4
  br label %389

316:                                              ; preds = %303, %292
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i64 0
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 3
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @X86R_SI, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %339

327:                                              ; preds = %316
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i64 0
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 3
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp eq i32 %335, -1
  br i1 %336, label %337, label %339

337:                                              ; preds = %327
  %338 = load i32, i32* @B0100, align 4
  store i32 %338, i32* %18, align 4
  br label %388

339:                                              ; preds = %327, %316
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i64 0
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 3
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 0
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @X86R_DI, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %362

350:                                              ; preds = %339
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i64 0
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 1
  %358 = load i32, i32* %357, align 4
  %359 = icmp eq i32 %358, -1
  br i1 %359, label %360, label %362

360:                                              ; preds = %350
  %361 = load i32, i32* @B0101, align 4
  store i32 %361, i32* %18, align 4
  br label %387

362:                                              ; preds = %350, %339
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i64 0
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 3
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @X86R_BX, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %385

373:                                              ; preds = %362
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i64 0
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 3
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 1
  %381 = load i32, i32* %380, align 4
  %382 = icmp eq i32 %381, -1
  br i1 %382, label %383, label %385

383:                                              ; preds = %373
  %384 = load i32, i32* @B0111, align 4
  store i32 %384, i32* %18, align 4
  br label %386

385:                                              ; preds = %373, %362
  store i32 -1, i32* %4, align 4
  br label %607

386:                                              ; preds = %383
  br label %387

387:                                              ; preds = %386, %360
  br label %388

388:                                              ; preds = %387, %337
  br label %389

389:                                              ; preds = %388, %314
  br label %390

390:                                              ; preds = %389, %290
  br label %391

391:                                              ; preds = %390, %266
  br label %392

392:                                              ; preds = %391, %242
  %393 = load i32, i32* %16, align 4
  %394 = shl i32 %393, 6
  %395 = load i32, i32* %17, align 4
  %396 = shl i32 %395, 3
  %397 = or i32 %394, %396
  %398 = load i32, i32* %18, align 4
  %399 = or i32 %397, %398
  store i32 %399, i32* %15, align 4
  br label %498

400:                                              ; preds = %208
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i64 0
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 7
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %400
  %409 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i64 0
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  store i32 %414, i32* %18, align 4
  br label %424

415:                                              ; preds = %400
  %416 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 0
  %418 = load %struct.TYPE_7__*, %struct.TYPE_7__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i64 0
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 3
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 0
  %423 = load i32, i32* %422, align 4
  store i32 %423, i32* %18, align 4
  br label %424

424:                                              ; preds = %415, %408
  %425 = load i32, i32* %18, align 4
  %426 = icmp eq i32 %425, 5
  br i1 %426, label %427, label %431

427:                                              ; preds = %424
  %428 = load i32, i32* %16, align 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  store i32 1, i32* %16, align 4
  br label %431

431:                                              ; preds = %430, %427, %424
  %432 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i32 0, i32 0
  %434 = load %struct.TYPE_7__*, %struct.TYPE_7__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i64 0
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 3
  %437 = load i32*, i32** %436, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 1
  %439 = load i32, i32* %438, align 4
  store i32 %439, i32* %21, align 4
  %440 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_7__*, %struct.TYPE_7__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i64 0
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 6
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 1
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @getsib(i32 %447)
  store i32 %448, i32* %22, align 4
  %449 = load i32, i32* %21, align 4
  %450 = icmp ne i32 %449, -1
  br i1 %450, label %451, label %459

451:                                              ; preds = %431
  store i32 1, i32* %19, align 4
  %452 = load i32, i32* %22, align 4
  %453 = shl i32 %452, 6
  %454 = load i32, i32* %21, align 4
  %455 = shl i32 %454, 3
  %456 = or i32 %453, %455
  %457 = load i32, i32* %18, align 4
  %458 = or i32 %456, %457
  store i32 %458, i32* %20, align 4
  br label %464

459:                                              ; preds = %431
  %460 = load i32, i32* %18, align 4
  %461 = icmp eq i32 %460, 4
  br i1 %461, label %462, label %463

462:                                              ; preds = %459
  store i32 1, i32* %19, align 4
  store i32 36, i32* %20, align 4
  br label %463

463:                                              ; preds = %462, %459
  br label %464

464:                                              ; preds = %463, %451
  %465 = load i32, i32* %19, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %469

467:                                              ; preds = %464
  %468 = load i32, i32* @B0100, align 4
  store i32 %468, i32* %18, align 4
  br label %469

469:                                              ; preds = %467, %464
  %470 = load i32, i32* %13, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %487

472:                                              ; preds = %469
  %473 = load i32, i32* @B0000, align 4
  %474 = shl i32 %473, 6
  %475 = load i32, i32* %17, align 4
  %476 = shl i32 %475, 3
  %477 = or i32 %474, %476
  %478 = load i32, i32* @B0101, align 4
  %479 = or i32 %477, %478
  store i32 %479, i32* %15, align 4
  %480 = load i32, i32* %22, align 4
  %481 = shl i32 %480, 6
  %482 = load i32, i32* @B0100, align 4
  %483 = shl i32 %482, 3
  %484 = or i32 %481, %483
  %485 = load i32, i32* @B0101, align 4
  %486 = or i32 %484, %485
  store i32 %486, i32* %20, align 4
  br label %495

487:                                              ; preds = %469
  %488 = load i32, i32* %16, align 4
  %489 = shl i32 %488, 6
  %490 = load i32, i32* %17, align 4
  %491 = shl i32 %490, 3
  %492 = or i32 %489, %491
  %493 = load i32, i32* %18, align 4
  %494 = or i32 %492, %493
  store i32 %494, i32* %15, align 4
  br label %495

495:                                              ; preds = %487, %472
  %496 = load i32, i32* %15, align 4
  %497 = or i32 %496, 8
  store i32 %497, i32* %15, align 4
  br label %498

498:                                              ; preds = %495, %392
  %499 = load i32, i32* %11, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %508

501:                                              ; preds = %498
  %502 = load i32, i32* %10, align 4
  %503 = load i32*, i32** %6, align 8
  %504 = load i32, i32* %8, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %8, align 4
  %506 = sext i32 %504 to i64
  %507 = getelementptr inbounds i32, i32* %503, i64 %506
  store i32 %502, i32* %507, align 4
  br label %508

508:                                              ; preds = %501, %498
  %509 = load i32, i32* %12, align 4
  %510 = load i32*, i32** %6, align 8
  %511 = load i32, i32* %8, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %8, align 4
  %513 = sext i32 %511 to i64
  %514 = getelementptr inbounds i32, i32* %510, i64 %513
  store i32 %509, i32* %514, align 4
  %515 = load i32, i32* %15, align 4
  %516 = load i32*, i32** %6, align 8
  %517 = load i32, i32* %8, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %8, align 4
  %519 = sext i32 %517 to i64
  %520 = getelementptr inbounds i32, i32* %516, i64 %519
  store i32 %515, i32* %520, align 4
  %521 = load i32, i32* %19, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %530

523:                                              ; preds = %508
  %524 = load i32, i32* %20, align 4
  %525 = load i32*, i32** %6, align 8
  %526 = load i32, i32* %8, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %8, align 4
  %528 = sext i32 %526 to i64
  %529 = getelementptr inbounds i32, i32* %525, i64 %528
  store i32 %524, i32* %529, align 4
  br label %530

530:                                              ; preds = %523, %508
  %531 = load i32, i32* %16, align 4
  %532 = icmp eq i32 %531, 1
  br i1 %532, label %533, label %540

533:                                              ; preds = %530
  %534 = load i32, i32* %14, align 4
  %535 = load i32*, i32** %6, align 8
  %536 = load i32, i32* %8, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %8, align 4
  %538 = sext i32 %536 to i64
  %539 = getelementptr inbounds i32, i32* %535, i64 %538
  store i32 %534, i32* %539, align 4
  br label %605

540:                                              ; preds = %530
  %541 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 0
  %543 = load %struct.TYPE_7__*, %struct.TYPE_7__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %543, i64 0
  %545 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %544, i32 0, i32 3
  %546 = load i32*, i32** %545, align 8
  %547 = getelementptr inbounds i32, i32* %546, i64 0
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* @OT_WORD, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %569

552:                                              ; preds = %540
  %553 = load i32, i32* %16, align 4
  %554 = icmp eq i32 %553, 2
  br i1 %554, label %555, label %569

555:                                              ; preds = %552
  %556 = load i32, i32* %14, align 4
  %557 = load i32*, i32** %6, align 8
  %558 = load i32, i32* %8, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %8, align 4
  %560 = sext i32 %558 to i64
  %561 = getelementptr inbounds i32, i32* %557, i64 %560
  store i32 %556, i32* %561, align 4
  %562 = load i32, i32* %14, align 4
  %563 = ashr i32 %562, 8
  %564 = load i32*, i32** %6, align 8
  %565 = load i32, i32* %8, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %8, align 4
  %567 = sext i32 %565 to i64
  %568 = getelementptr inbounds i32, i32* %564, i64 %567
  store i32 %563, i32* %568, align 4
  br label %604

569:                                              ; preds = %552, %540
  %570 = load i32, i32* %16, align 4
  %571 = icmp eq i32 %570, 2
  br i1 %571, label %575, label %572

572:                                              ; preds = %569
  %573 = load i32, i32* %13, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %603

575:                                              ; preds = %572, %569
  %576 = load i32, i32* %14, align 4
  %577 = load i32*, i32** %6, align 8
  %578 = load i32, i32* %8, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %8, align 4
  %580 = sext i32 %578 to i64
  %581 = getelementptr inbounds i32, i32* %577, i64 %580
  store i32 %576, i32* %581, align 4
  %582 = load i32, i32* %14, align 4
  %583 = ashr i32 %582, 8
  %584 = load i32*, i32** %6, align 8
  %585 = load i32, i32* %8, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %8, align 4
  %587 = sext i32 %585 to i64
  %588 = getelementptr inbounds i32, i32* %584, i64 %587
  store i32 %583, i32* %588, align 4
  %589 = load i32, i32* %14, align 4
  %590 = ashr i32 %589, 16
  %591 = load i32*, i32** %6, align 8
  %592 = load i32, i32* %8, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %8, align 4
  %594 = sext i32 %592 to i64
  %595 = getelementptr inbounds i32, i32* %591, i64 %594
  store i32 %590, i32* %595, align 4
  %596 = load i32, i32* %14, align 4
  %597 = ashr i32 %596, 24
  %598 = load i32*, i32** %6, align 8
  %599 = load i32, i32* %8, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %8, align 4
  %601 = sext i32 %599 to i64
  %602 = getelementptr inbounds i32, i32* %598, i64 %601
  store i32 %597, i32* %602, align 4
  br label %603

603:                                              ; preds = %575, %572
  br label %604

604:                                              ; preds = %603, %555
  br label %605

605:                                              ; preds = %604, %533
  %606 = load i32, i32* %8, align 4
  store i32 %606, i32* %4, align 4
  br label %607

607:                                              ; preds = %605, %385, %169, %30
  %608 = load i32, i32* %4, align 4
  ret i32 %608
}

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @is_valid_registers(%struct.TYPE_9__*) #1

declare dso_local i32 @getsib(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
