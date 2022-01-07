; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_analop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_analop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i64, i64 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_26__ = type { i32, i32, i64*, i32 }

@analop.handle = internal global i64 0, align 8
@analop.omode = internal global i32 -1, align 4
@analop.obits = internal global i32 32, align 4
@CS_MODE_THUMB = common dso_local global i32 0, align 4
@CS_MODE_ARM = common dso_local global i32 0, align 4
@CS_MODE_BIG_ENDIAN = common dso_local global i32 0, align 4
@CS_MODE_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cortex\00", align 1
@CS_MODE_MCLASS = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_NULL = common dso_local global i32 0, align 4
@R_ANAL_STACK_NULL = common dso_local global i32 0, align 4
@CS_ARCH_ARM64 = common dso_local global i32 0, align 4
@CS_ARCH_ARM = common dso_local global i32 0, align 4
@CS_OPT_DETAIL = common dso_local global i32 0, align 4
@CS_OPT_ON = common dso_local global i32 0, align 4
@CS_ERR_OK = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_ILL = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_DISASM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@R_ANAL_OP_MASK_OPEX = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_ESIL = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_27__*, i32, i32*, i32, i32)* @analop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analop(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %14, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @CS_MODE_THUMB, align 4
  br label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @CS_MODE_ARM, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @CS_MODE_BIG_ENDIAN, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @CS_MODE_LITTLE_ENDIAN, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* %15, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @strstr(i64 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @CS_MODE_MCLASS, align 4
  %54 = load i32, i32* %15, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %52, %46, %38
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @analop.omode, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @analop.obits, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60, %56
  %67 = call i32 @cs_close(i64* @analop.handle)
  store i64 0, i64* @analop.handle, align 8
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* @analop.omode, align 4
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* @analop.obits, align 4
  br label %72

72:                                               ; preds = %66, %60
  %73 = load i32, i32* @R_ANAL_OP_TYPE_NULL, align 4
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 16
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 2, i32 4
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @R_ANAL_STACK_NULL, align 4
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 13
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 12
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 2
  store i32 -1, i32* %90, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 1
  store i32 -1, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 11
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 4
  store i32 -1, i32* %97, align 8
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 3
  store i32 -1, i32* %99, align 4
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 10
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 9
  %104 = call i32 @r_strbuf_init(i32* %103)
  %105 = load i64, i64* @analop.handle, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %72
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 64
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* @CS_ARCH_ARM64, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @cs_open(i32 %113, i32 %114, i64* @analop.handle)
  br label %120

116:                                              ; preds = %107
  %117 = load i32, i32* @CS_ARCH_ARM, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @cs_open(i32 %117, i32 %118, i64* @analop.handle)
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i32 [ %115, %112 ], [ %119, %116 ]
  store i32 %121, i32* %17, align 4
  %122 = load i64, i64* @analop.handle, align 8
  %123 = load i32, i32* @CS_OPT_DETAIL, align 4
  %124 = load i32, i32* @CS_OPT_ON, align 4
  %125 = call i32 @cs_option(i64 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @CS_ERR_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  store i64 0, i64* @analop.handle, align 8
  store i32 -1, i32* %7, align 4
  br label %291

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %72
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @hackyArmAnal(%struct.TYPE_28__* %132, %struct.TYPE_27__* %133, i32* %134, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i32, i32* %18, align 4
  store i32 %140, i32* %7, align 4
  br label %291

141:                                              ; preds = %131
  %142 = load i64, i64* @analop.handle, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @cs_disasm(i64 %142, i32* %143, i32 %144, i32 %145, i32 1, %struct.TYPE_26__** %14)
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp slt i32 %147, 1
  br i1 %148, label %149, label %162

149:                                              ; preds = %141
  %150 = load i32, i32* @R_ANAL_OP_TYPE_ILL, align 4
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @R_ANAL_OP_MASK_DISASM, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %149
  %158 = call i32 @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %149
  br label %287

162:                                              ; preds = %141
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @R_ANAL_OP_MASK_DISASM, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %162
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 2
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 2
  %181 = load i64*, i64** %180, align 8
  %182 = call i32 @r_str_newf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %170, i8* %178, i64* %181)
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %167, %162
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 16
  %190 = zext i1 %189 to i32
  store i32 %190, i32* %19, align 4
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 6
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 64
  br i1 %204, label %205, label %234

205:                                              ; preds = %185
  %206 = load i64, i64* @analop.handle, align 8
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %209 = call i32 @anop64(i64 %206, %struct.TYPE_27__* %207, %struct.TYPE_26__* %208)
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* @R_ANAL_OP_MASK_OPEX, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %205
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 5
  %217 = load i64, i64* @analop.handle, align 8
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %219 = call i32 @opex64(i32* %216, i64 %217, %struct.TYPE_26__* %218)
  br label %220

220:                                              ; preds = %214, %205
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* @R_ANAL_OP_MASK_ESIL, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %220
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %228 = load i32, i32* %10, align 4
  %229 = load i32*, i32** %11, align 8
  %230 = load i32, i32* %12, align 4
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %232 = call i32 @analop64_esil(%struct.TYPE_28__* %226, %struct.TYPE_27__* %227, i32 %228, i32* %229, i32 %230, i64* @analop.handle, %struct.TYPE_26__* %231)
  br label %233

233:                                              ; preds = %225, %220
  br label %268

234:                                              ; preds = %185
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %236 = load i64, i64* @analop.handle, align 8
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %239 = load i32, i32* %19, align 4
  %240 = load i32*, i32** %11, align 8
  %241 = load i32, i32* %12, align 4
  %242 = call i32 @anop32(%struct.TYPE_28__* %235, i64 %236, %struct.TYPE_27__* %237, %struct.TYPE_26__* %238, i32 %239, i32* %240, i32 %241)
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* @R_ANAL_OP_MASK_OPEX, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %234
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 5
  %250 = load i64, i64* @analop.handle, align 8
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %252 = call i32 @opex(i32* %249, i64 %250, %struct.TYPE_26__* %251)
  br label %253

253:                                              ; preds = %247, %234
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* @R_ANAL_OP_MASK_ESIL, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %253
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %261 = load i32, i32* %10, align 4
  %262 = load i32*, i32** %11, align 8
  %263 = load i32, i32* %12, align 4
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %265 = load i32, i32* %19, align 4
  %266 = call i32 @analop_esil(%struct.TYPE_28__* %259, %struct.TYPE_27__* %260, i32 %261, i32* %262, i32 %263, i64* @analop.handle, %struct.TYPE_26__* %264, i32 %265)
  br label %267

267:                                              ; preds = %258, %253
  br label %268

268:                                              ; preds = %267, %233
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %270 = call i32 @set_opdir(%struct.TYPE_27__* %269)
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* @R_ANAL_OP_MASK_VAL, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %268
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %277 = load i64, i64* @analop.handle, align 8
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @op_fillval(%struct.TYPE_27__* %276, i64 %277, %struct.TYPE_26__* %278, i32 %281)
  br label %283

283:                                              ; preds = %275, %268
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %285 = load i32, i32* %16, align 4
  %286 = call i32 @cs_free(%struct.TYPE_26__* %284, i32 %285)
  br label %287

287:                                              ; preds = %283, %161
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  store i32 %290, i32* %7, align 4
  br label %291

291:                                              ; preds = %287, %139, %129
  %292 = load i32, i32* %7, align 4
  ret i32 %292
}

declare dso_local i64 @strstr(i64, i8*) #1

declare dso_local i32 @cs_close(i64*) #1

declare dso_local i32 @r_strbuf_init(i32*) #1

declare dso_local i32 @cs_open(i32, i32, i64*) #1

declare dso_local i32 @cs_option(i64, i32, i32) #1

declare dso_local i32 @hackyArmAnal(%struct.TYPE_28__*, %struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @cs_disasm(i64, i32*, i32, i32, i32, %struct.TYPE_26__**) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @r_str_newf(i8*, i32, i8*, i64*) #1

declare dso_local i32 @anop64(i64, %struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @opex64(i32*, i64, %struct.TYPE_26__*) #1

declare dso_local i32 @analop64_esil(%struct.TYPE_28__*, %struct.TYPE_27__*, i32, i32*, i32, i64*, %struct.TYPE_26__*) #1

declare dso_local i32 @anop32(%struct.TYPE_28__*, i64, %struct.TYPE_27__*, %struct.TYPE_26__*, i32, i32*, i32) #1

declare dso_local i32 @opex(i32*, i64, %struct.TYPE_26__*) #1

declare dso_local i32 @analop_esil(%struct.TYPE_28__*, %struct.TYPE_27__*, i32, i32*, i32, i64*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @set_opdir(%struct.TYPE_27__*) #1

declare dso_local i32 @op_fillval(%struct.TYPE_27__*, i64, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @cs_free(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
