; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_cs.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_cs.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i64*, i32 }
%struct.TYPE_17__ = type { i32, i8* }
%struct.TYPE_16__ = type { i32, i64*, i32 }

@disassemble.omode = internal global i32 0, align 4
@CS_MODE_64 = common dso_local global i32 0, align 4
@CS_MODE_32 = common dso_local global i32 0, align 4
@CS_MODE_16 = common dso_local global i32 0, align 4
@cd = common dso_local global i32 0, align 4
@CS_ARCH_X86 = common dso_local global i32 0, align 4
@CS_OPT_DETAIL = common dso_local global i32 0, align 4
@CS_OPT_ON = common dso_local global i32 0, align 4
@CS_OPT_OFF = common dso_local global i32 0, align 4
@R_ASM_SYNTAX_MASM = common dso_local global i64 0, align 8
@R_ASM_SYNTAX_ATT = common dso_local global i64 0, align 8
@CS_OPT_SYNTAX = common dso_local global i32 0, align 4
@CS_OPT_SYNTAX_ATT = common dso_local global i32 0, align 4
@CS_OPT_SYNTAX_INTEL = common dso_local global i32 0, align 4
@n = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"illegal\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ptr \00", align 1
@R_ASM_SYNTAX_JZ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"je \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"jz\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"jne \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"jnz\00", align 1
@CS_OPT_SYNTAX_MASM = common dso_local global i32 0, align 4
@CS_OPT_UNSIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @CS_MODE_64, align 4
  br label %45

26:                                               ; preds = %4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @CS_MODE_32, align 4
  br label %43

33:                                               ; preds = %26
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @CS_MODE_16, align 4
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  br label %43

43:                                               ; preds = %41, %31
  %44 = phi i32 [ %32, %31 ], [ %42, %41 ]
  br label %45

45:                                               ; preds = %43, %24
  %46 = phi i32 [ %25, %24 ], [ %44, %43 ]
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @cd, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @disassemble.omode, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @cs_close(i32* @cd)
  store i32 0, i32* @cd, align 4
  br label %55

55:                                               ; preds = %53, %49, %45
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = icmp ne %struct.TYPE_17__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* @disassemble.omode, align 4
  %63 = load i32, i32* @cd, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32, i32* @CS_ARCH_X86, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @cs_open(i32 %66, i32 %67, i32* @cd)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %253

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %61
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i32, i32* @cd, align 4
  %86 = load i32, i32* @CS_OPT_DETAIL, align 4
  %87 = load i32, i32* @CS_OPT_ON, align 4
  %88 = call i32 @cs_option(i32 %85, i32 %86, i32 %87)
  br label %94

89:                                               ; preds = %78, %73
  %90 = load i32, i32* @cd, align 4
  %91 = load i32, i32* @CS_OPT_DETAIL, align 4
  %92 = load i32, i32* @CS_OPT_OFF, align 4
  %93 = call i32 @cs_option(i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @R_ASM_SYNTAX_MASM, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %118

101:                                              ; preds = %94
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @R_ASM_SYNTAX_ATT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i32, i32* @cd, align 4
  %109 = load i32, i32* @CS_OPT_SYNTAX, align 4
  %110 = load i32, i32* @CS_OPT_SYNTAX_ATT, align 4
  %111 = call i32 @cs_option(i32 %108, i32 %109, i32 %110)
  br label %117

112:                                              ; preds = %101
  %113 = load i32, i32* @cd, align 4
  %114 = load i32, i32* @CS_OPT_SYNTAX, align 4
  %115 = load i32, i32* @CS_OPT_SYNTAX_INTEL, align 4
  %116 = call i32 @cs_option(i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %107
  br label %118

118:                                              ; preds = %117, %100
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = icmp ne %struct.TYPE_17__* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  store i32 1, i32* %5, align 4
  br label %253

122:                                              ; preds = %118
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %13, align 8
  %125 = load i32, i32* @cd, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i64 @cs_disasm(i32 %125, i32* %126, i32 %127, i32 %128, i32 1, %struct.TYPE_16__** %13)
  store i64 %129, i64* @n, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %131 = icmp ne %struct.TYPE_17__* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %122
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 2
  %138 = load i64*, i64** %137, align 8
  %139 = icmp ne i64* %138, null
  br i1 %139, label %140, label %160

140:                                              ; preds = %135
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %149 = call i32 @check_features(%struct.TYPE_18__* %147, %struct.TYPE_16__* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %158 = call i32 @r_asm_op_set_asm(%struct.TYPE_17__* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %159

159:                                              ; preds = %151, %146
  br label %160

160:                                              ; preds = %159, %140, %135
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %211

165:                                              ; preds = %160
  %166 = load i64, i64* @n, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %211

168:                                              ; preds = %165
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %211

173:                                              ; preds = %168
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load i64*, i64** %191, align 8
  %193 = call i8* @sdb_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %181, i8* %189, i64* %192)
  store i8* %193, i8** %15, align 8
  %194 = load i8*, i8** %15, align 8
  %195 = call i8* @strstr(i8* %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %195, i8** %14, align 8
  %196 = load i8*, i8** %14, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %207

198:                                              ; preds = %173
  %199 = load i8*, i8** %14, align 8
  %200 = load i8*, i8** %14, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 4
  %202 = load i8*, i8** %14, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 4
  %204 = call i64 @strlen(i8* %203)
  %205 = add nsw i64 %204, 1
  %206 = call i32 @memmove(i8* %199, i8* %201, i64 %205)
  br label %207

207:                                              ; preds = %198, %173
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = call i32 @r_asm_op_set_asm(%struct.TYPE_17__* %208, i8* %209)
  br label %217

211:                                              ; preds = %168, %165, %160
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @decompile_vm(%struct.TYPE_18__* %212, %struct.TYPE_17__* %213, i32* %214, i32 %215)
  br label %217

217:                                              ; preds = %211, %207
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @R_ASM_SYNTAX_JZ, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %242

223:                                              ; preds = %217
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 1
  %226 = call i8* @r_strbuf_get(i8** %225)
  store i8* %226, i8** %16, align 8
  %227 = load i8*, i8** %16, align 8
  %228 = call i32 @strncmp(i8* %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %223
  %231 = load i8*, i8** %16, align 8
  %232 = call i32 @memcpy(i8* %231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  br label %241

233:                                              ; preds = %223
  %234 = load i8*, i8** %16, align 8
  %235 = call i32 @strncmp(i8* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = load i8*, i8** %16, align 8
  %239 = call i32 @memcpy(i8* %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  br label %240

240:                                              ; preds = %237, %233
  br label %241

241:                                              ; preds = %240, %230
  br label %242

242:                                              ; preds = %241, %217
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %244 = icmp ne %struct.TYPE_16__* %243, null
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %247 = load i64, i64* @n, align 8
  %248 = call i32 @cs_free(%struct.TYPE_16__* %246, i64 %247)
  br label %249

249:                                              ; preds = %245, %242
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  store i32 %252, i32* %5, align 4
  br label %253

253:                                              ; preds = %249, %121, %71
  %254 = load i32, i32* %5, align 4
  ret i32 %254
}

declare dso_local i32 @cs_close(i32*) #1

declare dso_local i32 @cs_open(i32, i32, i32*) #1

declare dso_local i32 @cs_option(i32, i32, i32) #1

declare dso_local i64 @cs_disasm(i32, i32*, i32, i32, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @check_features(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @r_asm_op_set_asm(%struct.TYPE_17__*, i8*) #1

declare dso_local i8* @sdb_fmt(i8*, i32, i8*, i64*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @decompile_vm(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32) #1

declare dso_local i8* @r_strbuf_get(i8**) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cs_free(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
