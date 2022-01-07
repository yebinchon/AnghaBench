; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_dwarf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_dwarf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

@DFI_PE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s the DWARF debug info\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"successfully loaded\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"failed to load\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.module*)* @pe_load_dwarf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pe_load_dwarf(%struct.module* %0) #0 {
  %2 = alloca %struct.module*, align 8
  %3 = alloca %struct.image_file_map*, align 8
  %4 = alloca i64, align 8
  store %struct.module* %0, %struct.module** %2, align 8
  %5 = load %struct.module*, %struct.module** %2, align 8
  %6 = getelementptr inbounds %struct.module, %struct.module* %5, i32 0, i32 1
  %7 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %8 = load i64, i64* @DFI_PE, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %7, i64 %8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store %struct.image_file_map* %14, %struct.image_file_map** %3, align 8
  %15 = load %struct.module*, %struct.module** %2, align 8
  %16 = load %struct.module*, %struct.module** %2, align 8
  %17 = getelementptr inbounds %struct.module, %struct.module* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.image_file_map*, %struct.image_file_map** %3, align 8
  %21 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %19, %26
  %28 = load %struct.image_file_map*, %struct.image_file_map** %3, align 8
  %29 = call i64 @dwarf2_parse(%struct.module* %15, i64 %27, i32* null, %struct.image_file_map* %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i64 @dwarf2_parse(%struct.module*, i64, i32*, %struct.image_file_map*) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
