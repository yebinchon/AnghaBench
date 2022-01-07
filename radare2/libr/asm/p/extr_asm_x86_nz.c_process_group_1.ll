; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_process_group_1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_process_group_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32*, i32 }

@OT_QWORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sbb\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@OT_DWORD = common dso_local global i32 0, align 4
@X86R_EAX = common dso_local global i32 0, align 4
@OT_MEMORY = common dso_local global i32 0, align 4
@OT_BYTE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Error: Immediate exceeds bounds\0A\00", align 1
@X86R_EBP = common dso_local global i32 0, align 4
@ST8_MIN = common dso_local global i32 0, align 4
@ST8_MAX = common dso_local global i32 0, align 4
@X86R_ESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.TYPE_9__*)* @process_group_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_group_1(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
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
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = call i32 @is_valid_registers(%struct.TYPE_9__* %15)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %453

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 64
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @OT_QWORD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 72, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %30, %25
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strcmp(i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i32 2, i32* %9, align 4
  br label %109

53:                                               ; preds = %46
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @strcmp(i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %108

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @strcmp(i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 1, i32* %9, align 4
  br label %107

67:                                               ; preds = %60
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @strcmp(i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i32 4, i32* %9, align 4
  br label %106

74:                                               ; preds = %67
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @strcmp(i32 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store i32 6, i32* %9, align 4
  br label %105

81:                                               ; preds = %74
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @strcmp(i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  store i32 3, i32* %9, align 4
  br label %104

88:                                               ; preds = %81
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @strcmp(i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  store i32 5, i32* %9, align 4
  br label %103

95:                                               ; preds = %88
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @strcmp(i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  store i32 7, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %95
  br label %103

103:                                              ; preds = %102, %94
  br label %104

104:                                              ; preds = %103, %87
  br label %105

105:                                              ; preds = %104, %80
  br label %106

106:                                              ; preds = %105, %73
  br label %107

107:                                              ; preds = %106, %66
  br label %108

108:                                              ; preds = %107, %59
  br label %109

109:                                              ; preds = %108, %52
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %115, %121
  store i32 %122, i32* %13, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @OT_DWORD, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %109
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @OT_QWORD, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %183

142:                                              ; preds = %132, %109
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %148, 128
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32 131, i32* %155, align 4
  br label %182

156:                                              ; preds = %142
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @X86R_EAX, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %175, label %165

165:                                              ; preds = %156
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @OT_MEMORY, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %165, %156
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 129, i32* %180, align 4
  br label %181

181:                                              ; preds = %175, %165
  br label %182

182:                                              ; preds = %181, %150
  br label %210

183:                                              ; preds = %132
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @OT_BYTE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %209

193:                                              ; preds = %183
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 1
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp sgt i32 %199, 255
  br i1 %200, label %201, label %203

201:                                              ; preds = %193
  %202 = call i32 @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %453

203:                                              ; preds = %193
  %204 = load i32*, i32** %6, align 8
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  store i32 128, i32* %208, align 4
  br label %209

209:                                              ; preds = %203, %183
  br label %210

210:                                              ; preds = %209, %182
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @OT_MEMORY, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %345

220:                                              ; preds = %210
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %226, %232
  store i32 %233, i32* %11, align 4
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 0
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %252, label %241

241:                                              ; preds = %220
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i64 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 6
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @X86R_EBP, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %241, %220
  store i32 1, i32* %10, align 4
  br label %253

253:                                              ; preds = %252, %241
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* @ST8_MIN, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %261, label %257

257:                                              ; preds = %253
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* @ST8_MAX, align 4
  %260 = icmp sgt i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %257, %253
  store i32 2, i32* %10, align 4
  br label %262

262:                                              ; preds = %261, %257
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i64 0
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 6
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %14, align 4
  %271 = load i32, i32* %14, align 4
  %272 = icmp eq i32 %271, -1
  br i1 %272, label %273, label %274

273:                                              ; preds = %262
  store i32 1, i32* %12, align 4
  store i32 5, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %274

274:                                              ; preds = %273, %262
  %275 = load i32, i32* %10, align 4
  %276 = shl i32 %275, 6
  %277 = load i32, i32* %9, align 4
  %278 = shl i32 %277, 3
  %279 = or i32 %276, %278
  %280 = load i32, i32* %14, align 4
  %281 = or i32 %279, %280
  %282 = load i32*, i32** %6, align 8
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %8, align 4
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  store i32 %281, i32* %286, align 4
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 6
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @X86R_ESP, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %274
  %298 = load i32*, i32** %6, align 8
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  %301 = sext i32 %299 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  store i32 36, i32* %302, align 4
  br label %303

303:                                              ; preds = %297, %274
  %304 = load i32, i32* %10, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %303
  %307 = load i32, i32* %12, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %344

309:                                              ; preds = %306, %303
  %310 = load i32, i32* %11, align 4
  %311 = load i32*, i32** %6, align 8
  %312 = load i32, i32* %8, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %8, align 4
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds i32, i32* %311, i64 %314
  store i32 %310, i32* %315, align 4
  %316 = load i32, i32* %10, align 4
  %317 = icmp eq i32 %316, 2
  br i1 %317, label %321, label %318

318:                                              ; preds = %309
  %319 = load i32, i32* %12, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %343

321:                                              ; preds = %318, %309
  %322 = load i32, i32* %11, align 4
  %323 = ashr i32 %322, 8
  %324 = load i32*, i32** %6, align 8
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %8, align 4
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i32, i32* %324, i64 %327
  store i32 %323, i32* %328, align 4
  %329 = load i32, i32* %11, align 4
  %330 = ashr i32 %329, 16
  %331 = load i32*, i32** %6, align 8
  %332 = load i32, i32* %8, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %8, align 4
  %334 = sext i32 %332 to i64
  %335 = getelementptr inbounds i32, i32* %331, i64 %334
  store i32 %330, i32* %335, align 4
  %336 = load i32, i32* %11, align 4
  %337 = ashr i32 %336, 24
  %338 = load i32*, i32** %6, align 8
  %339 = load i32, i32* %8, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %8, align 4
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  store i32 %337, i32* %342, align 4
  br label %343

343:                                              ; preds = %321, %318
  br label %344

344:                                              ; preds = %343, %306
  br label %397

345:                                              ; preds = %210
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i64 1
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = icmp sgt i32 %351, 127
  br i1 %352, label %353, label %378

353:                                              ; preds = %345
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i64 0
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @X86R_EAX, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %378

362:                                              ; preds = %353
  %363 = load i32, i32* %9, align 4
  %364 = shl i32 %363, 3
  %365 = or i32 5, %364
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 0
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i64 0
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %365, %371
  %373 = load i32*, i32** %6, align 8
  %374 = load i32, i32* %8, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %8, align 4
  %376 = sext i32 %374 to i64
  %377 = getelementptr inbounds i32, i32* %373, i64 %376
  store i32 %372, i32* %377, align 4
  br label %396

378:                                              ; preds = %353, %345
  store i32 3, i32* %10, align 4
  %379 = load i32, i32* %10, align 4
  %380 = shl i32 %379, 6
  %381 = load i32, i32* %9, align 4
  %382 = shl i32 %381, 3
  %383 = or i32 %380, %382
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_7__*, %struct.TYPE_7__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i64 0
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 4
  %390 = or i32 %383, %389
  %391 = load i32*, i32** %6, align 8
  %392 = load i32, i32* %8, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %8, align 4
  %394 = sext i32 %392 to i64
  %395 = getelementptr inbounds i32, i32* %391, i64 %394
  store i32 %390, i32* %395, align 4
  br label %396

396:                                              ; preds = %378, %362
  br label %397

397:                                              ; preds = %396, %344
  %398 = load i32, i32* %13, align 4
  %399 = load i32*, i32** %6, align 8
  %400 = load i32, i32* %8, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %8, align 4
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds i32, i32* %399, i64 %402
  store i32 %398, i32* %403, align 4
  %404 = load i32, i32* %13, align 4
  %405 = icmp sgt i32 %404, 127
  br i1 %405, label %409, label %406

406:                                              ; preds = %397
  %407 = load i32, i32* %13, align 4
  %408 = icmp slt i32 %407, -128
  br i1 %408, label %409, label %451

409:                                              ; preds = %406, %397
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 0
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i64 0
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @OT_DWORD, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %429, label %419

419:                                              ; preds = %409
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 0
  %422 = load %struct.TYPE_7__*, %struct.TYPE_7__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i64 0
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* @OT_QWORD, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %451

429:                                              ; preds = %419, %409
  %430 = load i32, i32* %13, align 4
  %431 = ashr i32 %430, 8
  %432 = load i32*, i32** %6, align 8
  %433 = load i32, i32* %8, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %8, align 4
  %435 = sext i32 %433 to i64
  %436 = getelementptr inbounds i32, i32* %432, i64 %435
  store i32 %431, i32* %436, align 4
  %437 = load i32, i32* %13, align 4
  %438 = ashr i32 %437, 16
  %439 = load i32*, i32** %6, align 8
  %440 = load i32, i32* %8, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %8, align 4
  %442 = sext i32 %440 to i64
  %443 = getelementptr inbounds i32, i32* %439, i64 %442
  store i32 %438, i32* %443, align 4
  %444 = load i32, i32* %13, align 4
  %445 = ashr i32 %444, 24
  %446 = load i32*, i32** %6, align 8
  %447 = load i32, i32* %8, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %8, align 4
  %449 = sext i32 %447 to i64
  %450 = getelementptr inbounds i32, i32* %446, i64 %449
  store i32 %445, i32* %450, align 4
  br label %451

451:                                              ; preds = %429, %419, %406
  %452 = load i32, i32* %8, align 4
  store i32 %452, i32* %4, align 4
  br label %453

453:                                              ; preds = %451, %201, %24
  %454 = load i32, i32* %4, align 4
  ret i32 %454
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
