; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_virtual_unwind.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_virtual_unwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (i64, i32)*, i32 (i32)* }
%struct.cpu_stack_walk = type { i32 }
%struct.module_pair = type { %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_19__, %struct.module_format** }
%struct.TYPE_19__ = type { i64 }
%struct.module_format = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i8*, i32 }
%struct.TYPE_20__ = type { i8*, i32, i64 }
%struct.frame_info = type { i64, i64, %struct.TYPE_18__, i32, i64, i32, i32 }
%struct.TYPE_18__ = type { i64* }
%struct.TYPE_24__ = type { i8*, i8*, i32 }

@DMT_UNKNOWN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DFI_DWARF = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Couldn't find information for %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"function %lx/%lx code_align %lu data_align %ld retaddr %s\0A\00", align 1
@dbghelp_current_cpu = common dso_local global %struct.TYPE_17__* null, align 8
@RULE_UNSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf2_virtual_unwind(%struct.cpu_stack_walk* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_stack_walk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.module_pair, align 8
  %11 = alloca %struct.frame_info, align 8
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca %struct.module_format*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.cpu_stack_walk* %0, %struct.cpu_stack_walk** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %18 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %19 = getelementptr inbounds %struct.cpu_stack_walk, %struct.cpu_stack_walk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @process_find_by_handle(i32 %20)
  %22 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @DMT_UNKNOWN, align 4
  %29 = call i32 @module_find_by_addr(i32 %26, i64 %27, i32 %28)
  %30 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call i32 @module_get_debug(%struct.module_pair* %10)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %24, %4
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %5, align 4
  br label %222

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load %struct.module_format**, %struct.module_format*** %40, align 8
  %42 = load i64, i64* @DFI_DWARF, align 8
  %43 = getelementptr inbounds %struct.module_format*, %struct.module_format** %41, i64 %42
  %44 = load %struct.module_format*, %struct.module_format** %43, align 8
  store %struct.module_format* %44, %struct.module_format** %14, align 8
  %45 = load %struct.module_format*, %struct.module_format** %14, align 8
  %46 = icmp ne %struct.module_format* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %5, align 4
  br label %222

49:                                               ; preds = %37
  %50 = call i32 @memset(%struct.frame_info* %11, i32 0, i32 48)
  %51 = load %struct.module_format*, %struct.module_format** %14, align 8
  %52 = getelementptr inbounds %struct.module_format, %struct.module_format* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.module_format*, %struct.module_format** %14, align 8
  %62 = getelementptr inbounds %struct.module_format, %struct.module_format* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %60, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  store i8* %69, i8** %70, align 8
  %71 = load %struct.module_format*, %struct.module_format** %14, align 8
  %72 = getelementptr inbounds %struct.module_format, %struct.module_format* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.module_format*, %struct.module_format** %14, align 8
  %84 = getelementptr inbounds %struct.module_format, %struct.module_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %82, %89
  %91 = load %struct.module_format*, %struct.module_format** %14, align 8
  %92 = getelementptr inbounds %struct.module_format, %struct.module_format* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = sub nsw i64 %90, %98
  store i64 %99, i64* %16, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load i32, i32* @TRUE, align 4
  %105 = call i32 @dwarf2_get_cie(i64 %100, %struct.TYPE_16__* %102, i64 %103, %struct.TYPE_24__* %13, %struct.TYPE_24__* %12, %struct.frame_info* %11, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %151, label %107

107:                                              ; preds = %49
  %108 = load %struct.module_format*, %struct.module_format** %14, align 8
  %109 = getelementptr inbounds %struct.module_format, %struct.module_format* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.module_format*, %struct.module_format** %14, align 8
  %119 = getelementptr inbounds %struct.module_format, %struct.module_format* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %117, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  store i8* %126, i8** %127, align 8
  %128 = load %struct.module_format*, %struct.module_format** %14, align 8
  %129 = getelementptr inbounds %struct.module_format, %struct.module_format* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %7, align 8
  %140 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load i32, i32* @FALSE, align 4
  %144 = call i32 @dwarf2_get_cie(i64 %139, %struct.TYPE_16__* %141, i64 %142, %struct.TYPE_24__* %13, %struct.TYPE_24__* %12, %struct.frame_info* %11, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %107
  %147 = load i64, i64* %7, align 8
  %148 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %147)
  %149 = load i32, i32* @FALSE, align 4
  store i32 %149, i32* %5, align 4
  br label %222

150:                                              ; preds = %107
  br label %151

151:                                              ; preds = %150, %49
  %152 = load i64, i64* %7, align 8
  %153 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %11, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %11, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %11, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dbghelp_current_cpu, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i32 (i32)*, i32 (i32)** %160, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dbghelp_current_cpu, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32 (i64, i32)*, i32 (i64, i32)** %163, align 8
  %165 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %11, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @TRUE, align 4
  %168 = call i32 %164(i64 %166, i32 %167)
  %169 = call i32 %161(i32 %168)
  %170 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %152, i64 %154, i32 %156, i32 %158, i32 %169)
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %11, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %171, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %151
  %176 = load i32, i32* @FALSE, align 4
  store i32 %176, i32* %5, align 4
  br label %222

177:                                              ; preds = %151
  %178 = load i64, i64* %7, align 8
  %179 = call i32 @execute_cfa_instructions(%struct.TYPE_24__* %12, i64 %178, %struct.frame_info* %11)
  %180 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %11, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = call i64 @dwarf2_leb128_as_unsigned(%struct.TYPE_24__* %13)
  store i64 %184, i64* %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i64, i64* %17, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %15, align 8
  br label %190

189:                                              ; preds = %177
  store i8* null, i8** %15, align 8
  br label %190

190:                                              ; preds = %189, %183
  %191 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %11, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @dwarf2_parse_augmentation_ptr(%struct.TYPE_24__* %13, i32 %192)
  %194 = load i8*, i8** %15, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load i8*, i8** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  store i8* %197, i8** %198, align 8
  br label %199

199:                                              ; preds = %196, %190
  %200 = load i64, i64* %7, align 8
  %201 = call i32 @execute_cfa_instructions(%struct.TYPE_24__* %13, i64 %200, %struct.frame_info* %11)
  %202 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %11, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %11, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @RULE_UNSET, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %199
  %212 = load i32, i32* @FALSE, align 4
  store i32 %212, i32* %5, align 4
  br label %222

213:                                              ; preds = %199
  %214 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %217 = load i32*, i32** %8, align 8
  %218 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %11, i32 0, i32 2
  %219 = load i64*, i64** %9, align 8
  %220 = call i32 @apply_frame_state(%struct.TYPE_16__* %215, %struct.cpu_stack_walk* %216, i32* %217, %struct.TYPE_18__* %218, i64* %219)
  %221 = load i32, i32* @TRUE, align 4
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %213, %211, %175, %146, %47, %35
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local i32 @process_find_by_handle(i32) #1

declare dso_local i32 @module_find_by_addr(i32, i64, i32) #1

declare dso_local i32 @module_get_debug(%struct.module_pair*) #1

declare dso_local i32 @memset(%struct.frame_info*, i32, i32) #1

declare dso_local i32 @dwarf2_get_cie(i64, %struct.TYPE_16__*, i64, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.frame_info*, i32) #1

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i32 @execute_cfa_instructions(%struct.TYPE_24__*, i64, %struct.frame_info*) #1

declare dso_local i64 @dwarf2_leb128_as_unsigned(%struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_augmentation_ptr(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @apply_frame_state(%struct.TYPE_16__*, %struct.cpu_stack_walk*, i32*, %struct.TYPE_18__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
