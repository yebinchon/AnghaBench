; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_msc_debug_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_msc_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32 }
%struct.module = type { %struct.TYPE_19__, %struct.TYPE_18__** }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.image_file_map }
%struct.image_file_map = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_23__ = type { i64, i64 }

@DFI_PE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@IMAGE_DIRECTORY_ENTRY_DEBUG = common dso_local global i32 0, align 4
@IMAGE_FILE_DEBUG_STRIPPED = common dso_local global i32 0, align 4
@IMAGE_DEBUG_TYPE_MISC = common dso_local global i64 0, align 8
@IMAGE_DEBUG_MISC_EXENAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"-Debug info stripped, but no .DBG file in module %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.process*, %struct.module*)* @pe_load_msc_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pe_load_msc_debug_info(%struct.process* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.process*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.image_file_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32*, align 8
  store %struct.process* %0, %struct.process** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %15 = load %struct.module*, %struct.module** %5, align 8
  %16 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 1
  %17 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %16, align 8
  %18 = load i64, i64* @DFI_PE, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %17, i64 %18
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store %struct.image_file_map* %24, %struct.image_file_map** %6, align 8
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %7, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %9, align 8
  %26 = load %struct.image_file_map*, %struct.image_file_map** %6, align 8
  %27 = call i8* @pe_map_full(%struct.image_file_map* %26, %struct.TYPE_22__** %12)
  store i8* %27, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %131

31:                                               ; preds = %2
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = load i32, i32* @IMAGE_DIRECTORY_ENTRY_DEBUG, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i64 %37
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %8, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 16
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %31
  br label %127

48:                                               ; preds = %31
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_24__* @RtlImageRvaToVa(%struct.TYPE_22__* %49, i8* %50, i32 %53, i32* null)
  store %struct.TYPE_24__* %54, %struct.TYPE_24__** %9, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IMAGE_FILE_DEBUG_STRIPPED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %104

62:                                               ; preds = %48
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = bitcast i8* %68 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %13, align 8
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %84, label %72

72:                                               ; preds = %62
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IMAGE_DEBUG_TYPE_MISC, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IMAGE_DEBUG_MISC_EXENAME, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78, %72, %62
  %85 = load %struct.module*, %struct.module** %5, align 8
  %86 = getelementptr inbounds %struct.module, %struct.module* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @debugstr_w(i32 %88)
  %90 = call i32 @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %103

91:                                               ; preds = %78
  %92 = load %struct.process*, %struct.process** %4, align 8
  %93 = load %struct.module*, %struct.module** %5, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @pe_load_dbg_file(%struct.process* %92, %struct.module* %93, i8* %97, i32 %101)
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %91, %84
  br label %126

104:                                              ; preds = %48
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = bitcast %struct.TYPE_20__* %106 to i8*
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %107, i64 %112
  %114 = bitcast i8* %113 to i32*
  store i32* %114, i32** %14, align 8
  %115 = load %struct.process*, %struct.process** %4, align 8
  %116 = load %struct.module*, %struct.module** %5, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @pe_load_debug_directory(%struct.process* %115, %struct.module* %116, i8* %117, i32* %118, i32 %122, %struct.TYPE_24__* %123, i32 %124)
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %104, %103
  br label %127

127:                                              ; preds = %126, %47
  %128 = load %struct.image_file_map*, %struct.image_file_map** %6, align 8
  %129 = call i32 @pe_unmap_full(%struct.image_file_map* %128)
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %29
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i8* @pe_map_full(%struct.image_file_map*, %struct.TYPE_22__**) #1

declare dso_local %struct.TYPE_24__* @RtlImageRvaToVa(%struct.TYPE_22__*, i8*, i32, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @pe_load_dbg_file(%struct.process*, %struct.module*, i8*, i32) #1

declare dso_local i32 @pe_load_debug_directory(%struct.process*, %struct.module*, i8*, i32*, i32, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @pe_unmap_full(%struct.image_file_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
