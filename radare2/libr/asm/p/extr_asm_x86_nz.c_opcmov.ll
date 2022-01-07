; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opcmov.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opcmov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32, i32, i32 }

@OT_MEMORY = common dso_local global i32 0, align 4
@OT_CONSTANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nae\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ae\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"nbe\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"pe\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"np\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"po\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"nge\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"nl\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"ng\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"nle\00", align 1
@OT_REGALL = common dso_local global i32 0, align 4
@X86R_UNDEFINED = common dso_local global i32 0, align 4
@ST8_MIN = common dso_local global i32 0, align 4
@ST8_MAX = common dso_local global i32 0, align 4
@X86R_EBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*)* @opcmov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opcmov(i32* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = call i32 @is_valid_registers(%struct.TYPE_6__* %12)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @OT_MEMORY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OT_CONSTANT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23, %3
  store i32 -1, i32* %4, align 4
  br label %697

34:                                               ; preds = %23
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 15, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %34
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 64, i32* %52, align 4
  br label %274

53:                                               ; preds = %34
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 65, i32* %62, align 4
  br label %273

63:                                               ; preds = %53
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %71, %67, %63
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 66, i32* %80, align 4
  br label %272

81:                                               ; preds = %71
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %89, %85, %81
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 67, i32* %98, align 4
  br label %271

99:                                               ; preds = %89
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103, %99
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 68, i32* %112, align 4
  br label %270

113:                                              ; preds = %103
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %117, %113
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 69, i32* %126, align 4
  br label %269

127:                                              ; preds = %117
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %131, %127
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 70, i32* %140, align 4
  br label %268

141:                                              ; preds = %131
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %145, %141
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 71, i32* %154, align 4
  br label %267

155:                                              ; preds = %145
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %155
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 72, i32* %164, align 4
  br label %266

165:                                              ; preds = %155
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @strcmp(i8* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %165
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32 73, i32* %174, align 4
  br label %265

175:                                              ; preds = %165
  %176 = load i8*, i8** %11, align 8
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @strcmp(i8* %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %179, %175
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 74, i32* %188, align 4
  br label %264

189:                                              ; preds = %179
  %190 = load i8*, i8** %11, align 8
  %191 = call i32 @strcmp(i8* %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load i8*, i8** %11, align 8
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %193, %189
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  store i32 75, i32* %202, align 4
  br label %263

203:                                              ; preds = %193
  %204 = load i8*, i8** %11, align 8
  %205 = call i32 @strcmp(i8* %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load i8*, i8** %11, align 8
  %209 = call i32 @strcmp(i8* %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %207, %203
  %212 = load i32*, i32** %6, align 8
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  store i32 76, i32* %216, align 4
  br label %262

217:                                              ; preds = %207
  %218 = load i8*, i8** %11, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load i8*, i8** %11, align 8
  %223 = call i32 @strcmp(i8* %222, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %221, %217
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  store i32 77, i32* %230, align 4
  br label %261

231:                                              ; preds = %221
  %232 = load i8*, i8** %11, align 8
  %233 = call i32 @strcmp(i8* %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8
  %237 = call i32 @strcmp(i8* %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %235, %231
  %240 = load i32*, i32** %6, align 8
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  store i32 78, i32* %244, align 4
  br label %260

245:                                              ; preds = %235
  %246 = load i8*, i8** %11, align 8
  %247 = call i32 @strcmp(i8* %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i8*, i8** %11, align 8
  %251 = call i32 @strcmp(i8* %250, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %249, %245
  %254 = load i32*, i32** %6, align 8
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 79, i32* %258, align 4
  br label %259

259:                                              ; preds = %253, %249
  br label %260

260:                                              ; preds = %259, %239
  br label %261

261:                                              ; preds = %260, %225
  br label %262

262:                                              ; preds = %261, %211
  br label %263

263:                                              ; preds = %262, %197
  br label %264

264:                                              ; preds = %263, %183
  br label %265

265:                                              ; preds = %264, %169
  br label %266

266:                                              ; preds = %265, %159
  br label %267

267:                                              ; preds = %266, %149
  br label %268

268:                                              ; preds = %267, %135
  br label %269

269:                                              ; preds = %268, %121
  br label %270

270:                                              ; preds = %269, %107
  br label %271

271:                                              ; preds = %270, %93
  br label %272

272:                                              ; preds = %271, %75
  br label %273

273:                                              ; preds = %272, %57
  br label %274

274:                                              ; preds = %273, %47
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @OT_REGALL, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %695

284:                                              ; preds = %274
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i64 1
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @OT_MEMORY, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %673

294:                                              ; preds = %284
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i64 1
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  %302 = load i32, i32* %301, align 4
  %303 = icmp sgt i32 %302, 1
  br i1 %303, label %304, label %522

304:                                              ; preds = %294
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i64 1
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 2
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @X86R_UNDEFINED, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %364

315:                                              ; preds = %304
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_5__*, %struct.TYPE_5__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i64 0
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = shl i32 %321, 3
  %323 = or i32 %322, 4
  %324 = load i32*, i32** %6, align 8
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %8, align 4
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i32, i32* %324, i64 %327
  store i32 %323, i32* %328, align 4
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i64 1
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @getsib(i32 %336)
  %338 = shl i32 %337, 6
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i64 1
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  %346 = load i32, i32* %345, align 4
  %347 = shl i32 %346, 3
  %348 = or i32 %338, %347
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i64 1
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 2
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 1
  %356 = load i32, i32* %355, align 4
  %357 = or i32 %348, %356
  %358 = load i32*, i32** %6, align 8
  %359 = load i32, i32* %8, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %8, align 4
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i32, i32* %358, i64 %361
  store i32 %357, i32* %362, align 4
  %363 = load i32, i32* %8, align 4
  store i32 %363, i32* %4, align 4
  br label %697

364:                                              ; preds = %304
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_5__*, %struct.TYPE_5__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i64 1
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_5__*, %struct.TYPE_5__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i64 1
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 8
  %377 = mul nsw i32 %370, %376
  store i32 %377, i32* %10, align 4
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 1
  %380 = load %struct.TYPE_5__*, %struct.TYPE_5__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i64 1
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 0
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %385, 2
  br i1 %386, label %387, label %405

387:                                              ; preds = %364
  %388 = load i32, i32* %10, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %405

390:                                              ; preds = %387
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 1
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i64 0
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 8
  %397 = shl i32 %396, 3
  %398 = or i32 64, %397
  %399 = or i32 %398, 4
  %400 = load i32*, i32** %6, align 8
  %401 = load i32, i32* %8, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %8, align 4
  %403 = sext i32 %401 to i64
  %404 = getelementptr inbounds i32, i32* %400, i64 %403
  store i32 %399, i32* %404, align 4
  br label %419

405:                                              ; preds = %387, %364
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 1
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i64 0
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = shl i32 %411, 3
  %413 = or i32 %412, 4
  %414 = load i32*, i32** %6, align 8
  %415 = load i32, i32* %8, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %8, align 4
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  store i32 %413, i32* %418, align 4
  br label %419

419:                                              ; preds = %405, %390
  %420 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %420, i32 0, i32 1
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i64 1
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 1
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 0
  %427 = load i32, i32* %426, align 4
  %428 = icmp eq i32 %427, 2
  br i1 %428, label %429, label %453

429:                                              ; preds = %419
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 1
  %432 = load %struct.TYPE_5__*, %struct.TYPE_5__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i64 1
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 2
  %435 = load i32*, i32** %434, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 0
  %437 = load i32, i32* %436, align 4
  %438 = shl i32 %437, 3
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 1
  %441 = load %struct.TYPE_5__*, %struct.TYPE_5__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i64 1
  %443 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i32 0, i32 2
  %444 = load i32*, i32** %443, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 0
  %446 = load i32, i32* %445, align 4
  %447 = or i32 %438, %446
  %448 = load i32*, i32** %6, align 8
  %449 = load i32, i32* %8, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %8, align 4
  %451 = sext i32 %449 to i64
  %452 = getelementptr inbounds i32, i32* %448, i64 %451
  store i32 %447, i32* %452, align 4
  br label %480

453:                                              ; preds = %419
  %454 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i32 0, i32 1
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i64 1
  %458 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %457, i32 0, i32 1
  %459 = load i32*, i32** %458, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 0
  %461 = load i32, i32* %460, align 4
  %462 = call i32 @getsib(i32 %461)
  %463 = shl i32 %462, 6
  %464 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 1
  %466 = load %struct.TYPE_5__*, %struct.TYPE_5__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %466, i64 1
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %467, i32 0, i32 2
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 0
  %471 = load i32, i32* %470, align 4
  %472 = shl i32 %471, 3
  %473 = or i32 %463, %472
  %474 = or i32 %473, 5
  %475 = load i32*, i32** %6, align 8
  %476 = load i32, i32* %8, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %8, align 4
  %478 = sext i32 %476 to i64
  %479 = getelementptr inbounds i32, i32* %475, i64 %478
  store i32 %474, i32* %479, align 4
  br label %480

480:                                              ; preds = %453, %429
  %481 = load i32, i32* %10, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %520

483:                                              ; preds = %480
  %484 = load i32, i32* %10, align 4
  %485 = load i32*, i32** %6, align 8
  %486 = load i32, i32* %8, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %8, align 4
  %488 = sext i32 %486 to i64
  %489 = getelementptr inbounds i32, i32* %485, i64 %488
  store i32 %484, i32* %489, align 4
  %490 = load i32, i32* %10, align 4
  %491 = load i32, i32* @ST8_MIN, align 4
  %492 = icmp slt i32 %490, %491
  br i1 %492, label %497, label %493

493:                                              ; preds = %483
  %494 = load i32, i32* %10, align 4
  %495 = load i32, i32* @ST8_MAX, align 4
  %496 = icmp sgt i32 %494, %495
  br i1 %496, label %497, label %519

497:                                              ; preds = %493, %483
  %498 = load i32, i32* %10, align 4
  %499 = ashr i32 %498, 8
  %500 = load i32*, i32** %6, align 8
  %501 = load i32, i32* %8, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %8, align 4
  %503 = sext i32 %501 to i64
  %504 = getelementptr inbounds i32, i32* %500, i64 %503
  store i32 %499, i32* %504, align 4
  %505 = load i32, i32* %10, align 4
  %506 = ashr i32 %505, 16
  %507 = load i32*, i32** %6, align 8
  %508 = load i32, i32* %8, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %8, align 4
  %510 = sext i32 %508 to i64
  %511 = getelementptr inbounds i32, i32* %507, i64 %510
  store i32 %506, i32* %511, align 4
  %512 = load i32, i32* %10, align 4
  %513 = ashr i32 %512, 24
  %514 = load i32*, i32** %6, align 8
  %515 = load i32, i32* %8, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %8, align 4
  %517 = sext i32 %515 to i64
  %518 = getelementptr inbounds i32, i32* %514, i64 %517
  store i32 %513, i32* %518, align 4
  br label %519

519:                                              ; preds = %497, %493
  br label %520

520:                                              ; preds = %519, %480
  %521 = load i32, i32* %8, align 4
  store i32 %521, i32* %4, align 4
  br label %697

522:                                              ; preds = %294
  %523 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %524 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %523, i32 0, i32 1
  %525 = load %struct.TYPE_5__*, %struct.TYPE_5__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i64 1
  %527 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %526, i32 0, i32 2
  %528 = load i32*, i32** %527, align 8
  %529 = getelementptr inbounds i32, i32* %528, i64 1
  %530 = load i32, i32* %529, align 4
  %531 = load i32, i32* @X86R_UNDEFINED, align 4
  %532 = icmp ne i32 %530, %531
  br i1 %532, label %533, label %571

533:                                              ; preds = %522
  %534 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %535 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %534, i32 0, i32 1
  %536 = load %struct.TYPE_5__*, %struct.TYPE_5__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %536, i64 0
  %538 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %537, i32 0, i32 3
  %539 = load i32, i32* %538, align 8
  %540 = shl i32 %539, 3
  %541 = or i32 %540, 4
  %542 = load i32*, i32** %6, align 8
  %543 = load i32, i32* %8, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %8, align 4
  %545 = sext i32 %543 to i64
  %546 = getelementptr inbounds i32, i32* %542, i64 %545
  store i32 %541, i32* %546, align 4
  %547 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %548 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %547, i32 0, i32 1
  %549 = load %struct.TYPE_5__*, %struct.TYPE_5__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %549, i64 1
  %551 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %550, i32 0, i32 2
  %552 = load i32*, i32** %551, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 1
  %554 = load i32, i32* %553, align 4
  %555 = shl i32 %554, 3
  %556 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i32 0, i32 1
  %558 = load %struct.TYPE_5__*, %struct.TYPE_5__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %558, i64 1
  %560 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %559, i32 0, i32 2
  %561 = load i32*, i32** %560, align 8
  %562 = getelementptr inbounds i32, i32* %561, i64 0
  %563 = load i32, i32* %562, align 4
  %564 = or i32 %555, %563
  %565 = load i32*, i32** %6, align 8
  %566 = load i32, i32* %8, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %8, align 4
  %568 = sext i32 %566 to i64
  %569 = getelementptr inbounds i32, i32* %565, i64 %568
  store i32 %564, i32* %569, align 4
  %570 = load i32, i32* %8, align 4
  store i32 %570, i32* %4, align 4
  br label %697

571:                                              ; preds = %522
  %572 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %573 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %572, i32 0, i32 1
  %574 = load %struct.TYPE_5__*, %struct.TYPE_5__** %573, align 8
  %575 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %574, i64 1
  %576 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %575, i32 0, i32 4
  %577 = load i32, i32* %576, align 4
  %578 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %579 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %578, i32 0, i32 1
  %580 = load %struct.TYPE_5__*, %struct.TYPE_5__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %580, i64 1
  %582 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %581, i32 0, i32 5
  %583 = load i32, i32* %582, align 8
  %584 = mul nsw i32 %577, %583
  store i32 %584, i32* %10, align 4
  %585 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %586 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %585, i32 0, i32 1
  %587 = load %struct.TYPE_5__*, %struct.TYPE_5__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %587, i64 1
  %589 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %588, i32 0, i32 4
  %590 = load i32, i32* %589, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %603, label %592

592:                                              ; preds = %571
  %593 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %594 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %593, i32 0, i32 1
  %595 = load %struct.TYPE_5__*, %struct.TYPE_5__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %595, i64 1
  %597 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %596, i32 0, i32 2
  %598 = load i32*, i32** %597, align 8
  %599 = getelementptr inbounds i32, i32* %598, i64 0
  %600 = load i32, i32* %599, align 4
  %601 = load i32, i32* @X86R_EBP, align 4
  %602 = icmp eq i32 %600, %601
  br i1 %602, label %603, label %604

603:                                              ; preds = %592, %571
  store i32 1, i32* %9, align 4
  br label %604

604:                                              ; preds = %603, %592
  %605 = load i32, i32* %10, align 4
  %606 = load i32, i32* @ST8_MIN, align 4
  %607 = icmp slt i32 %605, %606
  br i1 %607, label %612, label %608

608:                                              ; preds = %604
  %609 = load i32, i32* %10, align 4
  %610 = load i32, i32* @ST8_MAX, align 4
  %611 = icmp sgt i32 %609, %610
  br i1 %611, label %612, label %613

612:                                              ; preds = %608, %604
  store i32 2, i32* %9, align 4
  br label %613

613:                                              ; preds = %612, %608
  %614 = load i32, i32* %9, align 4
  %615 = shl i32 %614, 6
  %616 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %617 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %616, i32 0, i32 1
  %618 = load %struct.TYPE_5__*, %struct.TYPE_5__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %618, i64 0
  %620 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %619, i32 0, i32 3
  %621 = load i32, i32* %620, align 8
  %622 = shl i32 %621, 3
  %623 = or i32 %615, %622
  %624 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %625 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %624, i32 0, i32 1
  %626 = load %struct.TYPE_5__*, %struct.TYPE_5__** %625, align 8
  %627 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %626, i64 1
  %628 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %627, i32 0, i32 2
  %629 = load i32*, i32** %628, align 8
  %630 = getelementptr inbounds i32, i32* %629, i64 0
  %631 = load i32, i32* %630, align 4
  %632 = or i32 %623, %631
  %633 = load i32*, i32** %6, align 8
  %634 = load i32, i32* %8, align 4
  %635 = add nsw i32 %634, 1
  store i32 %635, i32* %8, align 4
  %636 = sext i32 %634 to i64
  %637 = getelementptr inbounds i32, i32* %633, i64 %636
  store i32 %632, i32* %637, align 4
  %638 = load i32, i32* %9, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %672

640:                                              ; preds = %613
  %641 = load i32, i32* %10, align 4
  %642 = load i32*, i32** %6, align 8
  %643 = load i32, i32* %8, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %8, align 4
  %645 = sext i32 %643 to i64
  %646 = getelementptr inbounds i32, i32* %642, i64 %645
  store i32 %641, i32* %646, align 4
  %647 = load i32, i32* %9, align 4
  %648 = icmp eq i32 %647, 2
  br i1 %648, label %649, label %671

649:                                              ; preds = %640
  %650 = load i32, i32* %10, align 4
  %651 = ashr i32 %650, 8
  %652 = load i32*, i32** %6, align 8
  %653 = load i32, i32* %8, align 4
  %654 = add nsw i32 %653, 1
  store i32 %654, i32* %8, align 4
  %655 = sext i32 %653 to i64
  %656 = getelementptr inbounds i32, i32* %652, i64 %655
  store i32 %651, i32* %656, align 4
  %657 = load i32, i32* %10, align 4
  %658 = ashr i32 %657, 16
  %659 = load i32*, i32** %6, align 8
  %660 = load i32, i32* %8, align 4
  %661 = add nsw i32 %660, 1
  store i32 %661, i32* %8, align 4
  %662 = sext i32 %660 to i64
  %663 = getelementptr inbounds i32, i32* %659, i64 %662
  store i32 %658, i32* %663, align 4
  %664 = load i32, i32* %10, align 4
  %665 = ashr i32 %664, 24
  %666 = load i32*, i32** %6, align 8
  %667 = load i32, i32* %8, align 4
  %668 = add nsw i32 %667, 1
  store i32 %668, i32* %8, align 4
  %669 = sext i32 %667 to i64
  %670 = getelementptr inbounds i32, i32* %666, i64 %669
  store i32 %665, i32* %670, align 4
  br label %671

671:                                              ; preds = %649, %640
  br label %672

672:                                              ; preds = %671, %613
  br label %694

673:                                              ; preds = %284
  %674 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %675 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %674, i32 0, i32 1
  %676 = load %struct.TYPE_5__*, %struct.TYPE_5__** %675, align 8
  %677 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %676, i64 0
  %678 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %677, i32 0, i32 3
  %679 = load i32, i32* %678, align 8
  %680 = shl i32 %679, 3
  %681 = or i32 192, %680
  %682 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %683 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %682, i32 0, i32 1
  %684 = load %struct.TYPE_5__*, %struct.TYPE_5__** %683, align 8
  %685 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %684, i64 1
  %686 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %685, i32 0, i32 3
  %687 = load i32, i32* %686, align 8
  %688 = or i32 %681, %687
  %689 = load i32*, i32** %6, align 8
  %690 = load i32, i32* %8, align 4
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %8, align 4
  %692 = sext i32 %690 to i64
  %693 = getelementptr inbounds i32, i32* %689, i64 %692
  store i32 %688, i32* %693, align 4
  br label %694

694:                                              ; preds = %673, %672
  br label %695

695:                                              ; preds = %694, %274
  %696 = load i32, i32* %8, align 4
  store i32 %696, i32* %4, align 4
  br label %697

697:                                              ; preds = %695, %533, %520, %315, %33
  %698 = load i32, i32* %4, align 4
  ret i32 %698
}

declare dso_local i32 @is_valid_registers(%struct.TYPE_6__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @getsib(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
