; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cconfig.c_cb_asmbits.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cconfig.c_cb_asmbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_19__*, %struct.TYPE_14__*, %struct.TYPE_20__* }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* (%struct.TYPE_19__*)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"user can't be NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"e asm.bits: Cannot set value, no plugins defined yet\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"asm.arch: Cannot setup '%d' bits analysis engine\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cfg.debug\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"asm.os\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"asm.arch\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"asm.cpu\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"dbg.bpsize\00", align 1
@R_ANAL_ARCHINFO_ALIGN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"asm.pcalign\00", align 1
@R_SYS_BITS_32 = common dso_local global i32 0, align 4
@R_SYS_BITS_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cb_asmbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_asmbits(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %7, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = icmp ne %struct.TYPE_17__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %242

25:                                               ; preds = %2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %25
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @r_asm_set_bits(%struct.TYPE_20__* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %39
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @r_anal_set_bits(%struct.TYPE_13__* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %25
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = icmp ne %struct.TYPE_19__* %69, null
  br i1 %70, label %71, label %153

71:                                               ; preds = %66
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = icmp ne %struct.TYPE_13__* %74, null
  br i1 %75, label %76, label %153

76:                                               ; preds = %71
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = icmp ne %struct.TYPE_15__* %81, null
  br i1 %82, label %83, label %153

83:                                               ; preds = %76
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @r_debug_set_arch(%struct.TYPE_19__* %86, i32 %93, i32 %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @r_config_get_i(i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %147

102:                                              ; preds = %83
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = icmp ne %struct.TYPE_16__* %107, null
  br i1 %108, label %109, label %146

109:                                              ; preds = %102
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i8* (%struct.TYPE_19__*)*, i8* (%struct.TYPE_19__*)** %115, align 8
  %117 = icmp ne i8* (%struct.TYPE_19__*)* %116, null
  br i1 %117, label %118, label %146

118:                                              ; preds = %109
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i8* (%struct.TYPE_19__*)*, i8* (%struct.TYPE_19__*)** %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = call i8* %125(%struct.TYPE_19__* %128)
  store i8* %129, i8** %12, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @r_reg_set_profile_string(i32 %134, i8* %135)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = call i32 @r_reg_set_profile_string(i32 %141, i8* %142)
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @free(i8* %144)
  br label %146

146:                                              ; preds = %118, %109, %102
  br label %152

147:                                              ; preds = %83
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = call i32 @r_anal_set_reg_profile(%struct.TYPE_13__* %150)
  br label %152

152:                                              ; preds = %147, %146
  br label %153

153:                                              ; preds = %152, %76, %71, %66
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %155 = call i32 @r_core_anal_cc_init(%struct.TYPE_17__* %154)
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @r_config_get(i32 %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %159, i8** %13, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i8* @r_config_get(i32 %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i8* %163, i8** %14, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @r_config_get(i32 %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i8* %167, i8** %15, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = icmp ne %struct.TYPE_13__* %170, null
  br i1 %171, label %172, label %224

172:                                              ; preds = %153
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i8*, i8** %14, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i8*, i8** %15, align 8
  %181 = load i8*, i8** %13, align 8
  %182 = call i32 @r_syscall_setup(i32 %177, i8* %178, i32 %179, i8* %180, i8* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184, %172
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i8*, i8** %14, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @__setsegoff(i32 %188, i8* %189, i32 %194)
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %197, align 8
  %199 = icmp ne %struct.TYPE_19__* %198, null
  br i1 %199, label %200, label %223

200:                                              ; preds = %185
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i8*, i8** %14, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @r_bp_use(i32 %205, i8* %206, i32 %211)
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @r_bp_size(i32 %220)
  %222 = call i32 @r_config_set_i(i32 %215, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %200, %185
  br label %224

224:                                              ; preds = %223, %153
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %226, align 8
  %228 = load i32, i32* @R_ANAL_ARCHINFO_ALIGN, align 4
  %229 = call i32 @r_anal_archinfo(%struct.TYPE_13__* %227, i32 %228)
  store i32 %229, i32* %16, align 4
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %16, align 4
  %234 = icmp ne i32 %233, -1
  br i1 %234, label %235, label %237

235:                                              ; preds = %224
  %236 = load i32, i32* %16, align 4
  br label %238

237:                                              ; preds = %224
  br label %238

238:                                              ; preds = %237, %235
  %239 = phi i32 [ %236, %235 ], [ 0, %237 ]
  %240 = call i32 @r_config_set_i(i32 %232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* %8, align 4
  store i32 %241, i32* %3, align 4
  br label %242

242:                                              ; preds = %238, %23
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_asm_set_bits(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @r_anal_set_bits(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @r_debug_set_arch(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @r_reg_set_profile_string(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_anal_set_reg_profile(%struct.TYPE_13__*) #1

declare dso_local i32 @r_core_anal_cc_init(%struct.TYPE_17__*) #1

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @r_syscall_setup(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @__setsegoff(i32, i8*, i32) #1

declare dso_local i32 @r_bp_use(i32, i8*, i32) #1

declare dso_local i32 @r_config_set_i(i32, i8*, i32) #1

declare dso_local i32 @r_bp_size(i32) #1

declare dso_local i32 @r_anal_archinfo(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
