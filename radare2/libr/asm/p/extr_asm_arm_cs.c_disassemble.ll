; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_arm_cs.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_arm_cs.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i64*, i32, i64*, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64*, i32 }

@disassemble.omode = internal global i32 -1, align 4
@disassemble.obits = internal global i32 32, align 4
@CS_MODE_THUMB = common dso_local global i32 0, align 4
@CS_MODE_ARM = common dso_local global i32 0, align 4
@CS_MODE_BIG_ENDIAN = common dso_local global i32 0, align 4
@CS_MODE_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@cd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"cortex\00", align 1
@CS_MODE_MCLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"v8\00", align 1
@CS_MODE_V8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CS_ARCH_ARM64 = common dso_local global i32 0, align 4
@CS_ARCH_ARM = common dso_local global i32 0, align 4
@CS_OPT_SYNTAX = common dso_local global i32 0, align 4
@R_ASM_SYNTAX_REGNUM = common dso_local global i64 0, align 8
@CS_OPT_SYNTAX_NOREGNAME = common dso_local global i32 0, align 4
@CS_OPT_SYNTAX_DEFAULT = common dso_local global i32 0, align 4
@CS_OPT_DETAIL = common dso_local global i32 0, align 4
@CS_OPT_ON = common dso_local global i32 0, align 4
@CS_OPT_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"illegal\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 16
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @CS_MODE_THUMB, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @CS_MODE_ARM, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load i32, i32* %12, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @CS_MODE_BIG_ENDIAN, align 4
  br label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @CS_MODE_LITTLE_ENDIAN, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @disassemble.omode, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @disassemble.obits, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46, %39
  %53 = call i32 @cs_close(i64* @cd)
  store i64 0, i64* @cd, align 8
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* @disassemble.omode, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* @disassemble.obits, align 4
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 5
  %61 = load i64*, i64** %60, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %90

63:                                               ; preds = %58
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  %66 = load i64*, i64** %65, align 8
  %67 = call i64 @strstr(i64* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @CS_MODE_MCLASS, align 4
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 64
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 5
  %81 = load i64*, i64** %80, align 8
  %82 = call i64 @strstr(i64* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @CS_MODE_V8, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %84, %78
  br label %89

89:                                               ; preds = %88, %73
  br label %90

90:                                               ; preds = %89, %58
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 64
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load i64*, i64** %102, align 8
  %104 = call i64 @strstr(i64* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* @CS_MODE_V8, align 4
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %106, %100
  br label %111

111:                                              ; preds = %110, %95, %90
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %113 = icmp ne %struct.TYPE_11__* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i32 4, i32* %116, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = call i32 @r_strbuf_set(i32* %118, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %114, %111
  %121 = load i64, i64* @cd, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @disassemble.omode, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %123, %120
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 64
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* @CS_ARCH_ARM64, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @cs_open(i32 %133, i32 %134, i64* @cd)
  br label %140

136:                                              ; preds = %127
  %137 = load i32, i32* @CS_ARCH_ARM, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @cs_open(i32 %137, i32 %138, i64* @cd)
  br label %140

140:                                              ; preds = %136, %132
  %141 = phi i32 [ %135, %132 ], [ %139, %136 ]
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 -1, i32* %13, align 4
  br label %278

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %123
  %147 = load i64, i64* @cd, align 8
  %148 = load i32, i32* @CS_OPT_SYNTAX, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @R_ASM_SYNTAX_REGNUM, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i32, i32* @CS_OPT_SYNTAX_NOREGNAME, align 4
  br label %158

156:                                              ; preds = %146
  %157 = load i32, i32* @CS_OPT_SYNTAX_DEFAULT, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  %160 = call i32 @cs_option(i64 %147, i32 %148, i32 %159)
  %161 = load i64, i64* @cd, align 8
  %162 = load i32, i32* @CS_OPT_DETAIL, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 3
  %165 = load i64*, i64** %164, align 8
  %166 = icmp ne i64* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %158
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 3
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i32, i32* @CS_OPT_ON, align 4
  br label %177

175:                                              ; preds = %167, %158
  %176 = load i32, i32* @CS_OPT_OFF, align 4
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32 [ %174, %173 ], [ %176, %175 ]
  %179 = call i32 @cs_option(i64 %161, i32 %162, i32 %178)
  %180 = load i32*, i32** %8, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %177
  br label %278

183:                                              ; preds = %177
  %184 = load i64, i64* @cd, align 8
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @R_MIN(i32 4, i32 %186)
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @cs_disasm(i64 %184, i32* %185, i32 %187, i32 %190, i32 1, %struct.TYPE_10__** %11)
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = icmp slt i32 %192, 1
  br i1 %193, label %199, label %194

194:                                              ; preds = %183
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %197, 1
  br i1 %198, label %199, label %200

199:                                              ; preds = %194, %183
  store i32 -1, i32* %13, align 4
  br label %278

200:                                              ; preds = %194
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %202 = icmp ne %struct.TYPE_11__* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  store i32 0, i32* %205, align 4
  br label %206

206:                                              ; preds = %203, %200
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 3
  %209 = load i64*, i64** %208, align 8
  %210 = icmp ne i64* %209, null
  br i1 %210, label %211, label %235

211:                                              ; preds = %206
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 3
  %214 = load i64*, i64** %213, align 8
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %235

217:                                              ; preds = %211
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %220 = call i32 @check_features(%struct.TYPE_12__* %218, %struct.TYPE_10__* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %234, label %222

222:                                              ; preds = %217
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %224 = icmp ne %struct.TYPE_11__* %223, null
  br i1 %224, label %225, label %234

225:                                              ; preds = %222
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 1
  %233 = call i32 @r_strbuf_set(i32* %232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %234

234:                                              ; preds = %225, %222, %217
  br label %235

235:                                              ; preds = %234, %211, %206
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %237 = icmp ne %struct.TYPE_11__* %236, null
  br i1 %237, label %238, label %274

238:                                              ; preds = %235
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %274, label %243

243:                                              ; preds = %238
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 4
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 1
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = load i64*, i64** %261, align 8
  %263 = call i8* @sdb_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %251, i8* %259, i64* %262)
  store i8* %263, i8** %15, align 8
  %264 = load i32, i32* %10, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %243
  %267 = load i8*, i8** %15, align 8
  %268 = call i32 @r_str_rmch(i8* %267, i8 signext 35)
  br label %269

269:                                              ; preds = %266, %243
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = load i8*, i8** %15, align 8
  %273 = call i32 @r_strbuf_set(i32* %271, i8* %272)
  br label %274

274:                                              ; preds = %269, %238, %235
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %276 = load i32, i32* %14, align 4
  %277 = call i32 @cs_free(%struct.TYPE_10__* %275, i32 %276)
  br label %278

278:                                              ; preds = %274, %199, %182, %144
  %279 = call i32 @cs_close(i64* @cd)
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %281 = icmp ne %struct.TYPE_11__* %280, null
  br i1 %281, label %282, label %296

282:                                              ; preds = %278
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 1
  %285 = call i32* @r_strbuf_get(i32* %284)
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %282
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 1
  %291 = call i32 @r_strbuf_set(i32* %290, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %292

292:                                              ; preds = %288, %282
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %5, align 4
  br label %298

296:                                              ; preds = %278
  %297 = load i32, i32* %13, align 4
  store i32 %297, i32* %5, align 4
  br label %298

298:                                              ; preds = %296, %292
  %299 = load i32, i32* %5, align 4
  ret i32 %299
}

declare dso_local i32 @cs_close(i64*) #1

declare dso_local i64 @strstr(i64*, i8*) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

declare dso_local i32 @cs_open(i32, i32, i64*) #1

declare dso_local i32 @cs_option(i64, i32, i32) #1

declare dso_local i32 @cs_disasm(i64, i32*, i32, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @R_MIN(i32, i32) #1

declare dso_local i32 @check_features(%struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i8* @sdb_fmt(i8*, i32, i8*, i64*) #1

declare dso_local i32 @r_str_rmch(i8*, i8 signext) #1

declare dso_local i32 @cs_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @r_strbuf_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
