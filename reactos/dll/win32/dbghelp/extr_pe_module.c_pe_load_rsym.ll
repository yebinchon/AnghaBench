; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_rsym.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_rsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_5__, %struct.TYPE_8__** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.image_file_map }
%struct.image_file_map = type { i32 }
%struct.image_section_map = type { i32 }

@DFI_PE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c".rossym\00", align 1
@IMAGE_NO_MAP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s the RSYM debug info\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"successfully loaded\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"failed to load\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.module*)* @pe_load_rsym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pe_load_rsym(%struct.module* %0) #0 {
  %2 = alloca %struct.module*, align 8
  %3 = alloca %struct.image_file_map*, align 8
  %4 = alloca %struct.image_section_map, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %2, align 8
  %7 = load %struct.module*, %struct.module** %2, align 8
  %8 = getelementptr inbounds %struct.module, %struct.module* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %10 = load i64, i64* @DFI_PE, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %9, i64 %10
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.image_file_map* %16, %struct.image_file_map** %3, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.image_file_map*, %struct.image_file_map** %3, align 8
  %19 = call i64 @pe_find_section(%struct.image_file_map* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.image_section_map* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %1
  %22 = call i8* @image_map_section(%struct.image_section_map* %4)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** @IMAGE_NO_MAP, align 8
  %25 = icmp ne i8* %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.module*, %struct.module** %2, align 8
  %28 = load %struct.module*, %struct.module** %2, align 8
  %29 = getelementptr inbounds %struct.module, %struct.module* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @image_get_map_size(%struct.image_section_map* %4)
  %34 = call i64 @rsym_parse(%struct.module* %27, i32 %31, i8* %32, i32 %33)
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %26, %21
  %36 = call i32 @image_unmap_section(%struct.image_section_map* %4)
  br label %37

37:                                               ; preds = %35, %1
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i64 @pe_find_section(%struct.image_file_map*, i8*, %struct.image_section_map*) #1

declare dso_local i8* @image_map_section(%struct.image_section_map*) #1

declare dso_local i64 @rsym_parse(%struct.module*, i32, i8*, i32) #1

declare dso_local i32 @image_get_map_size(%struct.image_section_map*) #1

declare dso_local i32 @image_unmap_section(%struct.image_section_map*) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
