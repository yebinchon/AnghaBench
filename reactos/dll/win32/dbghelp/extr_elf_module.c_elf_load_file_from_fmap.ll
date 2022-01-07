; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_file_from_fmap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_file_from_fmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32 }
%struct.image_file_map = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.elf_info = type { i32, i32*, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__, %struct.module_format** }
%struct.TYPE_19__ = type { i64, i32 }
%struct.module_format = type { %struct.TYPE_18__, i32*, i32, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.elf_module_info* }
%struct.elf_module_info = type { i64, i32, i64, %struct.image_file_map }
%struct.image_section_map = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@ELF_INFO_DEBUG_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@SHT_DYNAMIC = common dso_local global i32 0, align 4
@DT_DEBUG = common dso_local global i64 0, align 8
@DT_NULL = common dso_local global i64 0, align 8
@ELF_INFO_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"For module %s, got ELF (start=%lx dyn=%lx), link_map (start=%lx dyn=%lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\09have to relocate: %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"For module %s, no .dynamic section\0A\00", align 1
@DMT_ELF = common dso_local global i32 0, align 4
@DFI_ELF = common dso_local global i64 0, align 8
@elf_module_remove = common dso_local global i32 0, align 4
@dbghelp_options = common dso_local global i32 0, align 4
@SYMOPT_DEFERRED_LOADS = common dso_local global i32 0, align 4
@SymDeferred = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ELF_INFO_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.process*, i32*, %struct.image_file_map*, i64, i64, %struct.elf_info*)* @elf_load_file_from_fmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_load_file_from_fmap(%struct.process* %0, i32* %1, %struct.image_file_map* %2, i64 %3, i64 %4, %struct.elf_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.process*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.image_file_map*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.elf_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.image_section_map, align 8
  %16 = alloca %struct.TYPE_20__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.elf_module_info*, align 8
  %20 = alloca %struct.module_format*, align 8
  %21 = alloca %struct.image_section_map, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  store %struct.process* %0, %struct.process** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.image_file_map* %2, %struct.image_file_map** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.elf_info* %5, %struct.elf_info** %13, align 8
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %27 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ELF_INFO_DEBUG_HEADER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %124

32:                                               ; preds = %6
  %33 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %34 = load i32, i32* @SHT_DYNAMIC, align 4
  %35 = call i64 @elf_find_section(%struct.image_file_map* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34, %struct.image_section_map* %15)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %121

37:                                               ; preds = %32
  %38 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %39 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  %43 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %15, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %17, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %37
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %55 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %53, %58
  %60 = load i8*, i8** %17, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %17, align 8
  br label %62

62:                                               ; preds = %52, %37
  br label %63

63:                                               ; preds = %108, %62
  %64 = load %struct.process*, %struct.process** %8, align 8
  %65 = getelementptr inbounds %struct.process, %struct.process* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %17, align 8
  %68 = call i32 @ReadProcessMemory(i32 %66, i8* %67, %struct.TYPE_20__* %16, i32 16, i64* %18)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i64, i64* %18, align 8
  %72 = icmp ne i64 %71, 16
  br i1 %72, label %73, label %75

73:                                               ; preds = %70, %63
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %7, align 4
  br label %318

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DT_DEBUG, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %85 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %80
  %89 = load i64, i64* %12, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %15, i32 0, i32 1
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %96, align 8
  %98 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %15, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %91, %88, %80
  br label %113

105:                                              ; preds = %75
  %106 = load i8*, i8** %17, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 16
  store i8* %107, i8** %17, align 8
  br label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DT_NULL, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %63, label %113

113:                                              ; preds = %108, %104
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DT_NULL, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %7, align 4
  br label %318

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %32
  %122 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %123 = call i32 @elf_end_find(%struct.image_file_map* %122)
  br label %124

124:                                              ; preds = %121, %6
  %125 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %126 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ELF_INFO_MODULE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %285

131:                                              ; preds = %124
  %132 = load i64, i64* %11, align 8
  store i64 %132, i64* %22, align 8
  %133 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %134 = load i32, i32* @SHT_DYNAMIC, align 4
  %135 = call i64 @elf_find_section(%struct.image_file_map* %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %134, %struct.image_section_map* %21)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %167

137:                                              ; preds = %131
  %138 = call i64 @elf_get_map_rva(%struct.image_section_map* %21)
  store i64 %138, i64* %23, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = call i64 @debugstr_w(i32* %139)
  %141 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %142 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %23, align 8
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @TRACE(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i64 %140, i64 %145, i64 %146, i64 %147, i64 %148)
  %150 = load i64, i64* %12, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %137
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %23, align 8
  %155 = add i64 %153, %154
  %156 = load i64, i64* %12, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* %23, align 8
  %161 = sub i64 %159, %160
  %162 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %161)
  %163 = load i64, i64* %12, align 8
  %164 = load i64, i64* %23, align 8
  %165 = sub i64 %163, %164
  store i64 %165, i64* %22, align 8
  br label %166

166:                                              ; preds = %158, %152, %137
  br label %171

167:                                              ; preds = %131
  %168 = load i32*, i32** %9, align 8
  %169 = call i64 @debugstr_w(i32* %168)
  %170 = call i32 @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %169)
  br label %171

171:                                              ; preds = %167, %166
  %172 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %173 = call i32 @elf_end_find(%struct.image_file_map* %172)
  %174 = call i32 (...) @GetProcessHeap()
  %175 = call i8* @HeapAlloc(i32 %174, i32 0, i32 80)
  %176 = bitcast i8* %175 to %struct.module_format*
  store %struct.module_format* %176, %struct.module_format** %20, align 8
  %177 = load %struct.module_format*, %struct.module_format** %20, align 8
  %178 = icmp ne %struct.module_format* %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %7, align 4
  br label %318

181:                                              ; preds = %171
  %182 = load %struct.process*, %struct.process** %8, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* @DMT_ELF, align 4
  %185 = load i32, i32* @FALSE, align 4
  %186 = load i64, i64* %22, align 8
  %187 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %188 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %193 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @calc_crc32(i32 %196)
  %198 = call %struct.TYPE_21__* @module_new(%struct.process* %182, i32* %183, i32 %184, i32 %185, i64 %186, i32 %191, i32 0, i32 %197)
  %199 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %200 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %199, i32 0, i32 2
  store %struct.TYPE_21__* %198, %struct.TYPE_21__** %200, align 8
  %201 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %202 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %201, i32 0, i32 2
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %202, align 8
  %204 = icmp ne %struct.TYPE_21__* %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %181
  %206 = call i32 (...) @GetProcessHeap()
  %207 = load %struct.module_format*, %struct.module_format** %20, align 8
  %208 = call i32 @HeapFree(i32 %206, i32 0, %struct.module_format* %207)
  %209 = load i32, i32* @FALSE, align 4
  store i32 %209, i32* %7, align 4
  br label %318

210:                                              ; preds = %181
  %211 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %212 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %211, i32 0, i32 2
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %218 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = sub i64 %216, %221
  %223 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %224 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %223, i32 0, i32 2
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  store i64 %222, i64* %226, align 8
  %227 = load %struct.module_format*, %struct.module_format** %20, align 8
  %228 = getelementptr inbounds %struct.module_format, %struct.module_format* %227, i64 1
  %229 = bitcast %struct.module_format* %228 to i8*
  %230 = bitcast i8* %229 to %struct.elf_module_info*
  store %struct.elf_module_info* %230, %struct.elf_module_info** %19, align 8
  %231 = load %struct.module_format*, %struct.module_format** %20, align 8
  %232 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %233 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %232, i32 0, i32 2
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 2
  %236 = load %struct.module_format**, %struct.module_format*** %235, align 8
  %237 = load i64, i64* @DFI_ELF, align 8
  %238 = getelementptr inbounds %struct.module_format*, %struct.module_format** %236, i64 %237
  store %struct.module_format* %231, %struct.module_format** %238, align 8
  %239 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %240 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %239, i32 0, i32 2
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %240, align 8
  %242 = load %struct.module_format*, %struct.module_format** %20, align 8
  %243 = getelementptr inbounds %struct.module_format, %struct.module_format* %242, i32 0, i32 3
  store %struct.TYPE_21__* %241, %struct.TYPE_21__** %243, align 8
  %244 = load i32, i32* @elf_module_remove, align 4
  %245 = load %struct.module_format*, %struct.module_format** %20, align 8
  %246 = getelementptr inbounds %struct.module_format, %struct.module_format* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  %247 = load %struct.module_format*, %struct.module_format** %20, align 8
  %248 = getelementptr inbounds %struct.module_format, %struct.module_format* %247, i32 0, i32 1
  store i32* null, i32** %248, align 8
  %249 = load %struct.elf_module_info*, %struct.elf_module_info** %19, align 8
  %250 = load %struct.module_format*, %struct.module_format** %20, align 8
  %251 = getelementptr inbounds %struct.module_format, %struct.module_format* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  store %struct.elf_module_info* %249, %struct.elf_module_info** %252, align 8
  %253 = load i64, i64* %11, align 8
  %254 = load %struct.elf_module_info*, %struct.elf_module_info** %19, align 8
  %255 = getelementptr inbounds %struct.elf_module_info, %struct.elf_module_info* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  %256 = load %struct.elf_module_info*, %struct.elf_module_info** %19, align 8
  %257 = getelementptr inbounds %struct.elf_module_info, %struct.elf_module_info* %256, i32 0, i32 3
  %258 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %259 = bitcast %struct.image_file_map* %257 to i8*
  %260 = bitcast %struct.image_file_map* %258 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %259, i8* align 8 %260, i64 24, i1 false)
  %261 = load %struct.image_file_map*, %struct.image_file_map** %10, align 8
  %262 = call i32 @elf_reset_file_map(%struct.image_file_map* %261)
  %263 = load i32, i32* @dbghelp_options, align 4
  %264 = load i32, i32* @SYMOPT_DEFERRED_LOADS, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %210
  %268 = load i32, i32* @SymDeferred, align 4
  %269 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %270 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %269, i32 0, i32 2
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 1
  store i32 %268, i32* %273, align 8
  %274 = load i32, i32* @TRUE, align 4
  store i32 %274, i32* %14, align 4
  br label %280

275:                                              ; preds = %210
  %276 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %277 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %276, i32 0, i32 2
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %277, align 8
  %279 = call i32 @elf_load_debug_info(%struct.TYPE_21__* %278)
  store i32 %279, i32* %14, align 4
  br label %280

280:                                              ; preds = %275, %267
  %281 = load %struct.elf_module_info*, %struct.elf_module_info** %19, align 8
  %282 = getelementptr inbounds %struct.elf_module_info, %struct.elf_module_info* %281, i32 0, i32 1
  store i32 1, i32* %282, align 8
  %283 = load %struct.elf_module_info*, %struct.elf_module_info** %19, align 8
  %284 = getelementptr inbounds %struct.elf_module_info, %struct.elf_module_info* %283, i32 0, i32 2
  store i64 0, i64* %284, align 8
  br label %287

285:                                              ; preds = %124
  %286 = load i32, i32* @TRUE, align 4
  store i32 %286, i32* %14, align 4
  br label %287

287:                                              ; preds = %285, %280
  %288 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %289 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @ELF_INFO_NAME, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %316

294:                                              ; preds = %287
  %295 = call i32 (...) @GetProcessHeap()
  %296 = load i32*, i32** %9, align 8
  %297 = call i32 @lstrlenW(i32* %296)
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = mul i64 %299, 4
  %301 = trunc i64 %300 to i32
  %302 = call i8* @HeapAlloc(i32 %295, i32 0, i32 %301)
  %303 = bitcast i8* %302 to i32*
  store i32* %303, i32** %24, align 8
  %304 = load i32*, i32** %24, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %313

306:                                              ; preds = %294
  %307 = load i32*, i32** %24, align 8
  %308 = load i32*, i32** %9, align 8
  %309 = call i32 @strcpyW(i32* %307, i32* %308)
  %310 = load i32*, i32** %24, align 8
  %311 = load %struct.elf_info*, %struct.elf_info** %13, align 8
  %312 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %311, i32 0, i32 1
  store i32* %310, i32** %312, align 8
  br label %315

313:                                              ; preds = %294
  %314 = load i32, i32* @FALSE, align 4
  store i32 %314, i32* %14, align 4
  br label %315

315:                                              ; preds = %313, %306
  br label %316

316:                                              ; preds = %315, %287
  %317 = load i32, i32* %14, align 4
  store i32 %317, i32* %7, align 4
  br label %318

318:                                              ; preds = %316, %205, %179, %118, %73
  %319 = load i32, i32* %7, align 4
  ret i32 %319
}

declare dso_local i64 @elf_find_section(%struct.image_file_map*, i8*, i32, %struct.image_section_map*) #1

declare dso_local i32 @ReadProcessMemory(i32, i8*, %struct.TYPE_20__*, i32, i64*) #1

declare dso_local i32 @elf_end_find(%struct.image_file_map*) #1

declare dso_local i64 @elf_get_map_rva(%struct.image_section_map*) #1

declare dso_local i32 @TRACE(i8*, i64, i64, i64, i64, i64) #1

declare dso_local i64 @debugstr_w(i32*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.TYPE_21__* @module_new(%struct.process*, i32*, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @calc_crc32(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.module_format*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @elf_reset_file_map(%struct.image_file_map*) #1

declare dso_local i32 @elf_load_debug_info(%struct.TYPE_21__*) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @strcpyW(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
