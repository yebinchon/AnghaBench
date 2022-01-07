; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_19__, %struct.module_format** }
%struct.TYPE_19__ = type { i8, i8*, i8*, i8*, i8*, i32, i32 }
%struct.module_format = type { %struct.TYPE_20__, %struct.module*, i32, i32 }
%struct.TYPE_20__ = type { %struct.dwarf2_module_info_s* }
%struct.dwarf2_module_info_s = type { i32, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i64 }
%struct.elf_thunk_area = type { i32 }
%struct.image_file_map = type { i64, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64, i64 }
%struct.image_section_map = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@section_max = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c".eh_frame\00", align 1
@section_debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c".debug_info\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c".zdebug_info\00", align 1
@section_abbrev = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c".debug_abbrev\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c".zdebug_abbrev\00", align 1
@section_string = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c".debug_str\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c".zdebug_str\00", align 1
@section_line = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c".debug_line\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c".zdebug_line\00", align 1
@section_ranges = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c".debug_ranges\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c".zdebug_ranges\00", align 1
@IMAGE_NO_MAP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@DMT_ELF = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [35 x i8] c"Loading Dwarf2 information for %s\0A\00", align 1
@dwarf2_module_remove = common dso_local global i32 0, align 4
@dwarf2_location_compute = common dso_local global i32 0, align 4
@DFI_DWARF = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c".debug_loc\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c".zdebug_loc\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c".debug_frame\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c".zdebug_frame\00", align 1
@SymDia = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dwarf2_parse(%struct.module* %0, i64 %1, %struct.elf_thunk_area* %2, %struct.image_file_map* %3) #0 {
  %5 = alloca %struct.module*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.elf_thunk_area*, align 8
  %8 = alloca %struct.image_file_map*, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.image_section_map, align 8
  %14 = alloca %struct.image_section_map, align 8
  %15 = alloca %struct.image_section_map, align 8
  %16 = alloca %struct.image_section_map, align 8
  %17 = alloca %struct.image_section_map, align 8
  %18 = alloca %struct.image_section_map, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.module_format*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.elf_thunk_area* %2, %struct.elf_thunk_area** %7, align 8
  store %struct.image_file_map* %3, %struct.image_file_map** %8, align 8
  %21 = load i32, i32* @section_max, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca %struct.TYPE_22__, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i8*, i8** @TRUE, align 8
  store i8* %25, i8** %19, align 8
  %26 = load %struct.image_file_map*, %struct.image_file_map** %8, align 8
  %27 = call i32 @dwarf2_init_section(%struct.TYPE_22__* %9, %struct.image_file_map* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* null, %struct.image_section_map* %18)
  %28 = load i64, i64* @section_debug, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %28
  %30 = load %struct.image_file_map*, %struct.image_file_map** %8, align 8
  %31 = call i32 @dwarf2_init_section(%struct.TYPE_22__* %29, %struct.image_file_map* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.image_section_map* %13)
  %32 = load i64, i64* @section_abbrev, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %32
  %34 = load %struct.image_file_map*, %struct.image_file_map** %8, align 8
  %35 = call i32 @dwarf2_init_section(%struct.TYPE_22__* %33, %struct.image_file_map* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.image_section_map* %15)
  %36 = load i64, i64* @section_string, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %36
  %38 = load %struct.image_file_map*, %struct.image_file_map** %8, align 8
  %39 = call i32 @dwarf2_init_section(%struct.TYPE_22__* %37, %struct.image_file_map* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), %struct.image_section_map* %14)
  %40 = load i64, i64* @section_line, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %40
  %42 = load %struct.image_file_map*, %struct.image_file_map** %8, align 8
  %43 = call i32 @dwarf2_init_section(%struct.TYPE_22__* %41, %struct.image_file_map* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct.image_section_map* %16)
  %44 = load i64, i64* @section_ranges, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %44
  %46 = load %struct.image_file_map*, %struct.image_file_map** %8, align 8
  %47 = call i32 @dwarf2_init_section(%struct.TYPE_22__* %45, %struct.image_file_map* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct.image_section_map* %17)
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IMAGE_NO_MAP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %51, %4
  %57 = load i64, i64* @section_debug, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 16
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i64, i64* @section_debug, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 16
  %67 = load i64, i64* @IMAGE_NO_MAP, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62, %56
  %70 = load i8*, i8** @FALSE, align 8
  store i8* %70, i8** %19, align 8
  br label %231

71:                                               ; preds = %62, %51
  %72 = load %struct.image_file_map*, %struct.image_file_map** %8, align 8
  %73 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DMT_ELF, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %13, i32 0, i32 0
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = icmp ne %struct.TYPE_18__* %79, null
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load %struct.image_file_map*, %struct.image_file_map** %8, align 8
  %83 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %13, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %86, %92
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %6, align 8
  br label %96

96:                                               ; preds = %81, %77, %71
  %97 = load %struct.module*, %struct.module** %5, align 8
  %98 = getelementptr inbounds %struct.module, %struct.module* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @debugstr_w(i32 %100)
  %102 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %101)
  %103 = load i64, i64* @section_debug, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 16
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store i64 %106, i64* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @section_debug, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %109, %113
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store i64 %114, i64* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = call i32 (...) @GetProcessHeap()
  %118 = call %struct.module_format* @HeapAlloc(i32 %117, i32 0, i32 80)
  store %struct.module_format* %118, %struct.module_format** %20, align 8
  %119 = load %struct.module_format*, %struct.module_format** %20, align 8
  %120 = icmp ne %struct.module_format* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %96
  %122 = load i8*, i8** @FALSE, align 8
  store i8* %122, i8** %19, align 8
  br label %231

123:                                              ; preds = %96
  %124 = load %struct.module*, %struct.module** %5, align 8
  %125 = load %struct.module_format*, %struct.module_format** %20, align 8
  %126 = getelementptr inbounds %struct.module_format, %struct.module_format* %125, i32 0, i32 1
  store %struct.module* %124, %struct.module** %126, align 8
  %127 = load i32, i32* @dwarf2_module_remove, align 4
  %128 = load %struct.module_format*, %struct.module_format** %20, align 8
  %129 = getelementptr inbounds %struct.module_format, %struct.module_format* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @dwarf2_location_compute, align 4
  %131 = load %struct.module_format*, %struct.module_format** %20, align 8
  %132 = getelementptr inbounds %struct.module_format, %struct.module_format* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.module_format*, %struct.module_format** %20, align 8
  %134 = getelementptr inbounds %struct.module_format, %struct.module_format* %133, i64 1
  %135 = bitcast %struct.module_format* %134 to %struct.dwarf2_module_info_s*
  %136 = load %struct.module_format*, %struct.module_format** %20, align 8
  %137 = getelementptr inbounds %struct.module_format, %struct.module_format* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  store %struct.dwarf2_module_info_s* %135, %struct.dwarf2_module_info_s** %138, align 8
  %139 = load %struct.module_format*, %struct.module_format** %20, align 8
  %140 = getelementptr inbounds %struct.module_format, %struct.module_format* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load %struct.dwarf2_module_info_s*, %struct.dwarf2_module_info_s** %141, align 8
  %143 = getelementptr inbounds %struct.dwarf2_module_info_s, %struct.dwarf2_module_info_s* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  %144 = load %struct.module_format*, %struct.module_format** %20, align 8
  %145 = load %struct.module_format*, %struct.module_format** %20, align 8
  %146 = getelementptr inbounds %struct.module_format, %struct.module_format* %145, i32 0, i32 1
  %147 = load %struct.module*, %struct.module** %146, align 8
  %148 = getelementptr inbounds %struct.module, %struct.module* %147, i32 0, i32 1
  %149 = load %struct.module_format**, %struct.module_format*** %148, align 8
  %150 = load i64, i64* @DFI_DWARF, align 8
  %151 = getelementptr inbounds %struct.module_format*, %struct.module_format** %149, i64 %150
  store %struct.module_format* %144, %struct.module_format** %151, align 8
  %152 = load %struct.module_format*, %struct.module_format** %20, align 8
  %153 = getelementptr inbounds %struct.module_format, %struct.module_format* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load %struct.dwarf2_module_info_s*, %struct.dwarf2_module_info_s** %154, align 8
  %156 = getelementptr inbounds %struct.dwarf2_module_info_s, %struct.dwarf2_module_info_s* %155, i32 0, i32 3
  %157 = load %struct.image_file_map*, %struct.image_file_map** %8, align 8
  %158 = call i32 @dwarf2_init_section(%struct.TYPE_22__* %156, %struct.image_file_map* %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), %struct.image_section_map* null)
  %159 = load %struct.module_format*, %struct.module_format** %20, align 8
  %160 = getelementptr inbounds %struct.module_format, %struct.module_format* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load %struct.dwarf2_module_info_s*, %struct.dwarf2_module_info_s** %161, align 8
  %163 = getelementptr inbounds %struct.dwarf2_module_info_s, %struct.dwarf2_module_info_s* %162, i32 0, i32 2
  %164 = load %struct.image_file_map*, %struct.image_file_map** %8, align 8
  %165 = call i32 @dwarf2_init_section(%struct.TYPE_22__* %163, %struct.image_file_map* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), %struct.image_section_map* null)
  %166 = load %struct.module_format*, %struct.module_format** %20, align 8
  %167 = getelementptr inbounds %struct.module_format, %struct.module_format* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load %struct.dwarf2_module_info_s*, %struct.dwarf2_module_info_s** %168, align 8
  %170 = getelementptr inbounds %struct.dwarf2_module_info_s, %struct.dwarf2_module_info_s* %169, i32 0, i32 1
  %171 = bitcast %struct.TYPE_22__* %170 to i8*
  %172 = bitcast %struct.TYPE_22__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %171, i8* align 8 %172, i64 16, i1 false)
  br label %173

173:                                              ; preds = %179, %123
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp slt i64 %175, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = load %struct.module_format*, %struct.module_format** %20, align 8
  %181 = getelementptr inbounds %struct.module_format, %struct.module_format* %180, i32 0, i32 1
  %182 = load %struct.module*, %struct.module** %181, align 8
  %183 = load %struct.elf_thunk_area*, %struct.elf_thunk_area** %7, align 8
  %184 = load i64, i64* %6, align 8
  %185 = call i32 @dwarf2_parse_compilation_unit(%struct.TYPE_22__* %24, %struct.module* %182, %struct.elf_thunk_area* %183, %struct.TYPE_21__* %12, i64 %184)
  br label %173

186:                                              ; preds = %173
  %187 = load i32, i32* @SymDia, align 4
  %188 = load %struct.module_format*, %struct.module_format** %20, align 8
  %189 = getelementptr inbounds %struct.module_format, %struct.module_format* %188, i32 0, i32 1
  %190 = load %struct.module*, %struct.module** %189, align 8
  %191 = getelementptr inbounds %struct.module, %struct.module* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 5
  store i32 %187, i32* %192, align 8
  %193 = load %struct.module_format*, %struct.module_format** %20, align 8
  %194 = getelementptr inbounds %struct.module_format, %struct.module_format* %193, i32 0, i32 1
  %195 = load %struct.module*, %struct.module** %194, align 8
  %196 = getelementptr inbounds %struct.module, %struct.module* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  store i8 68, i8* %197, align 8
  %198 = load i8*, i8** @TRUE, align 8
  %199 = load %struct.module_format*, %struct.module_format** %20, align 8
  %200 = getelementptr inbounds %struct.module_format, %struct.module_format* %199, i32 0, i32 1
  %201 = load %struct.module*, %struct.module** %200, align 8
  %202 = getelementptr inbounds %struct.module, %struct.module* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 4
  store i8* %198, i8** %203, align 8
  %204 = load i8*, i8** @TRUE, align 8
  %205 = load %struct.module_format*, %struct.module_format** %20, align 8
  %206 = getelementptr inbounds %struct.module_format, %struct.module_format* %205, i32 0, i32 1
  %207 = load %struct.module*, %struct.module** %206, align 8
  %208 = getelementptr inbounds %struct.module, %struct.module* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 3
  store i8* %204, i8** %209, align 8
  %210 = load i8*, i8** @TRUE, align 8
  %211 = load %struct.module_format*, %struct.module_format** %20, align 8
  %212 = getelementptr inbounds %struct.module_format, %struct.module_format* %211, i32 0, i32 1
  %213 = load %struct.module*, %struct.module** %212, align 8
  %214 = getelementptr inbounds %struct.module, %struct.module* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 2
  store i8* %210, i8** %215, align 8
  %216 = load i8*, i8** @TRUE, align 8
  %217 = load %struct.module_format*, %struct.module_format** %20, align 8
  %218 = getelementptr inbounds %struct.module_format, %struct.module_format* %217, i32 0, i32 1
  %219 = load %struct.module*, %struct.module** %218, align 8
  %220 = getelementptr inbounds %struct.module, %struct.module* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 1
  store i8* %216, i8** %221, align 8
  %222 = load %struct.image_file_map*, %struct.image_file_map** %8, align 8
  %223 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sdiv i32 %224, 8
  %226 = load %struct.module_format*, %struct.module_format** %20, align 8
  %227 = getelementptr inbounds %struct.module_format, %struct.module_format* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load %struct.dwarf2_module_info_s*, %struct.dwarf2_module_info_s** %228, align 8
  %230 = getelementptr inbounds %struct.dwarf2_module_info_s, %struct.dwarf2_module_info_s* %229, i32 0, i32 0
  store i32 %225, i32* %230, align 8
  br label %231

231:                                              ; preds = %186, %121, %69
  %232 = load i64, i64* @section_debug, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %232
  %234 = call i32 @dwarf2_fini_section(%struct.TYPE_22__* %233)
  %235 = load i64, i64* @section_abbrev, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %235
  %237 = call i32 @dwarf2_fini_section(%struct.TYPE_22__* %236)
  %238 = load i64, i64* @section_string, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %238
  %240 = call i32 @dwarf2_fini_section(%struct.TYPE_22__* %239)
  %241 = load i64, i64* @section_line, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %241
  %243 = call i32 @dwarf2_fini_section(%struct.TYPE_22__* %242)
  %244 = load i64, i64* @section_ranges, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %244
  %246 = call i32 @dwarf2_fini_section(%struct.TYPE_22__* %245)
  %247 = call i32 @image_unmap_section(%struct.image_section_map* %13)
  %248 = call i32 @image_unmap_section(%struct.image_section_map* %15)
  %249 = call i32 @image_unmap_section(%struct.image_section_map* %14)
  %250 = call i32 @image_unmap_section(%struct.image_section_map* %16)
  %251 = call i32 @image_unmap_section(%struct.image_section_map* %17)
  %252 = load i8*, i8** %19, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %231
  %255 = call i32 @image_unmap_section(%struct.image_section_map* %18)
  br label %256

256:                                              ; preds = %254, %231
  %257 = load i8*, i8** %19, align 8
  %258 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %258)
  ret i8* %257
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dwarf2_init_section(%struct.TYPE_22__*, %struct.image_file_map*, i8*, i8*, %struct.image_section_map*) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32) #2

declare dso_local %struct.module_format* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @dwarf2_parse_compilation_unit(%struct.TYPE_22__*, %struct.module*, %struct.elf_thunk_area*, %struct.TYPE_21__*, i64) #2

declare dso_local i32 @dwarf2_fini_section(%struct.TYPE_22__*) #2

declare dso_local i32 @image_unmap_section(%struct.image_section_map*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
