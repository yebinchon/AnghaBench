; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sparc_cs.c_analop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sparc_cs.c_analop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, i32 }

@analop.handle = internal global i64 0, align 8
@analop.omode = internal global i32 0, align 4
@CS_MODE_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"v9\00", align 1
@CS_MODE_V9 = common dso_local global i32 0, align 4
@CS_ARCH_SPARC = common dso_local global i32 0, align 4
@CS_ERR_OK = common dso_local global i32 0, align 4
@CS_OPT_DETAIL = common dso_local global i32 0, align 4
@CS_OPT_ON = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_NULL = common dso_local global i8* null, align 8
@UT64_MAX = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ILL = common dso_local global i8* null, align 8
@R_ANAL_OP_MASK_OPEX = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_MOV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_UNK = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_UCALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_LOAD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_STORE = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_OR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@INSCC = common dso_local global i32 0, align 4
@SPARC_CC_ICC_N = common dso_local global i32 0, align 4
@SPARC_CC_ICC_A = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_MUL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_DIV = common dso_local global i8* null, align 8
@R_ANAL_OP_MASK_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32*, i32, i32)* @analop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analop(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca %struct.TYPE_12__, align 8
  %20 = alloca %struct.TYPE_12__, align 8
  %21 = alloca %struct.TYPE_12__, align 8
  %22 = alloca %struct.TYPE_12__, align 8
  %23 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %318

29:                                               ; preds = %6
  %30 = load i32, i32* @CS_MODE_LITTLE_ENDIAN, align 4
  store i32 %30, i32* %15, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcmp(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @CS_MODE_V9, align 4
  %38 = load i32, i32* %15, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @analop.omode, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call i32 @cs_close(i64* @analop.handle)
  store i64 0, i64* @analop.handle, align 8
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* @analop.omode, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i64, i64* @analop.handle, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i32, i32* @CS_ARCH_SPARC, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @cs_open(i32 %51, i32 %52, i64* @analop.handle)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* @CS_ERR_OK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 -1, i32* %7, align 4
  br label %318

58:                                               ; preds = %50
  %59 = load i64, i64* @analop.handle, align 8
  %60 = load i32, i32* @CS_OPT_DETAIL, align 4
  %61 = load i32, i32* @CS_OPT_ON, align 4
  %62 = call i32 @cs_option(i64 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %47
  %64 = load i8*, i8** @R_ANAL_OP_TYPE_NULL, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load i8*, i8** @UT64_MAX, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @UT64_MAX, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @UT64_MAX, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 9
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @UT64_MAX, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 7
  %85 = call i32 @r_strbuf_init(i32* %84)
  %86 = load i64, i64* @analop.handle, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @cs_disasm(i64 %86, i32* %87, i32 %88, i32 %89, i32 1, %struct.TYPE_13__** %14)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %97

93:                                               ; preds = %63
  %94 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  br label %314

97:                                               ; preds = %63
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @R_ANAL_OP_MASK_OPEX, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 6
  %105 = load i64, i64* @analop.handle, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %107 = call i32 @opex(i32* %104, i64 %105, %struct.TYPE_13__* %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %300 [
    i32 181, label %122
    i32 169, label %126
    i32 160, label %130
    i32 162, label %130
    i32 161, label %130
    i32 133, label %136
    i32 222, label %140
    i32 167, label %173
    i32 221, label %177
    i32 180, label %181
    i32 179, label %181
    i32 177, label %197
    i32 178, label %197
    i32 176, label %197
    i32 175, label %197
    i32 174, label %197
    i32 173, label %197
    i32 172, label %197
    i32 171, label %197
    i32 170, label %197
    i32 152, label %201
    i32 153, label %201
    i32 151, label %201
    i32 154, label %201
    i32 150, label %201
    i32 149, label %201
    i32 148, label %201
    i32 165, label %205
    i32 163, label %205
    i32 164, label %205
    i32 166, label %205
    i32 230, label %209
    i32 229, label %209
    i32 228, label %209
    i32 227, label %209
    i32 226, label %209
    i32 225, label %209
    i32 224, label %209
    i32 223, label %209
    i32 217, label %209
    i32 210, label %284
    i32 209, label %284
    i32 189, label %284
    i32 188, label %284
    i32 187, label %284
    i32 186, label %284
    i32 184, label %284
    i32 183, label %284
    i32 182, label %284
    i32 146, label %284
    i32 145, label %284
    i32 144, label %284
    i32 147, label %284
    i32 140, label %284
    i32 141, label %284
    i32 235, label %288
    i32 234, label %288
    i32 232, label %288
    i32 233, label %288
    i32 231, label %288
    i32 236, label %288
    i32 220, label %288
    i32 219, label %288
    i32 218, label %288
    i32 212, label %288
    i32 211, label %288
    i32 198, label %288
    i32 197, label %288
    i32 196, label %288
    i32 195, label %288
    i32 194, label %288
    i32 193, label %288
    i32 192, label %288
    i32 191, label %288
    i32 190, label %288
    i32 142, label %288
    i32 143, label %288
    i32 213, label %292
    i32 208, label %292
    i32 207, label %292
    i32 206, label %292
    i32 205, label %292
    i32 204, label %292
    i32 203, label %292
    i32 202, label %292
    i32 201, label %292
    i32 200, label %292
    i32 199, label %292
    i32 185, label %292
    i32 168, label %292
    i32 155, label %292
    i32 156, label %292
    i32 135, label %292
    i32 134, label %292
    i32 136, label %292
    i32 132, label %292
    i32 131, label %292
    i32 216, label %296
    i32 215, label %296
    i32 214, label %296
    i32 158, label %296
    i32 157, label %296
    i32 159, label %296
    i32 138, label %296
    i32 137, label %296
    i32 139, label %296
  ]

122:                                              ; preds = %108
  %123 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  br label %300

126:                                              ; preds = %108
  %127 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  br label %300

130:                                              ; preds = %108, %108, %108
  %131 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  br label %300

136:                                              ; preds = %108
  %137 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  br label %300

140:                                              ; preds = %108
  %141 = call { i8*, i32 } @INSOP(i32 0)
  %142 = bitcast %struct.TYPE_12__* %18 to { i8*, i32 }*
  %143 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %142, i32 0, i32 0
  %144 = extractvalue { i8*, i32 } %141, 0
  store i8* %144, i8** %143, align 8
  %145 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %142, i32 0, i32 1
  %146 = extractvalue { i8*, i32 } %141, 1
  store i32 %146, i32* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  switch i32 %148, label %156 [
    i32 129, label %149
    i32 128, label %150
  ]

149:                                              ; preds = %140
  br label %172

150:                                              ; preds = %140
  %151 = load i8*, i8** @R_ANAL_OP_TYPE_UCALL, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 3
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  store i32 1, i32* %155, align 4
  br label %172

156:                                              ; preds = %140
  %157 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  store i32 1, i32* %161, align 4
  %162 = call { i8*, i32 } @INSOP(i32 0)
  %163 = bitcast %struct.TYPE_12__* %19 to { i8*, i32 }*
  %164 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %163, i32 0, i32 0
  %165 = extractvalue { i8*, i32 } %162, 0
  store i8* %165, i8** %164, align 8
  %166 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %163, i32 0, i32 1
  %167 = extractvalue { i8*, i32 } %162, 1
  store i32 %167, i32* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 5
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %156, %150, %149
  br label %300

173:                                              ; preds = %108
  %174 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  br label %300

177:                                              ; preds = %108
  %178 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 3
  store i8* %178, i8** %180, align 8
  br label %300

181:                                              ; preds = %108, %108
  %182 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 3
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  %187 = call { i8*, i32 } @INSOP(i32 0)
  %188 = bitcast %struct.TYPE_12__* %20 to { i8*, i32 }*
  %189 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %188, i32 0, i32 0
  %190 = extractvalue { i8*, i32 } %187, 0
  store i8* %190, i8** %189, align 8
  %191 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %188, i32 0, i32 1
  %192 = extractvalue { i8*, i32 } %187, 1
  store i32 %192, i32* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 5
  store i8* %194, i8** %196, align 8
  br label %300

197:                                              ; preds = %108, %108, %108, %108, %108, %108, %108, %108, %108
  %198 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 3
  store i8* %198, i8** %200, align 8
  br label %300

201:                                              ; preds = %108, %108, %108, %108, %108, %108, %108
  %202 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  br label %300

205:                                              ; preds = %108, %108, %108, %108
  %206 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  br label %300

209:                                              ; preds = %108, %108, %108, %108, %108, %108, %108, %108, %108
  %210 = call { i8*, i32 } @INSOP(i32 0)
  %211 = bitcast %struct.TYPE_12__* %21 to { i8*, i32 }*
  %212 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %211, i32 0, i32 0
  %213 = extractvalue { i8*, i32 } %210, 0
  store i8* %213, i8** %212, align 8
  %214 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %211, i32 0, i32 1
  %215 = extractvalue { i8*, i32 } %210, 1
  store i32 %215, i32* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  switch i32 %217, label %282 [
    i32 128, label %218
    i32 130, label %250
  ]

218:                                              ; preds = %209
  %219 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 3
  store i8* %219, i8** %221, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  store i32 1, i32* %223, align 4
  %224 = load i32, i32* @INSCC, align 4
  %225 = load i32, i32* @SPARC_CC_ICC_N, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %218
  %228 = call { i8*, i32 } @INSOP(i32 1)
  %229 = bitcast %struct.TYPE_12__* %22 to { i8*, i32 }*
  %230 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %229, i32 0, i32 0
  %231 = extractvalue { i8*, i32 } %228, 0
  store i8* %231, i8** %230, align 8
  %232 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %229, i32 0, i32 1
  %233 = extractvalue { i8*, i32 } %228, 1
  store i32 %233, i32* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 5
  store i8* %235, i8** %237, align 8
  br label %238

238:                                              ; preds = %227, %218
  %239 = load i32, i32* @INSCC, align 4
  %240 = load i32, i32* @SPARC_CC_ICC_A, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %238
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, 8
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to i8*
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 4
  store i8* %246, i8** %248, align 8
  br label %249

249:                                              ; preds = %242, %238
  br label %283

250:                                              ; preds = %209
  %251 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 3
  store i8* %251, i8** %253, align 8
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  store i32 1, i32* %255, align 4
  %256 = load i32, i32* @INSCC, align 4
  %257 = load i32, i32* @SPARC_CC_ICC_N, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %270

259:                                              ; preds = %250
  %260 = call { i8*, i32 } @INSOP(i32 0)
  %261 = bitcast %struct.TYPE_12__* %23 to { i8*, i32 }*
  %262 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %261, i32 0, i32 0
  %263 = extractvalue { i8*, i32 } %260, 0
  store i8* %263, i8** %262, align 8
  %264 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %261, i32 0, i32 1
  %265 = extractvalue { i8*, i32 } %260, 1
  store i32 %265, i32* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 5
  store i8* %267, i8** %269, align 8
  br label %270

270:                                              ; preds = %259, %250
  %271 = load i32, i32* @INSCC, align 4
  %272 = load i32, i32* @SPARC_CC_ICC_A, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %270
  %275 = load i32, i32* %10, align 4
  %276 = add nsw i32 %275, 8
  %277 = sext i32 %276 to i64
  %278 = inttoptr i64 %277 to i8*
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 4
  store i8* %278, i8** %280, align 8
  br label %281

281:                                              ; preds = %274, %270
  br label %283

282:                                              ; preds = %209
  br label %283

283:                                              ; preds = %282, %281, %249
  br label %300

284:                                              ; preds = %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108
  %285 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 3
  store i8* %285, i8** %287, align 8
  br label %300

288:                                              ; preds = %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108
  %289 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 3
  store i8* %289, i8** %291, align 8
  br label %300

292:                                              ; preds = %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108
  %293 = load i8*, i8** @R_ANAL_OP_TYPE_MUL, align 8
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 3
  store i8* %293, i8** %295, align 8
  br label %300

296:                                              ; preds = %108, %108, %108, %108, %108, %108, %108, %108, %108
  %297 = load i8*, i8** @R_ANAL_OP_TYPE_DIV, align 8
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 3
  store i8* %297, i8** %299, align 8
  br label %300

300:                                              ; preds = %108, %296, %292, %288, %284, %283, %205, %201, %197, %181, %177, %173, %172, %136, %130, %126, %122
  %301 = load i32, i32* %13, align 4
  %302 = load i32, i32* @R_ANAL_OP_MASK_VAL, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %300
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %307 = load i64, i64* @analop.handle, align 8
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %309 = call i32 @op_fillval(%struct.TYPE_14__* %306, i64 %307, %struct.TYPE_13__* %308)
  br label %310

310:                                              ; preds = %305, %300
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %312 = load i32, i32* %16, align 4
  %313 = call i32 @cs_free(%struct.TYPE_13__* %311, i32 %312)
  br label %314

314:                                              ; preds = %310, %93
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  store i32 %317, i32* %7, align 4
  br label %318

318:                                              ; preds = %314, %57, %28
  %319 = load i32, i32* %7, align 4
  ret i32 %319
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @cs_close(i64*) #1

declare dso_local i32 @cs_open(i32, i32, i64*) #1

declare dso_local i32 @cs_option(i64, i32, i32) #1

declare dso_local i32 @r_strbuf_init(i32*) #1

declare dso_local i32 @cs_disasm(i64, i32*, i32, i32, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @opex(i32*, i64, %struct.TYPE_13__*) #1

declare dso_local { i8*, i32 } @INSOP(i32) #1

declare dso_local i32 @op_fillval(%struct.TYPE_14__*, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @cs_free(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
