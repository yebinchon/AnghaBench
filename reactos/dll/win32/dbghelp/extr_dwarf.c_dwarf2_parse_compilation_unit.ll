; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_compilation_unit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_compilation_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i8*, i32, i64 }
%struct.module = type { %struct.TYPE_38__, %struct.TYPE_35__** }
%struct.TYPE_38__ = type { i64, i8* }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64 }
%struct.elf_thunk_area = type { i32 }
%struct.TYPE_39__ = type { i8*, i8*, i64 }
%struct.TYPE_41__ = type { i64, i64, i32, i32, %struct.TYPE_31__*, i32, i32, i32*, i32**, %struct.elf_thunk_area*, %struct.module*, %struct.TYPE_40__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32*, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64 }
%struct.attribute = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i64, i32* }
%struct.vector = type { i32 }
%struct.TYPE_32__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Compilation Unit Header found at 0x%x:\0A\00", align 1
@section_debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"- length:        %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"- version:       %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"- abbrev_offset: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"- word_size:     %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"%u DWARF version unsupported. Wine dbghelp only support DWARF 2.\0A\00", align 1
@DFI_DWARF = common dso_local global i64 0, align 8
@btVoid = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@sc_void = common dso_local global i64 0, align 8
@section_abbrev = common dso_local global i64 0, align 8
@DW_TAG_compile_unit = common dso_local global i64 0, align 8
@DW_AT_name = common dso_local global i32 0, align 4
@DW_AT_comp_dir = common dso_local global i32 0, align 4
@DW_AT_low_pc = common dso_local global i32 0, align 4
@DW_AT_stmt_list = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"Should have a compilation unit here\0A\00", align 1
@section_line = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_40__*, %struct.module*, %struct.elf_thunk_area*, %struct.TYPE_39__*, i64)* @dwarf2_parse_compilation_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dwarf2_parse_compilation_unit(%struct.TYPE_40__* %0, %struct.module* %1, %struct.elf_thunk_area* %2, %struct.TYPE_39__* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca %struct.module*, align 8
  %9 = alloca %struct.elf_thunk_area*, align 8
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_41__, align 8
  %13 = alloca %struct.TYPE_39__, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_39__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i16, align 2
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.attribute, align 8
  %22 = alloca %struct.vector*, align 8
  %23 = alloca %struct.TYPE_30__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.attribute, align 8
  %26 = alloca %struct.attribute, align 8
  %27 = alloca %struct.attribute, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %7, align 8
  store %struct.module* %1, %struct.module** %8, align 8
  store %struct.elf_thunk_area* %2, %struct.elf_thunk_area** %9, align 8
  store %struct.TYPE_39__* %3, %struct.TYPE_39__** %10, align 8
  store i64 %4, i64* %11, align 8
  %28 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** @FALSE, align 8
  store i8* %31, i8** %20, align 8
  %32 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %33 = call i64 @dwarf2_parse_u4(%struct.TYPE_39__* %32)
  store i64 %33, i64* %17, align 8
  %34 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i64, i64* %17, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load i64, i64* %17, align 8
  %45 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 %44
  store i8* %48, i8** %46, align 8
  %49 = call zeroext i16 @dwarf2_parse_u2(%struct.TYPE_39__* %15)
  store i16 %49, i16* %18, align 2
  %50 = call i64 @dwarf2_parse_u4(%struct.TYPE_39__* %15)
  store i64 %50, i64* %19, align 8
  %51 = call i64 @dwarf2_parse_byte(%struct.TYPE_39__* %15)
  %52 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 2
  store i64 %51, i64* %52, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %55 = load i64, i64* @section_debug, align 8
  %56 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %53 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i64, i64* %17, align 8
  %66 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i16, i16* %18, align 2
  %68 = zext i16 %67 to i64
  %69 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* %19, align 8
  %71 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  %72 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  %75 = load i16, i16* %18, align 2
  %76 = zext i16 %75 to i32
  %77 = icmp ne i32 %76, 2
  br i1 %77, label %78, label %82

78:                                               ; preds = %5
  %79 = load i16, i16* %18, align 2
  %80 = call i32 @WARN(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i16 zeroext %79)
  %81 = load i8*, i8** @FALSE, align 8
  store i8* %81, i8** %6, align 8
  br label %269

82:                                               ; preds = %5
  %83 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.module*, %struct.module** %8, align 8
  %86 = getelementptr inbounds %struct.module, %struct.module* %85, i32 0, i32 1
  %87 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %86, align 8
  %88 = load i64, i64* @DFI_DWARF, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %87, i64 %88
  %90 = load %struct.TYPE_35__*, %struct.TYPE_35__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i32 0, i32 0
  store i64 %84, i64* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 3
  %100 = call i32 @pool_init(i32* %99, i32 65536)
  %101 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 11
  store %struct.TYPE_40__* %101, %struct.TYPE_40__** %102, align 8
  %103 = load i64, i64* @section_debug, align 8
  %104 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  %105 = load %struct.module*, %struct.module** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 10
  store %struct.module* %105, %struct.module** %106, align 8
  %107 = load %struct.elf_thunk_area*, %struct.elf_thunk_area** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 9
  store %struct.elf_thunk_area* %107, %struct.elf_thunk_area** %108, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 1
  store i64 %109, i64* %110, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %113 = load i64, i64* @section_debug, align 8
  %114 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %111 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 2
  store i32 %120, i32* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 8
  %123 = load i32**, i32*** %122, align 8
  %124 = call i32 @memset(i32** %123, i32 0, i32 8)
  %125 = load %struct.module*, %struct.module** %8, align 8
  %126 = load i32, i32* @btVoid, align 4
  %127 = call %struct.TYPE_32__* @symt_new_basic(%struct.module* %125, i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 8
  %130 = load i32**, i32*** %129, align 8
  %131 = load i64, i64* @sc_void, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  store i32* %128, i32** %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 7
  store i32* null, i32** %133, align 8
  %134 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %135 = load i64, i64* @section_abbrev, align 8
  %136 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i64, i64* %19, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %13, i32 0, i32 0
  store i8* %140, i8** %141, align 8
  %142 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %143 = load i64, i64* @section_abbrev, align 8
  %144 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %148 = load i64, i64* @section_abbrev, align 8
  %149 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %146, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %13, i32 0, i32 1
  store i8* %153, i8** %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %13, i32 0, i32 2
  store i64 %156, i64* %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 3
  %160 = call i32 @dwarf2_parse_abbrev_set(%struct.TYPE_39__* %13, i32* %158, i32* %159)
  %161 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 5
  %162 = call i32 @sparse_array_init(i32* %161, i32 16, i32 128)
  %163 = call i32 @dwarf2_read_one_debug_info(%struct.TYPE_41__* %12, %struct.TYPE_39__* %15, i32* null, %struct.TYPE_30__** %14)
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @DW_TAG_compile_unit, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %263

171:                                              ; preds = %82
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %23, align 8
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %173 = load i32, i32* @DW_AT_name, align 4
  %174 = call i64 @dwarf2_find_attribute(%struct.TYPE_41__* %12, %struct.TYPE_30__* %172, i32 %173, %struct.attribute* %21)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.attribute, %struct.attribute* %21, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %177, i32 0, i32 1
  store i32* null, i32** %178, align 8
  br label %179

179:                                              ; preds = %176, %171
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %181 = load i32, i32* @DW_AT_comp_dir, align 4
  %182 = call i64 @dwarf2_find_attribute(%struct.TYPE_41__* %12, %struct.TYPE_30__* %180, i32 %181, %struct.attribute* %27)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.attribute, %struct.attribute* %27, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %185, i32 0, i32 1
  store i32* null, i32** %186, align 8
  br label %187

187:                                              ; preds = %184, %179
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %189 = load i32, i32* @DW_AT_low_pc, align 4
  %190 = call i64 @dwarf2_find_attribute(%struct.TYPE_41__* %12, %struct.TYPE_30__* %188, i32 %189, %struct.attribute* %26)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.attribute, %struct.attribute* %26, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %193, i32 0, i32 0
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %192, %187
  %196 = load %struct.module*, %struct.module** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.attribute, %struct.attribute* %26, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %198, %201
  %203 = load %struct.module*, %struct.module** %8, align 8
  %204 = getelementptr inbounds %struct.attribute, %struct.attribute* %27, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds %struct.attribute, %struct.attribute* %21, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @source_new(%struct.module* %203, i32* %206, i32* %209)
  %211 = call %struct.TYPE_31__* @symt_new_compiland(%struct.module* %196, i64 %202, i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 4
  store %struct.TYPE_31__* %211, %struct.TYPE_31__** %212, align 8
  %213 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 4
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 0
  store i32* %215, i32** %217, align 8
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %219 = call %struct.vector* @dwarf2_get_di_children(%struct.TYPE_41__* %12, %struct.TYPE_30__* %218)
  store %struct.vector* %219, %struct.vector** %22, align 8
  %220 = load %struct.vector*, %struct.vector** %22, align 8
  %221 = icmp ne %struct.vector* %220, null
  br i1 %221, label %222, label %240

222:                                              ; preds = %195
  store i32 0, i32* %24, align 4
  br label %223

223:                                              ; preds = %236, %222
  %224 = load i32, i32* %24, align 4
  %225 = load %struct.vector*, %struct.vector** %22, align 8
  %226 = call i32 @vector_length(%struct.vector* %225)
  %227 = icmp ult i32 %224, %226
  br i1 %227, label %228, label %239

228:                                              ; preds = %223
  %229 = load %struct.vector*, %struct.vector** %22, align 8
  %230 = load i32, i32* %24, align 4
  %231 = call i64 @vector_at(%struct.vector* %229, i32 %230)
  %232 = inttoptr i64 %231 to %struct.TYPE_30__**
  %233 = load %struct.TYPE_30__*, %struct.TYPE_30__** %232, align 8
  store %struct.TYPE_30__* %233, %struct.TYPE_30__** %23, align 8
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %235 = call i32 @dwarf2_load_one_entry(%struct.TYPE_41__* %12, %struct.TYPE_30__* %234)
  br label %236

236:                                              ; preds = %228
  %237 = load i32, i32* %24, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %24, align 4
  br label %223

239:                                              ; preds = %223
  br label %240

240:                                              ; preds = %239, %195
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %242 = load i32, i32* @DW_AT_stmt_list, align 4
  %243 = call i64 @dwarf2_find_attribute(%struct.TYPE_41__* %12, %struct.TYPE_30__* %241, i32 %242, %struct.attribute* %25)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %240
  %246 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %247 = getelementptr inbounds %struct.attribute, %struct.attribute* %27, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds %struct.attribute, %struct.attribute* %25, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = call i64 @dwarf2_parse_line_numbers(%struct.TYPE_40__* %246, %struct.TYPE_41__* %12, i32* %249, i64 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %245
  %256 = load i8*, i8** @TRUE, align 8
  %257 = load %struct.module*, %struct.module** %8, align 8
  %258 = getelementptr inbounds %struct.module, %struct.module* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %258, i32 0, i32 1
  store i8* %256, i8** %259, align 8
  br label %260

260:                                              ; preds = %255, %245
  br label %261

261:                                              ; preds = %260, %240
  %262 = load i8*, i8** @TRUE, align 8
  store i8* %262, i8** %20, align 8
  br label %265

263:                                              ; preds = %82
  %264 = call i32 @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %265

265:                                              ; preds = %263, %261
  %266 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 3
  %267 = call i32 @pool_destroy(i32* %266)
  %268 = load i8*, i8** %20, align 8
  store i8* %268, i8** %6, align 8
  br label %269

269:                                              ; preds = %265, %78
  %270 = load i8*, i8** %6, align 8
  ret i8* %270
}

declare dso_local i64 @dwarf2_parse_u4(%struct.TYPE_39__*) #1

declare dso_local zeroext i16 @dwarf2_parse_u2(%struct.TYPE_39__*) #1

declare dso_local i64 @dwarf2_parse_byte(%struct.TYPE_39__*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @WARN(i8*, i16 zeroext) #1

declare dso_local i32 @pool_init(i32*, i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local %struct.TYPE_32__* @symt_new_basic(%struct.module*, i32, i8*, i32) #1

declare dso_local i32 @dwarf2_parse_abbrev_set(%struct.TYPE_39__*, i32*, i32*) #1

declare dso_local i32 @sparse_array_init(i32*, i32, i32) #1

declare dso_local i32 @dwarf2_read_one_debug_info(%struct.TYPE_41__*, %struct.TYPE_39__*, i32*, %struct.TYPE_30__**) #1

declare dso_local i64 @dwarf2_find_attribute(%struct.TYPE_41__*, %struct.TYPE_30__*, i32, %struct.attribute*) #1

declare dso_local %struct.TYPE_31__* @symt_new_compiland(%struct.module*, i64, i32) #1

declare dso_local i32 @source_new(%struct.module*, i32*, i32*) #1

declare dso_local %struct.vector* @dwarf2_get_di_children(%struct.TYPE_41__*, %struct.TYPE_30__*) #1

declare dso_local i32 @vector_length(%struct.vector*) #1

declare dso_local i64 @vector_at(%struct.vector*, i32) #1

declare dso_local i32 @dwarf2_load_one_entry(%struct.TYPE_41__*, %struct.TYPE_30__*) #1

declare dso_local i64 @dwarf2_parse_line_numbers(%struct.TYPE_40__*, %struct.TYPE_41__*, i32*, i64) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
