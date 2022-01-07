; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_init_parsing.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_init_parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_mdmp_obj = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"mdmp_mem_state.cparse\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"enum mdmp_mem_state { MEM_COMMIT=0x1000, MEM_FREE=0x10000, MEM_RESERVE=0x02000 };\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mdmp_mem_type.cparse\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"enum mdmp_mem_type { MEM_IMAGE=0x1000000, MEM_MAPPED=0x40000, MEM_PRIVATE=0x20000 };\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"mdmp_page_protect.cparse\00", align 1
@.str.5 = private unnamed_addr constant [294 x i8] c"enum mdmp_page_protect { PAGE_NOACCESS=1, PAGE_READONLY=2, PAGE_READWRITE=4, PAGE_WRITECOPY=8, PAGE_EXECUTE=0x10, PAGE_EXECUTE_READ=0x20, PAGE_EXECUTE_READWRITE=0x40, PAGE_EXECUTE_WRITECOPY=0x80, PAGE_GUARD=0x100, PAGE_NOCACHE=0x200, PAGE_WRITECOMBINE=0x400, PAGE_TARGETS_INVALID=0x40000000 };\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"mdmp_misc1_flags.cparse\00", align 1
@.str.7 = private unnamed_addr constant [126 x i8] c"enum mdmp_misc1_flags { MINIDUMP_MISC1_PROCESS_ID=1, MINIDUMP_MISC1_PROCESS_TIMES=2, MINIDUMP_MISC1_PROCESSOR_POWER_INFO=4 };\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"mdmp_processor_architecture.cparse\00", align 1
@.str.9 = private unnamed_addr constant [201 x i8] c"enum mdmp_processor_architecture { PROCESSOR_ARCHITECTURE_INTEL=0, PROCESSOR_ARCHITECTURE_ARM=5, PROCESSOR_ARCHITECTURE_IA64=6, PROCESSOR_ARCHITECTURE_AMD64=9, PROCESSOR_ARCHITECTURE_UNKNOWN=0xffff };\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"mdmp_product_type.cparse\00", align 1
@.str.11 = private unnamed_addr constant [94 x i8] c"enum mdmp_product_type { VER_NT_WORKSTATION=1, VER_NT_DOMAIN_CONTROLLER=2, VER_NT_SERVER=3 };\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"mdmp_platform_id.cparse\00", align 1
@.str.13 = private unnamed_addr constant [104 x i8] c"enum mdmp_platform_id { VER_PLATFORM_WIN32s=0, VER_PLATFORM_WIN32_WINDOWS=1, VER_PLATFORM_WIN32_NT=2 };\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"mdmp_suite_mask.cparse\00", align 1
@.str.15 = private unnamed_addr constant [365 x i8] c"enum mdmp_suite_mask { VER_SUITE_SMALLBUSINESS=1, VER_SUITE_ENTERPRISE=2, VER_SUITE_BACKOFFICE=4, VER_SUITE_TERMINAL=0x10, VER_SUITE_SMALLBUSINESS_RESTRICTED=0x20, VER_SUITE_EMBEDDEDNT=0x40, VER_SUITE_DATACENTER=0x80, VER_SUITE_SINGLEUSERTS=0x100, VER_SUITE_PERSONAL=0x200, VER_SUITE_BLADE=0x400, VER_SUITE_STORAGE_SERVER=0x2000, VER_SUITE_COMPUTE_SERVER=0x4000 };\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"mdmp_callback_type.cparse\00", align 1
@.str.17 = private unnamed_addr constant [396 x i8] c"enum mdmp_type { ModuleCallback=0,ThreadCallback=1, ThreadExCallback=2, IncludeThreadCallback=3, IncludeModuleCallback=4, MemoryCallback=5, CancelCallback=6, WriteKernelMinidumpCallback=7, KernelMinidumpStatusCallback=8, RemoveMemoryCallback=9, IncludeVmRegionCallback=10, IoStartCallback=11, IoWriteAllCallback=12, IoFinishCallback=13, ReadMemoryFailureCallback=14, SecondaryFlagsCallback=15 };\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"mdmp_exception_code.cparse\00", align 1
@.str.19 = private unnamed_addr constant [994 x i8] c"enum mdmp_exception_code { DBG_CONTROL_C=0x40010005, EXCEPTION_GUARD_PAGE_VIOLATION=0x80000001, EXCEPTION_DATATYPE_MISALIGNMENT=0x80000002, EXCEPTION_BREAKPOINT=0x80000003, EXCEPTION_SINGLE_STEP=0x80000004, EXCEPTION_ACCESS_VIOLATION=0xc0000005, EXCEPTION_IN_PAGE_ERROR=0xc0000006, EXCEPTION_INVALID_HANDLE=0xc0000008, EXCEPTION_ILLEGAL_INSTRUCTION=0xc000001d, EXCEPTION_NONCONTINUABLE_EXCEPTION=0xc0000025, EXCEPTION_INVALID_DISPOSITION=0xc0000026, EXCEPTION_ARRAY_BOUNDS_EXCEEDED=0xc000008c, EXCEPTION_FLOAT_DENORMAL_OPERAND=0xc000008d, EXCEPTION_FLOAT_DIVIDE_BY_ZERO=0xc000008e, EXCEPTION_FLOAT_INEXACT_RESULT=0xc000008f, EXCEPTION_FLOAT_INVALID_OPERATION=0xc0000090, EXCEPTION_FLOAT_OVERFLOW=0xc0000091, EXCEPTION_FLOAT_STACK_CHECK=0xc0000092, EXCEPTION_FLOAT_UNDERFLOW=0xc0000093, EXCEPTION_INTEGER_DIVIDE_BY_ZERO=0xc0000094, EXCEPTION_INTEGER_OVERFLOW=0xc0000095, EXCEPTION_PRIVILEGED_INSTRUCTION=0xc0000096, EXCEPTION_STACK_OVERFLOW=0xc00000fd, EXCEPTION_POSSIBLE_DEADLOCK=0xc0000194 };\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"mdmp_exception_flags.cparse\00", align 1
@.str.21 = private unnamed_addr constant [83 x i8] c"enum mdmp_exception_flags { EXCEPTION_CONTINUABLE=0, EXCEPTION_NONCONTINUABLE=1 };\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"mdmp_handle_object_information_type.cparse\00", align 1
@.str.23 = private unnamed_addr constant [218 x i8] c"enum mdmp_handle_object_information_type { MiniHandleObjectInformationNone=0, MiniThreadInformation1=1, MiniMutantInformation1=2, MiniMutantInformation2=3, MiniMutantProcessInformation1=4, MiniProcessInformation2=5 };\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"mdmp_secondary_flags.cparse\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"enum mdmp_secondary_flags { MiniSecondaryWithoutPowerInfo=0 };\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"mdmp_stream_type.cparse\00", align 1
@.str.27 = private unnamed_addr constant [461 x i8] c"enum mdmp_stream_type { UnusedStream=0, ReservedStream0=1, ReservedStream1=2, ThreadListStream=3, ModuleListStream=4, MemoryListStream=5, ExceptionStream=6, SystemInfoStream=7, ThreadExListStream=8, Memory64ListStream=9, CommentStreamA=10, CommentStreamW=11, HandleDataStream=12, FunctionTableStream=13, UnloadedModuleListStream=14, MiscInfoStream=15, MemoryInfoListStream=16, ThreadInfoListStream=17, HandleOperationListStream=18, LastReservedStream=0xffff };\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"mdmp_type.cparse\00", align 1
@.str.29 = private unnamed_addr constant [792 x i8] c"enum mdmp_type { MiniDumpNormal=0x0, MiniDumpWithDataSegs=0x1, MiniDumpWithFullMemory=0x2, MiniDumpWithHandleData=0x4, MiniDumpFilterMemory=0x8, MiniDumpScanMemory=0x10, MiniDumpWithUnloadedModule=0x20, MiniDumpWihinDirectlyReferencedMemory=0x40, MiniDumpFilterWithModulePaths=0x80,MiniDumpWithProcessThreadData=0x100, MiniDumpWithPrivateReadWriteMemory=0x200, MiniDumpWithoutOptionalDate=0x400, MiniDumpWithFullMemoryInfo=0x800, MiniDumpWithThreadInfo=0x1000, MiniDumpWithCodeSegs=0x2000, MiniDumpWithoutAuxiliaryState=0x4000, MiniDumpWithFullAuxiliaryState=0x8000, MiniDumpWithPrivateWriteCopyMemory=0x10000, MiniDumpIgnoreInaccessibleMemory=0x20000, MiniDumpWithTokenInformation=0x40000, MiniDumpWithModuleHeaders=0x80000, MiniDumpFilterTriage=0x100000, MiniDumpValidTypeFlags=0x1fffff };\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"mdmp_module_write_flags.cparse\00", align 1
@.str.31 = private unnamed_addr constant [206 x i8] c"enum mdmp_module_write_flags { ModuleWriteModule=0, ModuleWriteDataSeg=2, ModuleWriteMiscRecord=4, ModuleWriteCvRecord=8, ModuleReferencedByMemory=0x10, ModuleWriteTlsData=0x20, ModuleWriteCodeSegs=0x40 };\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"mdmp_thread_write_flags.cparse\00", align 1
@.str.33 = private unnamed_addr constant [214 x i8] c"enum mdmp_thread_write_flags { ThreadWriteThread=0, ThreadWriteStack=2, ThreadWriteContext=4, ThreadWriteBackingStore=8, ThreadWriteInstructionWindow=0x10, ThreadWriteThreadData=0x20, ThreadWriteThreadInfo=0x40 };\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"mdmp_context_flags.cparse\00", align 1
@.str.35 = private unnamed_addr constant [227 x i8] c"enum mdmp_context_flags { CONTEXT_i386=0x10000, CONTEXT_CONTROL=0x10001, CONTEXT_INTEGER=0x10002, CONTEXT_SEGMENTS=0x10004, CONTEXT_FLOATING_POINT=0x10008, CONTEXT_DEBUG_REGISTERS=0x10010, CONTEXT_EXTENDED_REGISTERS=0x10020 };\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"mdmp_location_descriptor.format\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"dd DataSize RVA\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"mdmp_location_descriptor64.format\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"qq DataSize RVA\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"mdmp_memory_descriptor.format\00", align 1
@.str.41 = private unnamed_addr constant [55 x i8] c"q? StartOfMemoryRange (mdmp_location_descriptor)Memory\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"mdmp_memory_descriptor64.format\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"qq StartOfMemoryRange DataSize\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"mdmp_vs_fixedfileinfo.format\00", align 1
@.str.45 = private unnamed_addr constant [199 x i8] c"ddddddddddddd dwSignature dwStrucVersion dwFileVersionMs dwFileVersionLs dwProductVersionMs dwProductVersionLs dwFileFlagsMask dwFileFlags dwFileOs dwFileType dwFileSubtype dwFileDateMs dwFileDateLs\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"mdmp_string.format\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"dZ Length Buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r_bin_mdmp_obj*)* @r_bin_mdmp_init_parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_bin_mdmp_init_parsing(%struct.r_bin_mdmp_obj* %0) #0 {
  %2 = alloca %struct.r_bin_mdmp_obj*, align 8
  store %struct.r_bin_mdmp_obj* %0, %struct.r_bin_mdmp_obj** %2, align 8
  %3 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %4 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @sdb_set(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %7 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %8 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sdb_set(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %11 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %12 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sdb_set(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([294 x i8], [294 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %15 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %16 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sdb_set(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %19 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %20 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sdb_set(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %23 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %24 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sdb_set(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %27 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %28 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sdb_set(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %31 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %32 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sdb_set(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %35 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %36 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sdb_set(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([396 x i8], [396 x i8]* @.str.17, i64 0, i64 0), i32 0)
  %39 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %40 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sdb_set(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([994 x i8], [994 x i8]* @.str.19, i64 0, i64 0), i32 0)
  %43 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %44 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sdb_set(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.21, i64 0, i64 0), i32 0)
  %47 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %48 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sdb_set(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([218 x i8], [218 x i8]* @.str.23, i64 0, i64 0), i32 0)
  %51 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %52 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sdb_set(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i64 0, i64 0), i32 0)
  %55 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %56 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sdb_set(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([461 x i8], [461 x i8]* @.str.27, i64 0, i64 0), i32 0)
  %59 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %60 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sdb_set(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([792 x i8], [792 x i8]* @.str.29, i64 0, i64 0), i32 0)
  %63 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %64 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sdb_set(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.31, i64 0, i64 0), i32 0)
  %67 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %68 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sdb_set(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.33, i64 0, i64 0), i32 0)
  %71 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %72 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sdb_set(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([227 x i8], [227 x i8]* @.str.35, i64 0, i64 0), i32 0)
  %75 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %76 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sdb_set(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0), i32 0)
  %79 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %80 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sdb_set(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i32 0)
  %83 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %84 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @sdb_set(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.41, i64 0, i64 0), i32 0)
  %87 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %88 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sdb_set(i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 0)
  %91 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %92 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sdb_set(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.45, i64 0, i64 0), i32 0)
  %95 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %96 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @sdb_set(i32 %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local i32 @sdb_set(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
