; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_map_directory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_map_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i64, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@DMT_PE = common dso_local global i64 0, align 8
@DFI_PE = common dso_local global i64 0, align 8
@IMAGE_NUMBEROF_DIRECTORY_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pe_map_directory(%struct.module* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.module*, %struct.module** %5, align 8
  %11 = getelementptr inbounds %struct.module, %struct.module* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DMT_PE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.module*, %struct.module** %5, align 8
  %17 = getelementptr inbounds %struct.module, %struct.module* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %17, align 8
  %19 = load i64, i64* @DFI_PE, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %18, i64 %19
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15, %3
  store i8* null, i8** %4, align 8
  br label %69

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IMAGE_NUMBEROF_DIRECTORY_ENTRIES, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = load %struct.module*, %struct.module** %5, align 8
  %30 = getelementptr inbounds %struct.module, %struct.module* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %30, align 8
  %32 = load i64, i64* @DFI_PE, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %31, i64 %32
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = call i8* @pe_map_full(i32* %38, %struct.TYPE_14__** %8)
  store i8* %39, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %28, %24
  store i8* null, i8** %4, align 8
  br label %69

42:                                               ; preds = %28
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %45, %42
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @RtlImageRvaToVa(%struct.TYPE_14__* %57, i8* %58, i32 %67, i32* null)
  store i8* %68, i8** %4, align 8
  br label %69

69:                                               ; preds = %56, %41, %23
  %70 = load i8*, i8** %4, align 8
  ret i8* %70
}

declare dso_local i8* @pe_map_full(i32*, %struct.TYPE_14__**) #1

declare dso_local i8* @RtlImageRvaToVa(%struct.TYPE_14__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
