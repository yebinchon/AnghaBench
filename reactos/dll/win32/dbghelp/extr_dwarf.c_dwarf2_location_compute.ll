; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_location_compute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_location_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.module_format = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.symt_function = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.location = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i32*, i32 }
%struct.symt_compiland = type { i64 }

@SymTagCompiland = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"We'd expect function %s's container to exist and be a compiland\0A\00", align 1
@loc_err_internal = common dso_local global i32 0, align 4
@loc_err_out_of_scope = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported local kind %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.process*, %struct.module_format*, %struct.symt_function*, %struct.location*)* @dwarf2_location_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_location_compute(%struct.process* %0, %struct.module_format* %1, %struct.symt_function* %2, %struct.location* %3) #0 {
  %5 = alloca %struct.process*, align 8
  %6 = alloca %struct.module_format*, align 8
  %7 = alloca %struct.symt_function*, align 8
  %8 = alloca %struct.location*, align 8
  %9 = alloca %struct.location, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca i32*, align 8
  store %struct.process* %0, %struct.process** %5, align 8
  store %struct.module_format* %1, %struct.module_format** %6, align 8
  store %struct.symt_function* %2, %struct.symt_function** %7, align 8
  store %struct.location* %3, %struct.location** %8, align 8
  %14 = load %struct.symt_function*, %struct.symt_function** %7, align 8
  %15 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.symt_function*, %struct.symt_function** %7, align 8
  %20 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SymTagCompiland, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %18, %4
  %27 = load %struct.symt_function*, %struct.symt_function** %7, align 8
  %28 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @WARN(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @loc_err_internal, align 4
  store i32 %32, i32* %11, align 4
  br label %112

33:                                               ; preds = %18
  %34 = load %struct.process*, %struct.process** %5, align 8
  %35 = getelementptr inbounds %struct.process, %struct.process* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.symt_function*, %struct.symt_function** %7, align 8
  %39 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = bitcast %struct.TYPE_12__* %40 to %struct.symt_compiland*
  %42 = getelementptr inbounds %struct.symt_compiland, %struct.symt_compiland* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %37, %43
  store i64 %44, i64* %10, align 8
  %45 = load %struct.process*, %struct.process** %5, align 8
  %46 = load %struct.module_format*, %struct.module_format** %6, align 8
  %47 = load %struct.symt_function*, %struct.symt_function** %7, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @loc_compute_frame(%struct.process* %45, %struct.module_format* %46, %struct.symt_function* %47, i64 %48, %struct.location* %9)
  store i32 %49, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %111

51:                                               ; preds = %33
  %52 = load %struct.location*, %struct.location** %8, align 8
  %53 = getelementptr inbounds %struct.location, %struct.location* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %104 [
    i32 130, label %55
    i32 131, label %74
    i32 129, label %103
    i32 128, label %103
  ]

55:                                               ; preds = %51
  %56 = load %struct.module_format*, %struct.module_format** %6, align 8
  %57 = load %struct.module_format*, %struct.module_format** %6, align 8
  %58 = getelementptr inbounds %struct.module_format, %struct.module_format* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.location*, %struct.location** %8, align 8
  %65 = getelementptr inbounds %struct.location, %struct.location* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @dwarf2_lookup_loclist(%struct.module_format* %56, i64 %67, i64 %68, %struct.TYPE_16__* %12)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  br label %97

72:                                               ; preds = %55
  %73 = load i32, i32* @loc_err_out_of_scope, align 4
  store i32 %73, i32* %11, align 4
  br label %110

74:                                               ; preds = %51
  %75 = load %struct.location*, %struct.location** %8, align 8
  %76 = getelementptr inbounds %struct.location, %struct.location* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  store i32* %80, i32** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = ptrtoint i32* %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  store i32 %88, i32* %89, align 8
  %90 = load %struct.module_format*, %struct.module_format** %6, align 8
  %91 = getelementptr inbounds %struct.module_format, %struct.module_format* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i32 %95, i32* %96, align 8
  br label %97

97:                                               ; preds = %74, %71
  %98 = load %struct.location*, %struct.location** %8, align 8
  %99 = load %struct.process*, %struct.process** %5, align 8
  %100 = getelementptr inbounds %struct.process, %struct.process* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @compute_location(%struct.TYPE_16__* %12, %struct.location* %98, i32 %101, %struct.location* %9)
  store i32 %102, i32* %11, align 4
  br label %110

103:                                              ; preds = %51, %51
  br label %110

104:                                              ; preds = %51
  %105 = load %struct.location*, %struct.location** %8, align 8
  %106 = getelementptr inbounds %struct.location, %struct.location* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @loc_err_internal, align 4
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %104, %103, %97, %72
  br label %111

111:                                              ; preds = %110, %33
  br label %112

112:                                              ; preds = %111, %26
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load %struct.location*, %struct.location** %8, align 8
  %117 = getelementptr inbounds %struct.location, %struct.location* %116, i32 0, i32 0
  store i32 129, i32* %117, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.location*, %struct.location** %8, align 8
  %120 = getelementptr inbounds %struct.location, %struct.location* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %112
  ret void
}

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @loc_compute_frame(%struct.process*, %struct.module_format*, %struct.symt_function*, i64, %struct.location*) #1

declare dso_local i32 @dwarf2_lookup_loclist(%struct.module_format*, i64, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @compute_location(%struct.TYPE_16__*, %struct.location*, i32, %struct.location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
