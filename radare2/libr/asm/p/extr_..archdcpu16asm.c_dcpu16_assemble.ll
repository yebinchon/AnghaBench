; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archdcpu16asm.c_dcpu16_assemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archdcpu16asm.c_dcpu16_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"MOD\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"SHL\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"SHR\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"BOR\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"XOR\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"IFE\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"IFN\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"IFG\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"IFB\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"JSR\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"Unknown instruction\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Missing comma\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcpu16_assemble(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %25 = bitcast [256 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 256, i1 false)
  store i32 0, i32* %12, align 4
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @clean_line(i8* %26, i8* %27)
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %30 = load i8, i8* %29, align 16
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %298

33:                                               ; preds = %2
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %298

38:                                               ; preds = %33
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  store i8* %40, i8** %11, align 8
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %42 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %41, i32 3)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %129

45:                                               ; preds = %38
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %47 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 3)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 2, i32* %8, align 4
  br label %128

50:                                               ; preds = %45
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %52 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 3)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 3, i32* %8, align 4
  br label %127

55:                                               ; preds = %50
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %57 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %56, i32 3)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 4, i32* %8, align 4
  br label %126

60:                                               ; preds = %55
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %62 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %61, i32 3)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 5, i32* %8, align 4
  br label %125

65:                                               ; preds = %60
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %67 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %66, i32 3)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 6, i32* %8, align 4
  br label %124

70:                                               ; preds = %65
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %72 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %71, i32 3)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 7, i32* %8, align 4
  br label %123

75:                                               ; preds = %70
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %77 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %76, i32 3)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 8, i32* %8, align 4
  br label %122

80:                                               ; preds = %75
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %82 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %81, i32 3)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 9, i32* %8, align 4
  br label %121

85:                                               ; preds = %80
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %87 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %86, i32 3)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 10, i32* %8, align 4
  br label %120

90:                                               ; preds = %85
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %92 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %91, i32 3)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store i32 11, i32* %8, align 4
  br label %119

95:                                               ; preds = %90
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %97 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %96, i32 3)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  store i32 12, i32* %8, align 4
  br label %118

100:                                              ; preds = %95
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %102 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %101, i32 3)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  store i32 13, i32* %8, align 4
  br label %117

105:                                              ; preds = %100
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %107 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %106, i32 3)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store i32 14, i32* %8, align 4
  br label %116

110:                                              ; preds = %105
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %112 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %111, i32 3)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  store i32 15, i32* %8, align 4
  br label %115

115:                                              ; preds = %114, %110
  br label %116

116:                                              ; preds = %115, %109
  br label %117

117:                                              ; preds = %116, %104
  br label %118

118:                                              ; preds = %117, %99
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119, %89
  br label %121

121:                                              ; preds = %120, %84
  br label %122

122:                                              ; preds = %121, %79
  br label %123

123:                                              ; preds = %122, %74
  br label %124

124:                                              ; preds = %123, %69
  br label %125

125:                                              ; preds = %124, %64
  br label %126

126:                                              ; preds = %125, %59
  br label %127

127:                                              ; preds = %126, %54
  br label %128

128:                                              ; preds = %127, %49
  br label %129

129:                                              ; preds = %128, %44
  %130 = load i32, i32* %8, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %134 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %133, i32 3)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  store i32 1, i32* %9, align 4
  br label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @stderr, align 4
  %139 = call i32 @fprintf(i32 %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %298

140:                                              ; preds = %136
  br label %141

141:                                              ; preds = %140, %129
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %257

144:                                              ; preds = %141
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %145

145:                                              ; preds = %174, %144
  %146 = load i32, i32* %15, align 4
  %147 = icmp slt i32 %146, 256
  br i1 %147, label %148, label %172

148:                                              ; preds = %145
  %149 = load i8*, i8** %11, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 44
  br i1 %155, label %156, label %172

156:                                              ; preds = %148
  %157 = load i8*, i8** %11, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 10
  br i1 %163, label %164, label %172

164:                                              ; preds = %156
  %165 = load i8*, i8** %11, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br label %172

172:                                              ; preds = %164, %156, %148, %145
  %173 = phi i1 [ false, %156 ], [ false, %148 ], [ false, %145 ], [ %171, %164 ]
  br i1 %173, label %174, label %177

174:                                              ; preds = %172
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %145

177:                                              ; preds = %172
  %178 = load i8*, i8** %11, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 44
  br i1 %184, label %185, label %253

185:                                              ; preds = %177
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %186 = load i8*, i8** %11, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  store i8 0, i8* %189, align 1
  %190 = load i8*, i8** %11, align 8
  store i8* %190, i8** %19, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  store i8* %195, i8** %20, align 8
  %196 = load i8*, i8** %19, align 8
  %197 = call i32 @decode_parameter(i8* %196, i32* %17, i32* %6)
  store i32 %197, i32* %13, align 4
  %198 = load i8*, i8** %20, align 8
  %199 = call i32 @decode_parameter(i8* %198, i32* %18, i32* %7)
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* %14, align 4
  %201 = and i32 %200, 63
  %202 = shl i32 %201, 10
  %203 = load i32, i32* %13, align 4
  %204 = and i32 %203, 63
  %205 = shl i32 %204, 4
  %206 = or i32 %202, %205
  %207 = load i32, i32* %8, align 4
  %208 = and i32 %207, 15
  %209 = or i32 %206, %208
  store i32 %209, i32* %16, align 4
  %210 = load i32, i32* %16, align 4
  %211 = ashr i32 %210, 8
  %212 = and i32 %211, 255
  %213 = load i32*, i32** %4, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %16, align 4
  %216 = and i32 %215, 255
  %217 = load i32*, i32** %4, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %17, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %231

221:                                              ; preds = %185
  %222 = load i32, i32* %6, align 4
  %223 = ashr i32 %222, 8
  %224 = and i32 %223, 255
  %225 = load i32*, i32** %4, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* %6, align 4
  %228 = and i32 %227, 255
  %229 = load i32*, i32** %4, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 3
  store i32 %228, i32* %230, align 4
  store i32 4, i32* %12, align 4
  br label %232

231:                                              ; preds = %185
  store i32 2, i32* %12, align 4
  br label %232

232:                                              ; preds = %231, %221
  %233 = load i32, i32* %18, align 4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %252

235:                                              ; preds = %232
  %236 = load i32, i32* %7, align 4
  %237 = ashr i32 %236, 8
  %238 = and i32 %237, 255
  %239 = load i32*, i32** %4, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 %238, i32* %242, align 4
  %243 = load i32, i32* %7, align 4
  %244 = and i32 %243, 255
  %245 = load i32*, i32** %4, align 8
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 %244, i32* %249, align 4
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, 2
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %235, %232
  br label %256

253:                                              ; preds = %177
  %254 = load i32, i32* @stderr, align 4
  %255 = call i32 @fprintf(i32 %254, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %298

256:                                              ; preds = %252
  br label %257

257:                                              ; preds = %256, %141
  %258 = load i32, i32* %9, align 4
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %296

260:                                              ; preds = %257
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %261 = load i8*, i8** %11, align 8
  %262 = call i32 @decode_parameter(i8* %261, i32* %21, i32* %23)
  store i32 %262, i32* %24, align 4
  %263 = load i32, i32* %24, align 4
  %264 = and i32 %263, 63
  %265 = shl i32 %264, 10
  %266 = load i32, i32* %9, align 4
  %267 = and i32 %266, 63
  %268 = shl i32 %267, 4
  %269 = or i32 %265, %268
  %270 = load i32, i32* %8, align 4
  %271 = and i32 %270, 15
  %272 = or i32 %269, %271
  store i32 %272, i32* %22, align 4
  %273 = load i32, i32* %22, align 4
  %274 = ashr i32 %273, 8
  %275 = and i32 %274, 255
  %276 = load i32*, i32** %4, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* %22, align 4
  %279 = and i32 %278, 255
  %280 = load i32*, i32** %4, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 1
  store i32 %279, i32* %281, align 4
  %282 = load i32, i32* %21, align 4
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %294

284:                                              ; preds = %260
  %285 = load i32, i32* %23, align 4
  %286 = ashr i32 %285, 8
  %287 = and i32 %286, 255
  %288 = load i32*, i32** %4, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  store i32 %287, i32* %289, align 4
  %290 = load i32, i32* %23, align 4
  %291 = and i32 %290, 255
  %292 = load i32*, i32** %4, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 3
  store i32 %291, i32* %293, align 4
  store i32 4, i32* %12, align 4
  br label %295

294:                                              ; preds = %260
  store i32 2, i32* %12, align 4
  br label %295

295:                                              ; preds = %294, %284
  br label %296

296:                                              ; preds = %295, %257
  %297 = load i32, i32* %12, align 4
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %296, %253, %137, %37, %32
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @clean_line(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @decode_parameter(i8*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
