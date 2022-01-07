; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_analop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_analop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i64, i32*, i32**, i8*, i8*, i8*, i8* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__*, i32, i64*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32*, i32* }

@analop.omode = internal global i32 0, align 4
@CS_MODE_64 = common dso_local global i32 0, align 4
@CS_MODE_32 = common dso_local global i32 0, align 4
@CS_MODE_16 = common dso_local global i32 0, align 4
@handle = common dso_local global i64 0, align 8
@CS_ARCH_X86 = common dso_local global i32 0, align 4
@CS_ERR_OK = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_NULL = common dso_local global i32 0, align 4
@UT64_MAX = common dso_local global i8* null, align 8
@CS_OPT_DETAIL = common dso_local global i32 0, align 4
@CS_OPT_ON = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_ILL = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_DISASM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@R_ANAL_OP_FAMILY_CPU = common dso_local global i32 0, align 4
@R_ANAL_OP_PREFIX_REPNE = common dso_local global i64 0, align 8
@R_ANAL_OP_PREFIX_REP = common dso_local global i64 0, align 8
@R_ANAL_OP_PREFIX_LOCK = common dso_local global i64 0, align 8
@R_ANAL_OP_FAMILY_THREAD = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_ESIL = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_OPEX = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_VAL = common dso_local global i32 0, align 4
@R_ANAL_OP_FAMILY_PRIV = common dso_local global i32 0, align 4
@X86_GRP_PRIVILEGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_29__*, i32, i32*, i32, i32)* @analop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analop(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %8, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %14, align 8
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 64
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @CS_MODE_64, align 4
  br label %43

24:                                               ; preds = %6
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @CS_MODE_32, align 4
  br label %41

31:                                               ; preds = %24
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @CS_MODE_16, align 4
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  br label %41

41:                                               ; preds = %39, %29
  %42 = phi i32 [ %30, %29 ], [ %40, %39 ]
  br label %43

43:                                               ; preds = %41, %22
  %44 = phi i32 [ %23, %22 ], [ %42, %41 ]
  store i32 %44, i32* %15, align 4
  %45 = load i64, i64* @handle, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @analop.omode, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* @handle, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @cs_close(i64* @handle)
  store i64 0, i64* @handle, align 8
  br label %56

56:                                               ; preds = %54, %51
  br label %57

57:                                               ; preds = %56, %47, %43
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* @analop.omode, align 4
  %59 = load i64, i64* @handle, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32, i32* @CS_ARCH_X86, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @cs_open(i32 %62, i32 %63, i64* @handle)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @CS_ERR_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i64 0, i64* @handle, align 8
  store i32 0, i32* %7, align 4
  br label %277

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %57
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %72 = call i32 @memset(%struct.TYPE_29__* %71, i8 signext 0, i32 112)
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @R_ANAL_OP_TYPE_NULL, align 4
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load i8*, i8** @UT64_MAX, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 17
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @UT64_MAX, align 8
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 16
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @UT64_MAX, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 14
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 15
  store i8* %84, i8** %88, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 13
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  store i32* null, i32** %92, align 8
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 13
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  store i32* null, i32** %96, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 12
  store i32* null, i32** %98, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 11
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 10
  %105 = call i32 @r_strbuf_init(i32* %104)
  %106 = load i64, i64* @handle, align 8
  %107 = load i32, i32* @CS_OPT_DETAIL, align 4
  %108 = load i32, i32* @CS_OPT_ON, align 4
  %109 = call i32 @cs_option(i64 %106, i32 %107, i32 %108)
  %110 = load i64, i64* @handle, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @cs_disasm(i64 %110, i32* %111, i32 %112, i32 %113, i32 1, %struct.TYPE_28__** %14)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %130

117:                                              ; preds = %70
  %118 = load i32, i32* @R_ANAL_OP_TYPE_ILL, align 4
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 9
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @R_ANAL_OP_MASK_DISASM, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = call i32 @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %117
  br label %266

130:                                              ; preds = %70
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @R_ANAL_OP_MASK_DISASM, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %130
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 3
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 3
  %149 = load i64*, i64** %148, align 8
  %150 = call i32 @r_str_newf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %138, i8* %146, i64* %149)
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %135, %130
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i64 @cs_len_prefix_opcode(i32* %159)
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i64 @cs_len_prefix_opcode(i32* %166)
  %168 = add nsw i64 %160, %167
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 7
  store i64 %168, i64* %170, align 8
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 6
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @R_ANAL_OP_FAMILY_CPU, align 4
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 4
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @cond_x862r2(i32 %188)
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  switch i32 %199, label %221 [
    i32 128, label %200
    i32 129, label %206
    i32 130, label %212
  ]

200:                                              ; preds = %153
  %201 = load i64, i64* @R_ANAL_OP_PREFIX_REPNE, align 8
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = or i64 %204, %201
  store i64 %205, i64* %203, align 8
  br label %221

206:                                              ; preds = %153
  %207 = load i64, i64* @R_ANAL_OP_PREFIX_REP, align 8
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = or i64 %210, %207
  store i64 %211, i64* %209, align 8
  br label %221

212:                                              ; preds = %153
  %213 = load i64, i64* @R_ANAL_OP_PREFIX_LOCK, align 8
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = or i64 %216, %213
  store i64 %217, i64* %215, align 8
  %218 = load i32, i32* @R_ANAL_OP_FAMILY_THREAD, align 4
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  br label %221

221:                                              ; preds = %153, %212, %206, %200
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %224 = load i32, i32* %10, align 4
  %225 = load i32*, i32** %11, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %228 = call i32 @anop(%struct.TYPE_30__* %222, %struct.TYPE_29__* %223, i32 %224, i32* %225, i32 %226, i64* @handle, %struct.TYPE_28__* %227)
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %231 = call i32 @set_opdir(%struct.TYPE_29__* %229, %struct.TYPE_28__* %230)
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* @R_ANAL_OP_MASK_ESIL, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %221
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %238 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %239 = load i32, i32* %10, align 4
  %240 = load i32*, i32** %11, align 8
  %241 = load i32, i32* %12, align 4
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %243 = call i32 @anop_esil(%struct.TYPE_30__* %237, %struct.TYPE_29__* %238, i32 %239, i32* %240, i32 %241, i64* @handle, %struct.TYPE_28__* %242)
  br label %244

244:                                              ; preds = %236, %221
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* @R_ANAL_OP_MASK_OPEX, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 3
  %252 = load i64, i64* @handle, align 8
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %254 = call i32 @opex(i32* %251, i64 %252, %struct.TYPE_28__* %253)
  br label %255

255:                                              ; preds = %249, %244
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* @R_ANAL_OP_MASK_VAL, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %255
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %264 = call i32 @op_fillval(%struct.TYPE_30__* %261, %struct.TYPE_29__* %262, i64* @handle, %struct.TYPE_28__* %263)
  br label %265

265:                                              ; preds = %260, %255
  br label %266

266:                                              ; preds = %265, %129
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %268 = icmp ne %struct.TYPE_28__* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %271 = load i32, i32* %16, align 4
  %272 = call i32 @cs_free(%struct.TYPE_28__* %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %266
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %7, align 4
  br label %277

277:                                              ; preds = %273, %68
  %278 = load i32, i32* %7, align 4
  ret i32 %278
}

declare dso_local i32 @cs_close(i64*) #1

declare dso_local i32 @cs_open(i32, i32, i64*) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i8 signext, i32) #1

declare dso_local i32 @r_strbuf_init(i32*) #1

declare dso_local i32 @cs_option(i64, i32, i32) #1

declare dso_local i32 @cs_disasm(i64, i32*, i32, i32, i32, %struct.TYPE_28__**) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @r_str_newf(i8*, i32, i8*, i64*) #1

declare dso_local i64 @cs_len_prefix_opcode(i32*) #1

declare dso_local i32 @cond_x862r2(i32) #1

declare dso_local i32 @anop(%struct.TYPE_30__*, %struct.TYPE_29__*, i32, i32*, i32, i64*, %struct.TYPE_28__*) #1

declare dso_local i32 @set_opdir(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @anop_esil(%struct.TYPE_30__*, %struct.TYPE_29__*, i32, i32*, i32, i64*, %struct.TYPE_28__*) #1

declare dso_local i32 @opex(i32*, i64, %struct.TYPE_28__*) #1

declare dso_local i32 @op_fillval(%struct.TYPE_30__*, %struct.TYPE_29__*, i64*, %struct.TYPE_28__*) #1

declare dso_local i32 @cs_free(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
