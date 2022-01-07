; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_debug_info_from_map.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_debug_info_from_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_8__, i32, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.image_file_map = type { i32 }
%struct.pool = type { i32 }
%struct.hash_table = type { i32 }
%struct.elf_thunk_area = type { i8*, i32, i32, i32 }
%struct.image_section_map = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"__wine_spec_import_thunks\00", align 1
@THUNK_ORDINAL_NOTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"__wine_spec_delayed_import_loaders\00", align 1
@THUNK_ORDINAL_LOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"__wine_spec_delayed_import_thunks\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"__wine_delay_load\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"__wine_spec_thunk_text_16\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"__wine_spec_thunk_text_32\00", align 1
@SymExport = common dso_local global i32 0, align 4
@dbghelp_options = common dso_local global i32 0, align 4
@SYMOPT_PUBLICS_ONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c".stab\00", align 1
@SHT_NULL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c".stabstr\00", align 1
@IMAGE_NO_MAP = common dso_local global i8* null, align 8
@DFI_ELF = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"Couldn't correctly read stabs\0A\00", align 1
@S_ElfW = common dso_local global i32 0, align 4
@S_WineLoaderW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, %struct.image_file_map*, %struct.pool*, %struct.hash_table*)* @elf_load_debug_info_from_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_load_debug_info_from_map(%struct.module* %0, %struct.image_file_map* %1, %struct.pool* %2, %struct.hash_table* %3) #0 {
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.image_file_map*, align 8
  %7 = alloca %struct.pool*, align 8
  %8 = alloca %struct.hash_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [7 x %struct.elf_thunk_area], align 16
  %12 = alloca %struct.image_section_map, align 4
  %13 = alloca %struct.image_section_map, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store %struct.image_file_map* %1, %struct.image_file_map** %6, align 8
  store %struct.pool* %2, %struct.pool** %7, align 8
  store %struct.hash_table* %3, %struct.hash_table** %8, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %9, align 4
  %17 = getelementptr inbounds [7 x %struct.elf_thunk_area], [7 x %struct.elf_thunk_area]* %11, i64 0, i64 0
  %18 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %17, i32 0, i32 1
  %20 = load i32, i32* @THUNK_ORDINAL_NOTYPE, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %17, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %17, i32 0, i32 3
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %17, i64 1
  %24 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %23, i32 0, i32 1
  %26 = load i32, i32* @THUNK_ORDINAL_LOAD, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %23, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %23, i32 0, i32 3
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %23, i64 1
  %30 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %29, i32 0, i32 1
  %32 = load i32, i32* @THUNK_ORDINAL_LOAD, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %29, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %29, i32 0, i32 3
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %29, i64 1
  %36 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %36, align 8
  %37 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %35, i32 0, i32 1
  %38 = load i32, i32* @THUNK_ORDINAL_LOAD, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %35, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %35, i32 0, i32 3
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %35, i64 1
  %42 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %41, i32 0, i32 1
  store i32 -16, i32* %43, align 8
  %44 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %41, i32 0, i32 2
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %41, i32 0, i32 3
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %41, i64 1
  %47 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %47, align 8
  %48 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %46, i32 0, i32 1
  store i32 -32, i32* %48, align 8
  %49 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %46, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %46, i32 0, i32 3
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %46, i64 1
  %52 = bitcast %struct.elf_thunk_area* %51 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %52, i8 0, i64 24, i1 false)
  %53 = load i32, i32* @SymExport, align 4
  %54 = load %struct.module*, %struct.module** %5, align 8
  %55 = getelementptr inbounds %struct.module, %struct.module* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.module*, %struct.module** %5, align 8
  %58 = load %struct.pool*, %struct.pool** %7, align 8
  %59 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %60 = load %struct.image_file_map*, %struct.image_file_map** %6, align 8
  %61 = getelementptr inbounds [7 x %struct.elf_thunk_area], [7 x %struct.elf_thunk_area]* %11, i64 0, i64 0
  %62 = call i32 @elf_hash_symtab(%struct.module* %57, %struct.pool* %58, %struct.hash_table* %59, %struct.image_file_map* %60, %struct.elf_thunk_area* %61)
  %63 = load i32, i32* @dbghelp_options, align 4
  %64 = load i32, i32* @SYMOPT_PUBLICS_ONLY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %144, label %67

67:                                               ; preds = %4
  %68 = load %struct.image_file_map*, %struct.image_file_map** %6, align 8
  %69 = load %struct.module*, %struct.module** %5, align 8
  %70 = call i32 @elf_check_alternate(%struct.image_file_map* %68, %struct.module* %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.image_file_map*, %struct.image_file_map** %6, align 8
  %72 = load i32, i32* @SHT_NULL, align 4
  %73 = call i64 @elf_find_section(%struct.image_file_map* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %72, %struct.image_section_map* %12)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %128

75:                                               ; preds = %67
  %76 = load %struct.image_file_map*, %struct.image_file_map** %6, align 8
  %77 = load i32, i32* @SHT_NULL, align 4
  %78 = call i64 @elf_find_section(%struct.image_file_map* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %77, %struct.image_section_map* %13)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %128

80:                                               ; preds = %75
  %81 = call i8* @image_map_section(%struct.image_section_map* %12)
  store i8* %81, i8** %14, align 8
  %82 = call i8* @image_map_section(%struct.image_section_map* %13)
  store i8* %82, i8** %15, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = load i8*, i8** @IMAGE_NO_MAP, align 8
  %85 = icmp ne i8* %83, %84
  br i1 %85, label %86, label %125

86:                                               ; preds = %80
  %87 = load i8*, i8** %15, align 8
  %88 = load i8*, i8** @IMAGE_NO_MAP, align 8
  %89 = icmp ne i8* %87, %88
  br i1 %89, label %90, label %125

90:                                               ; preds = %86
  %91 = load %struct.module*, %struct.module** %5, align 8
  %92 = load %struct.module*, %struct.module** %5, align 8
  %93 = getelementptr inbounds %struct.module, %struct.module* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %93, align 8
  %95 = load i64, i64* @DFI_ELF, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %94, i64 %95
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @image_get_map_size(%struct.image_section_map* %12)
  %105 = load i8*, i8** %15, align 8
  %106 = call i32 @image_get_map_size(%struct.image_section_map* %13)
  %107 = call i32 @stabs_parse(%struct.module* %91, i32 %102, i8* %103, i32 %104, i8* %105, i32 %106, i32* null, i32* null)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %90
  %111 = load %struct.module*, %struct.module** %5, align 8
  %112 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %113 = call i32 @elf_finish_stabs_info(%struct.module* %111, %struct.hash_table* %112)
  br label %116

114:                                              ; preds = %90
  %115 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %110
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %119, %116
  %123 = phi i1 [ true, %116 ], [ %121, %119 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %122, %86, %80
  %126 = call i32 @image_unmap_section(%struct.image_section_map* %12)
  %127 = call i32 @image_unmap_section(%struct.image_section_map* %13)
  br label %128

128:                                              ; preds = %125, %75, %67
  %129 = load %struct.module*, %struct.module** %5, align 8
  %130 = load %struct.module*, %struct.module** %5, align 8
  %131 = getelementptr inbounds %struct.module, %struct.module* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds [7 x %struct.elf_thunk_area], [7 x %struct.elf_thunk_area]* %11, i64 0, i64 0
  %134 = load %struct.image_file_map*, %struct.image_file_map** %6, align 8
  %135 = call i32 @dwarf2_parse(%struct.module* %129, i32 %132, %struct.elf_thunk_area* %133, %struct.image_file_map* %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %128
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br label %141

141:                                              ; preds = %138, %128
  %142 = phi i1 [ true, %128 ], [ %140, %138 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %141, %4
  %145 = load %struct.module*, %struct.module** %5, align 8
  %146 = getelementptr inbounds %struct.module, %struct.module* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @S_ElfW, align 4
  %150 = call i64 @strstrW(i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %144
  %153 = load %struct.module*, %struct.module** %5, align 8
  %154 = getelementptr inbounds %struct.module, %struct.module* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @S_WineLoaderW, align 4
  %158 = call i32 @strcmpW(i32 %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %152, %144
  %161 = load i32, i32* @dbghelp_options, align 4
  %162 = load i32, i32* @SYMOPT_PUBLICS_ONLY, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = load %struct.module*, %struct.module** %5, align 8
  %167 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %168 = getelementptr inbounds [7 x %struct.elf_thunk_area], [7 x %struct.elf_thunk_area]* %11, i64 0, i64 0
  %169 = call i32 @elf_new_wine_thunks(%struct.module* %166, %struct.hash_table* %167, %struct.elf_thunk_area* %168)
  br label %170

170:                                              ; preds = %165, %160
  br label %171

171:                                              ; preds = %170, %152
  %172 = load %struct.module*, %struct.module** %5, align 8
  %173 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %174 = call i64 @elf_new_public_symbols(%struct.module* %172, %struct.hash_table* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* @TRUE, align 4
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %179, %176, %171
  %182 = load i32, i32* %9, align 4
  ret i32 %182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @elf_hash_symtab(%struct.module*, %struct.pool*, %struct.hash_table*, %struct.image_file_map*, %struct.elf_thunk_area*) #2

declare dso_local i32 @elf_check_alternate(%struct.image_file_map*, %struct.module*) #2

declare dso_local i64 @elf_find_section(%struct.image_file_map*, i8*, i32, %struct.image_section_map*) #2

declare dso_local i8* @image_map_section(%struct.image_section_map*) #2

declare dso_local i32 @stabs_parse(%struct.module*, i32, i8*, i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @image_get_map_size(%struct.image_section_map*) #2

declare dso_local i32 @elf_finish_stabs_info(%struct.module*, %struct.hash_table*) #2

declare dso_local i32 @WARN(i8*) #2

declare dso_local i32 @image_unmap_section(%struct.image_section_map*) #2

declare dso_local i32 @dwarf2_parse(%struct.module*, i32, %struct.elf_thunk_area*, %struct.image_file_map*) #2

declare dso_local i64 @strstrW(i32, i32) #2

declare dso_local i32 @strcmpW(i32, i32) #2

declare dso_local i32 @elf_new_wine_thunks(%struct.module*, %struct.hash_table*, %struct.elf_thunk_area*) #2

declare dso_local i64 @elf_new_public_symbols(%struct.module*, %struct.hash_table*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
