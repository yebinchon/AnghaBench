; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_subprogram.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_subprogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i32 }
%struct.symt = type { i32 }
%struct.TYPE_44__ = type { i32, i64, i32, %struct.symt**, i32 }
%struct.TYPE_45__ = type { %struct.symt*, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32 }
%struct.attribute = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i64, i32 }
%struct.symt_function_signature = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_46__*, %struct.TYPE_44__*, %struct.TYPE_47__, i64 }
%struct.TYPE_46__ = type { %struct.symt }
%struct.TYPE_47__ = type { i64, i64, i32 }
%struct.vector = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@DW_AT_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"No name for function... dropping function\0A\00", align 1
@DW_AT_inline = common dso_local global i32 0, align 4
@DW_INL_not_inlined = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Function %s declared as inlined (%ld)... skipping\0A\00", align 1
@DW_AT_declaration = common dso_local global i32 0, align 4
@attr_direct = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"cannot get range for %s\0A\00", align 1
@sc_void = common dso_local global i64 0, align 8
@CV_CALL_FAR_C = common dso_local global i32 0, align 4
@DW_AT_frame_base = common dso_local global i32 0, align 4
@loc_regrel = common dso_local global i64 0, align 8
@dbghelp_current_cpu = common dso_local global %struct.TYPE_42__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Unhandled Tag type 0x%lx at %s, for %s\0A\00", align 1
@loc_user = common dso_local global i64 0, align 8
@SymTagCustom = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.TYPE_44__*, %struct.TYPE_45__*)* @dwarf2_parse_subprogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @dwarf2_parse_subprogram(%struct.TYPE_44__* %0, %struct.TYPE_45__* %1) #0 {
  %3 = alloca %struct.symt*, align 8
  %4 = alloca %struct.TYPE_44__*, align 8
  %5 = alloca %struct.TYPE_45__*, align 8
  %6 = alloca %struct.attribute, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.attribute, align 8
  %10 = alloca %struct.attribute, align 8
  %11 = alloca %struct.symt*, align 8
  %12 = alloca %struct.symt_function_signature*, align 8
  %13 = alloca %struct.TYPE_43__, align 8
  %14 = alloca %struct.vector*, align 8
  %15 = alloca %struct.TYPE_45__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %4, align 8
  store %struct.TYPE_45__* %1, %struct.TYPE_45__** %5, align 8
  %17 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %17, i32 0, i32 0
  %19 = load %struct.symt*, %struct.symt** %18, align 8
  %20 = icmp ne %struct.symt* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 0
  %24 = load %struct.symt*, %struct.symt** %23, align 8
  store %struct.symt* %24, %struct.symt** %3, align 8
  br label %268

25:                                               ; preds = %2
  %26 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %27 = call i32 @dwarf2_debug_ctx(%struct.TYPE_44__* %26)
  %28 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %29 = call i64 @dwarf2_debug_di(%struct.TYPE_45__* %28)
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %29)
  %31 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %32 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %33 = load i32, i32* @DW_AT_name, align 4
  %34 = call i64 @dwarf2_find_attribute(%struct.TYPE_44__* %31, %struct.TYPE_45__* %32, i32 %33, %struct.attribute* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  %37 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store %struct.symt* null, %struct.symt** %3, align 8
  br label %268

38:                                               ; preds = %25
  %39 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %40 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %41 = load i32, i32* @DW_AT_inline, align 4
  %42 = call i64 @dwarf2_find_attribute(%struct.TYPE_44__* %39, %struct.TYPE_45__* %40, i32 %41, %struct.attribute* %10)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.attribute, %struct.attribute* %10, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DW_INL_not_inlined, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @debugstr_a(i32 %53)
  %55 = getelementptr inbounds %struct.attribute, %struct.attribute* %10, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %54, i64 %57)
  store %struct.symt* null, %struct.symt** %3, align 8
  br label %268

59:                                               ; preds = %44, %38
  %60 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %61 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %62 = load i32, i32* @DW_AT_declaration, align 4
  %63 = call i64 @dwarf2_find_attribute(%struct.TYPE_44__* %60, %struct.TYPE_45__* %61, i32 %62, %struct.attribute* %9)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @attr_direct, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store %struct.symt* null, %struct.symt** %3, align 8
  br label %268

76:                                               ; preds = %70, %65, %59
  %77 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %78 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %79 = call i32 @dwarf2_read_range(%struct.TYPE_44__* %77, %struct.TYPE_45__* %78, i64* %7, i64* %8)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  store %struct.symt* null, %struct.symt** %3, align 8
  br label %268

86:                                               ; preds = %76
  %87 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %89, %90
  %92 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @elf_is_in_thunk_area(i64 %91, i32 %94)
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  store %struct.symt* null, %struct.symt** %3, align 8
  br label %268

98:                                               ; preds = %86
  %99 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %100 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %101 = call %struct.symt* @dwarf2_lookup_type(%struct.TYPE_44__* %99, %struct.TYPE_45__* %100)
  store %struct.symt* %101, %struct.symt** %11, align 8
  %102 = icmp ne %struct.symt* %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %104, i32 0, i32 3
  %106 = load %struct.symt**, %struct.symt*** %105, align 8
  %107 = load i64, i64* @sc_void, align 8
  %108 = getelementptr inbounds %struct.symt*, %struct.symt** %106, i64 %107
  %109 = load %struct.symt*, %struct.symt** %108, align 8
  store %struct.symt* %109, %struct.symt** %11, align 8
  %110 = load %struct.symt*, %struct.symt** %11, align 8
  %111 = call i32 @assert(%struct.symt* %110)
  br label %112

112:                                              ; preds = %103, %98
  %113 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.symt*, %struct.symt** %11, align 8
  %117 = load i32, i32* @CV_CALL_FAR_C, align 4
  %118 = call %struct.symt_function_signature* @symt_new_function_signature(i32 %115, %struct.symt* %116, i32 %117)
  store %struct.symt_function_signature* %118, %struct.symt_function_signature** %12, align 8
  %119 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %126 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %127 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dwarf2_get_cpp_name(%struct.TYPE_44__* %125, %struct.TYPE_45__* %126, i32 %129)
  %131 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %133, %134
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* %7, align 8
  %138 = sub i64 %136, %137
  %139 = load %struct.symt_function_signature*, %struct.symt_function_signature** %12, align 8
  %140 = getelementptr inbounds %struct.symt_function_signature, %struct.symt_function_signature* %139, i32 0, i32 0
  %141 = call %struct.TYPE_46__* @symt_new_function(i32 %121, i32 %124, i32 %130, i64 %135, i64 %138, i32* %140)
  %142 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 0
  store %struct.TYPE_46__* %141, %struct.TYPE_46__** %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 0
  %144 = load %struct.TYPE_46__*, %struct.TYPE_46__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %146, i32 0, i32 0
  store %struct.symt* %145, %struct.symt** %147, align 8
  %148 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 1
  store %struct.TYPE_44__* %148, %struct.TYPE_44__** %149, align 8
  %150 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %151 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %152 = load i32, i32* @DW_AT_frame_base, align 4
  %153 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 2
  %154 = call i32 @dwarf2_compute_location_attr(%struct.TYPE_44__* %150, %struct.TYPE_45__* %151, i32 %152, %struct.TYPE_47__* %153, i32* null)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %112
  %157 = load i64, i64* @loc_regrel, align 8
  %158 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_42__*, %struct.TYPE_42__** @dbghelp_current_cpu, align 8
  %161 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %165, i32 0, i32 1
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %156, %112
  %168 = load i64, i64* @FALSE, align 8
  %169 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 3
  store i64 %168, i64* %169, align 8
  %170 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %171 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %172 = call %struct.vector* @dwarf2_get_di_children(%struct.TYPE_44__* %170, %struct.TYPE_45__* %171)
  store %struct.vector* %172, %struct.vector** %14, align 8
  %173 = load %struct.vector*, %struct.vector** %14, align 8
  %174 = icmp ne %struct.vector* %173, null
  br i1 %174, label %175, label %233

175:                                              ; preds = %167
  store i32 0, i32* %16, align 4
  br label %176

176:                                              ; preds = %229, %175
  %177 = load i32, i32* %16, align 4
  %178 = load %struct.vector*, %struct.vector** %14, align 8
  %179 = call i32 @vector_length(%struct.vector* %178)
  %180 = icmp ult i32 %177, %179
  br i1 %180, label %181, label %232

181:                                              ; preds = %176
  %182 = load %struct.vector*, %struct.vector** %14, align 8
  %183 = load i32, i32* %16, align 4
  %184 = call i64 @vector_at(%struct.vector* %182, i32 %183)
  %185 = inttoptr i64 %184 to %struct.TYPE_45__**
  %186 = load %struct.TYPE_45__*, %struct.TYPE_45__** %185, align 8
  store %struct.TYPE_45__* %186, %struct.TYPE_45__** %15, align 8
  %187 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_41__*, %struct.TYPE_41__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  switch i32 %191, label %217 [
    i32 128, label %192
    i32 140, label %192
    i32 137, label %195
    i32 139, label %198
    i32 136, label %201
    i32 142, label %206
    i32 134, label %211
    i32 138, label %212
    i32 143, label %215
    i32 135, label %215
    i32 130, label %215
    i32 141, label %215
    i32 131, label %215
    i32 129, label %216
    i32 133, label %216
    i32 132, label %216
    i32 146, label %216
    i32 144, label %216
    i32 145, label %216
  ]

192:                                              ; preds = %181, %181
  %193 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %194 = call i32 @dwarf2_parse_variable(%struct.TYPE_43__* %13, i32* null, %struct.TYPE_45__* %193)
  br label %228

195:                                              ; preds = %181
  %196 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %197 = call i32 @dwarf2_parse_subprogram_block(%struct.TYPE_43__* %13, i32* null, %struct.TYPE_45__* %196)
  br label %228

198:                                              ; preds = %181
  %199 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %200 = call i32 @dwarf2_parse_inlined_subroutine(%struct.TYPE_43__* %13, i32* null, %struct.TYPE_45__* %199)
  br label %228

201:                                              ; preds = %181
  %202 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 1
  %203 = load %struct.TYPE_44__*, %struct.TYPE_44__** %202, align 8
  %204 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %205 = call i32 @dwarf2_parse_pointer_type(%struct.TYPE_44__* %203, %struct.TYPE_45__* %204)
  br label %228

206:                                              ; preds = %181
  %207 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 1
  %208 = load %struct.TYPE_44__*, %struct.TYPE_44__** %207, align 8
  %209 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %210 = call i32 @dwarf2_parse_const_type(%struct.TYPE_44__* %208, %struct.TYPE_45__* %209)
  br label %228

211:                                              ; preds = %181
  br label %228

212:                                              ; preds = %181
  %213 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %214 = call i32 @dwarf2_parse_subprogram_label(%struct.TYPE_43__* %13, %struct.TYPE_45__* %213)
  br label %228

215:                                              ; preds = %181, %181, %181, %181, %181
  br label %228

216:                                              ; preds = %181, %181, %181, %181, %181, %181
  br label %228

217:                                              ; preds = %181
  %218 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_41__*, %struct.TYPE_41__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %224 = call i32 @dwarf2_debug_ctx(%struct.TYPE_44__* %223)
  %225 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %226 = call i64 @dwarf2_debug_di(%struct.TYPE_45__* %225)
  %227 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %222, i32 %224, i64 %226)
  br label %228

228:                                              ; preds = %217, %216, %215, %212, %211, %206, %201, %198, %195, %192
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %16, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %16, align 4
  br label %176

232:                                              ; preds = %176
  br label %233

233:                                              ; preds = %232, %167
  %234 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @loc_user, align 8
  %242 = icmp sge i64 %240, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %237, %233
  %244 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 0
  %248 = load %struct.TYPE_46__*, %struct.TYPE_46__** %247, align 8
  %249 = load i32, i32* @SymTagCustom, align 4
  %250 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 2
  %251 = call i32 @symt_add_function_point(i32 %246, %struct.TYPE_46__* %248, i32 %249, %struct.TYPE_47__* %250, i32* null)
  br label %252

252:                                              ; preds = %243, %237
  %253 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 0
  %254 = load %struct.TYPE_46__*, %struct.TYPE_46__** %253, align 8
  %255 = icmp ne %struct.TYPE_46__* %254, null
  br i1 %255, label %256, label %264

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 1
  %258 = load %struct.TYPE_44__*, %struct.TYPE_44__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 0
  %262 = load %struct.TYPE_46__*, %struct.TYPE_46__** %261, align 8
  %263 = call i32 @symt_normalize_function(i32 %260, %struct.TYPE_46__* %262)
  br label %264

264:                                              ; preds = %256, %252
  %265 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %265, i32 0, i32 0
  %267 = load %struct.symt*, %struct.symt** %266, align 8
  store %struct.symt* %267, %struct.symt** %3, align 8
  br label %268

268:                                              ; preds = %264, %97, %81, %75, %50, %36, %21
  %269 = load %struct.symt*, %struct.symt** %3, align 8
  ret %struct.symt* %269
}

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_44__*) #1

declare dso_local i64 @dwarf2_debug_di(%struct.TYPE_45__*) #1

declare dso_local i64 @dwarf2_find_attribute(%struct.TYPE_44__*, %struct.TYPE_45__*, i32, %struct.attribute*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @dwarf2_read_range(%struct.TYPE_44__*, %struct.TYPE_45__*, i64*, i64*) #1

declare dso_local i64 @elf_is_in_thunk_area(i64, i32) #1

declare dso_local %struct.symt* @dwarf2_lookup_type(%struct.TYPE_44__*, %struct.TYPE_45__*) #1

declare dso_local i32 @assert(%struct.symt*) #1

declare dso_local %struct.symt_function_signature* @symt_new_function_signature(i32, %struct.symt*, i32) #1

declare dso_local %struct.TYPE_46__* @symt_new_function(i32, i32, i32, i64, i64, i32*) #1

declare dso_local i32 @dwarf2_get_cpp_name(%struct.TYPE_44__*, %struct.TYPE_45__*, i32) #1

declare dso_local i32 @dwarf2_compute_location_attr(%struct.TYPE_44__*, %struct.TYPE_45__*, i32, %struct.TYPE_47__*, i32*) #1

declare dso_local %struct.vector* @dwarf2_get_di_children(%struct.TYPE_44__*, %struct.TYPE_45__*) #1

declare dso_local i32 @vector_length(%struct.vector*) #1

declare dso_local i64 @vector_at(%struct.vector*, i32) #1

declare dso_local i32 @dwarf2_parse_variable(%struct.TYPE_43__*, i32*, %struct.TYPE_45__*) #1

declare dso_local i32 @dwarf2_parse_subprogram_block(%struct.TYPE_43__*, i32*, %struct.TYPE_45__*) #1

declare dso_local i32 @dwarf2_parse_inlined_subroutine(%struct.TYPE_43__*, i32*, %struct.TYPE_45__*) #1

declare dso_local i32 @dwarf2_parse_pointer_type(%struct.TYPE_44__*, %struct.TYPE_45__*) #1

declare dso_local i32 @dwarf2_parse_const_type(%struct.TYPE_44__*, %struct.TYPE_45__*) #1

declare dso_local i32 @dwarf2_parse_subprogram_label(%struct.TYPE_43__*, %struct.TYPE_45__*) #1

declare dso_local i32 @FIXME(i8*, i32, i32, i64) #1

declare dso_local i32 @symt_add_function_point(i32, %struct.TYPE_46__*, i32, %struct.TYPE_47__*, i32*) #1

declare dso_local i32 @symt_normalize_function(i32, %struct.TYPE_46__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
