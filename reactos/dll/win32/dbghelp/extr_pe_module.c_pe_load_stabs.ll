; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_stabs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_stabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32 }
%struct.module = type { %struct.TYPE_12__, %struct.TYPE_11__** }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.image_file_map }
%struct.image_file_map = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.image_section_map = type { i32 }

@DFI_PE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c".stab\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".stabstr\00", align 1
@IMAGE_NO_MAP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s the STABS debug info\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"successfully loaded\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"failed to load\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.process*, %struct.module*)* @pe_load_stabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pe_load_stabs(%struct.process* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.process*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.image_file_map*, align 8
  %6 = alloca %struct.image_section_map, align 4
  %7 = alloca %struct.image_section_map, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.process* %0, %struct.process** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %11 = load %struct.module*, %struct.module** %4, align 8
  %12 = getelementptr inbounds %struct.module, %struct.module* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %14 = load i64, i64* @DFI_PE, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %13, i64 %14
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store %struct.image_file_map* %20, %struct.image_file_map** %5, align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.image_file_map*, %struct.image_file_map** %5, align 8
  %23 = call i64 @pe_find_section(%struct.image_file_map* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.image_section_map* %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %2
  %26 = load %struct.image_file_map*, %struct.image_file_map** %5, align 8
  %27 = call i64 @pe_find_section(%struct.image_file_map* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.image_section_map* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  %30 = call i8* @image_map_section(%struct.image_section_map* %6)
  store i8* %30, i8** %9, align 8
  %31 = call i8* @image_map_section(%struct.image_section_map* %7)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** @IMAGE_NO_MAP, align 8
  %34 = icmp ne i8* %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** @IMAGE_NO_MAP, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load %struct.module*, %struct.module** %4, align 8
  %41 = load %struct.module*, %struct.module** %4, align 8
  %42 = getelementptr inbounds %struct.module, %struct.module* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.image_file_map*, %struct.image_file_map** %5, align 8
  %46 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %44, %51
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @image_get_map_size(%struct.image_section_map* %6)
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @image_get_map_size(%struct.image_section_map* %7)
  %57 = call i64 @stabs_parse(%struct.module* %40, i64 %52, i8* %53, i32 %54, i8* %55, i32 %56, i32* null, i32* null)
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %39, %35, %29
  %59 = call i32 @image_unmap_section(%struct.image_section_map* %6)
  %60 = call i32 @image_unmap_section(%struct.image_section_map* %7)
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.module*, %struct.module** %4, align 8
  %65 = call i32 @pe_locate_with_coff_symbol_table(%struct.module* %64)
  br label %66

66:                                               ; preds = %63, %58
  br label %67

67:                                               ; preds = %66, %25, %2
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)
  %72 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load i64, i64* %8, align 8
  ret i64 %73
}

declare dso_local i64 @pe_find_section(%struct.image_file_map*, i8*, %struct.image_section_map*) #1

declare dso_local i8* @image_map_section(%struct.image_section_map*) #1

declare dso_local i64 @stabs_parse(%struct.module*, i64, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @image_get_map_size(%struct.image_section_map*) #1

declare dso_local i32 @image_unmap_section(%struct.image_section_map*) #1

declare dso_local i32 @pe_locate_with_coff_symbol_table(%struct.module*) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
