; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_compute_location_attr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_compute_location_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.location = type { i64, i32, i64 }
%struct.attribute = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@loc_absolute = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@loc_dwarf2_location_list = common dso_local global i64 0, align 8
@Wine_DW_no_register = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported yet form %lx\0A\00", align 1
@DFI_DWARF = common dso_local global i64 0, align 8
@loc_error = common dso_local global i64 0, align 8
@loc_dwarf2_block = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, i64, %struct.location*, %struct.location*)* @dwarf2_compute_location_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf2_compute_location_attr(%struct.TYPE_19__* %0, i32* %1, i64 %2, %struct.location* %3, %struct.location* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.location*, align 8
  %11 = alloca %struct.location*, align 8
  %12 = alloca %struct.attribute, align 8
  %13 = alloca %struct.TYPE_18__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.location* %3, %struct.location** %10, align 8
  store %struct.location* %4, %struct.location** %11, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @dwarf2_find_attribute(%struct.TYPE_19__* %16, i32* %17, i64 %18, %struct.attribute* %12)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %6, align 4
  br label %148

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %52 [
    i32 133, label %26
    i32 132, label %26
    i32 128, label %26
    i32 129, label %26
    i32 131, label %38
    i32 130, label %38
    i32 137, label %51
    i32 136, label %51
    i32 135, label %51
    i32 134, label %51
  ]

26:                                               ; preds = %23, %23, %23, %23
  %27 = load i64, i64* @loc_absolute, align 8
  %28 = load %struct.location*, %struct.location** %10, align 8
  %29 = getelementptr inbounds %struct.location, %struct.location* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.location*, %struct.location** %10, align 8
  %31 = getelementptr inbounds %struct.location, %struct.location* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.location*, %struct.location** %10, align 8
  %36 = getelementptr inbounds %struct.location, %struct.location* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %6, align 4
  br label %148

38:                                               ; preds = %23, %23
  %39 = load i64, i64* @loc_dwarf2_location_list, align 8
  %40 = load %struct.location*, %struct.location** %10, align 8
  %41 = getelementptr inbounds %struct.location, %struct.location* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @Wine_DW_no_register, align 4
  %43 = load %struct.location*, %struct.location** %10, align 8
  %44 = getelementptr inbounds %struct.location, %struct.location* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.location*, %struct.location** %10, align 8
  %49 = getelementptr inbounds %struct.location, %struct.location* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %6, align 4
  br label %148

51:                                               ; preds = %23, %23, %23, %23
  br label %57

52:                                               ; preds = %23
  %53 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %6, align 4
  br label %148

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %146

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %72, %76
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %82, align 8
  %84 = load i64, i64* @DFI_DWARF, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %83, i64 %84
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  store i32 %91, i32* %92, align 4
  %93 = load %struct.location*, %struct.location** %10, align 8
  %94 = load %struct.location*, %struct.location** %11, align 8
  %95 = call i32 @compute_location(%struct.TYPE_18__* %13, %struct.location* %93, i32* null, %struct.location* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ult i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %63
  %99 = load i64, i64* @loc_error, align 8
  %100 = load %struct.location*, %struct.location** %10, align 8
  %101 = getelementptr inbounds %struct.location, %struct.location* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.location*, %struct.location** %10, align 8
  %104 = getelementptr inbounds %struct.location, %struct.location* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  br label %145

105:                                              ; preds = %63
  %106 = load %struct.location*, %struct.location** %10, align 8
  %107 = getelementptr inbounds %struct.location, %struct.location* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @loc_dwarf2_block, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %144

111:                                              ; preds = %105
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = add i64 4, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32* @pool_alloc(i32* %115, i32 %122)
  store i32* %123, i32** %15, align 8
  %124 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %15, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %15, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @memcpy(i32* %130, i32 %134, i32 %138)
  %140 = load i32*, i32** %15, align 8
  %141 = ptrtoint i32* %140 to i64
  %142 = load %struct.location*, %struct.location** %10, align 8
  %143 = getelementptr inbounds %struct.location, %struct.location* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %111, %105
  br label %145

145:                                              ; preds = %144, %98
  br label %146

146:                                              ; preds = %145, %57
  %147 = load i32, i32* @TRUE, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %146, %52, %38, %26, %21
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32 @dwarf2_find_attribute(%struct.TYPE_19__*, i32*, i64, %struct.attribute*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @compute_location(%struct.TYPE_18__*, %struct.location*, i32*, %struct.location*) #1

declare dso_local i32* @pool_alloc(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
