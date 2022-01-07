; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_process_group_2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_process_group_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32, i32, i32 }

@OT_QWORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rol\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ror\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rcl\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rcr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"shl\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"shr\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sal\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Error: Immediate exceeds bounds\0A\00", align 1
@OT_DWORD = common dso_local global i32 0, align 4
@OT_GPREG = common dso_local global i32 0, align 4
@OT_BYTE = common dso_local global i32 0, align 4
@OT_WORD = common dso_local global i32 0, align 4
@OT_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.TYPE_9__*)* @process_group_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_group_2(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = call i32 @is_valid_registers(%struct.TYPE_9__* %14)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 64
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @OT_QWORD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 72, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %20, %3
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcmp(i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %99

43:                                               ; preds = %36
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @strcmp(i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %98

50:                                               ; preds = %43
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strcmp(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 2, i32* %9, align 4
  br label %97

57:                                               ; preds = %50
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @strcmp(i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 3, i32* %9, align 4
  br label %96

64:                                               ; preds = %57
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @strcmp(i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 4, i32* %9, align 4
  br label %95

71:                                               ; preds = %64
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strcmp(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  store i32 5, i32* %9, align 4
  br label %94

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @strcmp(i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  store i32 6, i32* %9, align 4
  br label %93

85:                                               ; preds = %78
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @strcmp(i32 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  store i32 7, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %85
  br label %93

93:                                               ; preds = %92, %84
  br label %94

94:                                               ; preds = %93, %77
  br label %95

95:                                               ; preds = %94, %70
  br label %96

96:                                               ; preds = %95, %63
  br label %97

97:                                               ; preds = %96, %56
  br label %98

98:                                               ; preds = %97, %49
  br label %99

99:                                               ; preds = %98, %42
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %105, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp sgt i32 %113, 255
  br i1 %114, label %118, label %115

115:                                              ; preds = %99
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, -128
  br i1 %117, label %118, label %120

118:                                              ; preds = %115, %99
  %119 = call i32 @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %340

120:                                              ; preds = %115
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @OT_DWORD, align 4
  %128 = load i32, i32* @OT_QWORD, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %167

132:                                              ; preds = %120
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @OT_GPREG, align 4
  %140 = load i32, i32* @OT_BYTE, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %132
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32 211, i32* %149, align 4
  br label %166

150:                                              ; preds = %132
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 209, i32* %158, align 4
  br label %165

159:                                              ; preds = %150
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 193, i32* %164, align 4
  br label %165

165:                                              ; preds = %159, %153
  br label %166

166:                                              ; preds = %165, %144
  br label %280

167:                                              ; preds = %120
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @OT_BYTE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %279

177:                                              ; preds = %167
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 0
  store %struct.TYPE_8__* %181, %struct.TYPE_8__** %13, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, -1
  br i1 %187, label %188, label %243

188:                                              ; preds = %177
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, -1
  br i1 %194, label %195, label %243

195:                                              ; preds = %188
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  store i32 192, i32* %200, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  store i32 68, i32* %205, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %215, 3
  %217 = or i32 %210, %216
  %218 = load i32*, i32** %6, align 8
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  store i32 %217, i32* %222, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %225, %228
  %230 = and i32 %229, 255
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %8, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  store i32 %230, i32* %235, align 4
  %236 = load i32, i32* %12, align 4
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  store i32 %236, i32* %241, align 4
  %242 = load i32, i32* %8, align 4
  store i32 %242, i32* %4, align 4
  br label %340

243:                                              ; preds = %188, %177
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i64 1
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @OT_GPREG, align 4
  %251 = load i32, i32* @OT_WORD, align 4
  %252 = or i32 %250, %251
  %253 = and i32 %249, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %243
  %256 = load i32*, i32** %6, align 8
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %8, align 4
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  store i32 210, i32* %260, align 4
  br label %277

261:                                              ; preds = %243
  %262 = load i32, i32* %12, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = load i32*, i32** %6, align 8
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %8, align 4
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  store i32 208, i32* %269, align 4
  br label %276

270:                                              ; preds = %261
  %271 = load i32*, i32** %6, align 8
  %272 = load i32, i32* %8, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %8, align 4
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  store i32 192, i32* %275, align 4
  br label %276

276:                                              ; preds = %270, %264
  br label %277

277:                                              ; preds = %276, %255
  br label %278

278:                                              ; preds = %277
  br label %279

279:                                              ; preds = %278, %167
  br label %280

280:                                              ; preds = %279, %166
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i64 0
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @OT_MEMORY, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %280
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i64 0
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %306

299:                                              ; preds = %280
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i64 0
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 8
  store i32 %305, i32* %11, align 4
  store i32 3, i32* %10, align 4
  br label %306

306:                                              ; preds = %299, %290
  %307 = load i32, i32* %10, align 4
  %308 = shl i32 %307, 6
  %309 = load i32, i32* %9, align 4
  %310 = shl i32 %309, 3
  %311 = or i32 %308, %310
  %312 = load i32, i32* %11, align 4
  %313 = or i32 %311, %312
  %314 = load i32*, i32** %6, align 8
  %315 = load i32, i32* %8, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %8, align 4
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  store i32 %313, i32* %318, align 4
  %319 = load i32, i32* %12, align 4
  %320 = icmp ne i32 %319, 1
  br i1 %320, label %321, label %338

321:                                              ; preds = %306
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i64 1
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @OT_GPREG, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %338, label %331

331:                                              ; preds = %321
  %332 = load i32, i32* %12, align 4
  %333 = load i32*, i32** %6, align 8
  %334 = load i32, i32* %8, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %8, align 4
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  store i32 %332, i32* %337, align 4
  br label %338

338:                                              ; preds = %331, %321, %306
  %339 = load i32, i32* %8, align 4
  store i32 %339, i32* %4, align 4
  br label %340

340:                                              ; preds = %338, %195, %118
  %341 = load i32, i32* %4, align 4
  ret i32 %341
}

declare dso_local i32 @is_valid_registers(%struct.TYPE_9__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
