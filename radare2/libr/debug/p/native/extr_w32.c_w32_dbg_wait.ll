; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32_dbg_wait.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32_dbg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32 }

@R_DEBUG_REASON_UNKNOWN = common dso_local global i32 0, align 4
@w32_dbg_wait.exited_already = internal global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"w32_dbg_wait/WaitForDebugEvent\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"(%d) created process (%d:%p)\0A\00", align 1
@R_DEBUG_REASON_NEW_PID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"(%d) Process %d exited with exit code %d\0A\00", align 1
@R_DEBUG_REASON_EXIT_PID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@R_DEBUG_REASON_NEW_TID = common dso_local global i32 0, align 4
@lstThreadPtr = common dso_local global %struct.TYPE_22__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@R_DEBUG_REASON_EXIT_TID = common dso_local global i32 0, align 4
@R_DEBUG_REASON_NEW_LIB = common dso_local global i32 0, align 4
@lstLibPtr = common dso_local global %struct.TYPE_23__* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"not cached\00", align 1
@R_DEBUG_REASON_EXIT_LIB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"(%d) Debug string\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"(%d) RIP event\0A\00", align 1
@R_DEBUG_REASON_BREAKPOINT = common dso_local global i32 0, align 4
@R_DEBUG_REASON_STEP = common dso_local global i32 0, align 4
@R_DEBUG_REASON_TRAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"(%d) unknown event: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w32_dbg_wait(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %12 = load i32, i32* @R_DEBUG_REASON_UNKNOWN, align 4
  store i32 %12, i32* %11, align 4
  br label %13

13:                                               ; preds = %220, %2
  %14 = load i32, i32* @w32_dbg_wait.exited_already, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %225

18:                                               ; preds = %13
  %19 = call i32 @memset(%struct.TYPE_24__* %6, i32 0, i32 64)
  %20 = load i32, i32* @INFINITE, align 4
  %21 = call i64 @WaitForDebugEvent(%struct.TYPE_24__* %6, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @r_sys_perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %225

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %215 [
    i32 138, label %39
    i32 133, label %56
    i32 137, label %70
    i32 132, label %88
    i32 131, label %125
    i32 128, label %149
    i32 130, label %177
    i32 129, label %185
    i32 135, label %193
  ]

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @w32_h2t(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i32, i32, ...) @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %45, i32 %49)
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @r_debug_native_continue(%struct.TYPE_21__* %51, i32 %52, i32 %53, i32 -1)
  store i32 1, i32* %8, align 4
  %55 = load i32, i32* @R_DEBUG_REASON_NEW_PID, align 4
  store i32 %55, i32* %11, align 4
  br label %219

56:                                               ; preds = %25
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i8*, i32, ...) @r_cons_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %60, i32 %65)
  %67 = call i32 (...) @r_cons_flush()
  store i32 0, i32* %8, align 4
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* @w32_dbg_wait.exited_already, align 4
  %69 = load i32, i32* @R_DEBUG_REASON_EXIT_PID, align 4
  store i32 %69, i32* %11, align 4
  br label %219

70:                                               ; preds = %25
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FALSE, align 4
  %86 = call i32 @r_debug_lstThreadAdd(i32 %71, i32 %72, i32 %76, i32 %80, i32 %84, i32 %85)
  %87 = load i32, i32* @R_DEBUG_REASON_NEW_TID, align 4
  store i32 %87, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %219

88:                                               ; preds = %25
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @r_debug_findthread(i32 %89, i32 %90)
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %93, %struct.TYPE_22__** @lstThreadPtr, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** @lstThreadPtr, align 8
  %95 = icmp ne %struct.TYPE_22__* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %88
  %97 = load i32, i32* @TRUE, align 4
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** @lstThreadPtr, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** @lstThreadPtr, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %123

106:                                              ; preds = %88
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %7, align 4
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TRUE, align 4
  %122 = call i32 @r_debug_lstThreadAdd(i32 %107, i32 %108, i32 %112, i32 %116, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %106, %96
  store i32 0, i32* %8, align 4
  %124 = load i32, i32* @R_DEBUG_REASON_EXIT_TID, align 4
  store i32 %124, i32* %11, align 4
  br label %219

125:                                              ; preds = %25
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @get_file_name_from_handle(i32 %129)
  store i8* %130, i8** %10, align 8
  %131 = load i32, i32* %5, align 4
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 @r_debug_lstLibAdd(i32 %131, i32 %135, i32 %139, i8* %140)
  %142 = load i8*, i8** %10, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %125
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @free(i8* %145)
  br label %147

147:                                              ; preds = %144, %125
  store i32 0, i32* %8, align 4
  %148 = load i32, i32* @R_DEBUG_REASON_NEW_LIB, align 4
  store i32 %148, i32* %11, align 4
  br label %219

149:                                              ; preds = %25
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @r_debug_findlib(i32 %153)
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %156, %struct.TYPE_23__** @lstLibPtr, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** @lstLibPtr, align 8
  %158 = icmp ne %struct.TYPE_23__* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %149
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** @lstLibPtr, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  store i32 -1, i32* %161, align 4
  br label %175

162:                                              ; preds = %149
  %163 = load i32, i32* %5, align 4
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @r_debug_lstLibAdd(i32 %163, i32 %167, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %169 = load i8*, i8** %10, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %162
  %172 = load i8*, i8** %10, align 8
  %173 = call i32 @free(i8* %172)
  br label %174

174:                                              ; preds = %171, %162
  br label %175

175:                                              ; preds = %174, %159
  store i32 0, i32* %8, align 4
  %176 = load i32, i32* @R_DEBUG_REASON_EXIT_LIB, align 4
  store i32 %176, i32* %11, align 4
  br label %219

177:                                              ; preds = %25
  %178 = load i32, i32* %5, align 4
  %179 = call i32 (i8*, i32, ...) @r_cons_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  %180 = call i32 (...) @r_cons_flush()
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @r_debug_native_continue(%struct.TYPE_21__* %181, i32 %182, i32 %183, i32 -1)
  store i32 1, i32* %8, align 4
  br label %219

185:                                              ; preds = %25
  %186 = load i32, i32* %5, align 4
  %187 = call i32 (i8*, i32, ...) @r_cons_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %186)
  %188 = call i32 (...) @r_cons_flush()
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @r_debug_native_continue(%struct.TYPE_21__* %189, i32 %190, i32 %191, i32 -1)
  store i32 1, i32* %8, align 4
  br label %219

193:                                              ; preds = %25
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  switch i32 %198, label %203 [
    i32 136, label %199
    i32 134, label %201
  ]

199:                                              ; preds = %193
  %200 = load i32, i32* @R_DEBUG_REASON_BREAKPOINT, align 4
  store i32 %200, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %214

201:                                              ; preds = %193
  %202 = load i32, i32* @R_DEBUG_REASON_STEP, align 4
  store i32 %202, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %214

203:                                              ; preds = %193
  %204 = call i32 @debug_exception_event(%struct.TYPE_24__* %6)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* @R_DEBUG_REASON_TRAP, align 4
  store i32 %207, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %213

208:                                              ; preds = %203
  store i32 1, i32* %8, align 4
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @r_debug_native_continue(%struct.TYPE_21__* %209, i32 %210, i32 %211, i32 -1)
  br label %213

213:                                              ; preds = %208, %206
  br label %214

214:                                              ; preds = %213, %201, %199
  br label %219

215:                                              ; preds = %25
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %9, align 4
  %218 = call i32 (i8*, i32, i32, ...) @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %216, i32 %217)
  store i32 -1, i32* %3, align 4
  br label %225

219:                                              ; preds = %214, %185, %177, %175, %147, %123, %70, %56, %39
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %13, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %11, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %223, %215, %23, %17
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i64 @WaitForDebugEvent(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i32 @eprintf(i8*, i32, i32, ...) #1

declare dso_local i32 @w32_h2t(i32) #1

declare dso_local i32 @r_debug_native_continue(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @r_cons_printf(i8*, i32, ...) #1

declare dso_local i32 @r_cons_flush(...) #1

declare dso_local i32 @r_debug_lstThreadAdd(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @r_debug_findthread(i32, i32) #1

declare dso_local i8* @get_file_name_from_handle(i32) #1

declare dso_local i32 @r_debug_lstLibAdd(i32, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_debug_findlib(i32) #1

declare dso_local i32 @debug_exception_event(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
