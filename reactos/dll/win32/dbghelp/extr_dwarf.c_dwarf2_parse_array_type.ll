; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_array_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.symt** }
%struct.TYPE_19__ = type { %struct.symt*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.attribute = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.vector = type { i32 }
%struct.TYPE_20__ = type { %struct.symt }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@sc_int4 = common dso_local global i64 0, align 8
@DW_AT_lower_bound = common dso_local global i32 0, align 4
@DW_AT_upper_bound = common dso_local global i32 0, align 4
@DW_AT_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unhandled Tag type 0x%lx at %s, for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.TYPE_18__*, %struct.TYPE_19__*)* @dwarf2_parse_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @dwarf2_parse_array_type(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.symt*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.symt*, align 8
  %7 = alloca %struct.symt*, align 8
  %8 = alloca %struct.attribute, align 4
  %9 = alloca %struct.attribute, align 4
  %10 = alloca %struct.attribute, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vector*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.symt* null, %struct.symt** %7, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load %struct.symt*, %struct.symt** %15, align 8
  %17 = icmp ne %struct.symt* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load %struct.symt*, %struct.symt** %20, align 8
  store %struct.symt* %21, %struct.symt** %3, align 8
  br label %136

22:                                               ; preds = %2
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = call i32 @dwarf2_debug_ctx(%struct.TYPE_18__* %23)
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = call i32 @dwarf2_debug_di(%struct.TYPE_19__* %25)
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = call %struct.symt* @dwarf2_lookup_type(%struct.TYPE_18__* %28, %struct.TYPE_19__* %29)
  store %struct.symt* %30, %struct.symt** %6, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = call %struct.vector* @dwarf2_get_di_children(%struct.TYPE_18__* %31, %struct.TYPE_19__* %32)
  store %struct.vector* %33, %struct.vector** %13, align 8
  %34 = icmp ne %struct.vector* %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %22
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load %struct.symt**, %struct.symt*** %37, align 8
  %39 = load i64, i64* @sc_int4, align 8
  %40 = getelementptr inbounds %struct.symt*, %struct.symt** %38, i64 %39
  %41 = load %struct.symt*, %struct.symt** %40, align 8
  store %struct.symt* %41, %struct.symt** %7, align 8
  %42 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 4
  br label %117

46:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %113, %46
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.vector*, %struct.vector** %13, align 8
  %50 = call i32 @vector_length(%struct.vector* %49)
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %52, label %116

52:                                               ; preds = %47
  %53 = load %struct.vector*, %struct.vector** %13, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @vector_at(%struct.vector* %53, i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_19__**
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  store %struct.TYPE_19__* %57, %struct.TYPE_19__** %11, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %101 [
    i32 128, label %63
  ]

63:                                               ; preds = %52
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %66 = call %struct.symt* @dwarf2_lookup_type(%struct.TYPE_18__* %64, %struct.TYPE_19__* %65)
  store %struct.symt* %66, %struct.symt** %7, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %69 = load i32, i32* @DW_AT_lower_bound, align 4
  %70 = call i32 @dwarf2_find_attribute(%struct.TYPE_18__* %67, %struct.TYPE_19__* %68, i32 %69, %struct.attribute* %8)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %63
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %78 = load i32, i32* @DW_AT_upper_bound, align 4
  %79 = call i32 @dwarf2_find_attribute(%struct.TYPE_18__* %76, %struct.TYPE_19__* %77, i32 %78, %struct.attribute* %9)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %75
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %87 = load i32, i32* @DW_AT_count, align 4
  %88 = call i32 @dwarf2_find_attribute(%struct.TYPE_18__* %85, %struct.TYPE_19__* %86, i32 %87, %struct.attribute* %10)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.attribute, %struct.attribute* %10, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %90, %84
  br label %112

101:                                              ; preds = %52
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = call i32 @dwarf2_debug_ctx(%struct.TYPE_18__* %107)
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = call i32 @dwarf2_debug_di(%struct.TYPE_19__* %109)
  %111 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %108, i32 %110)
  br label %112

112:                                              ; preds = %101, %100
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %47

116:                                              ; preds = %47
  br label %117

117:                                              ; preds = %116, %35
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.symt*, %struct.symt** %6, align 8
  %128 = load %struct.symt*, %struct.symt** %7, align 8
  %129 = call %struct.TYPE_20__* @symt_new_array(i32 %120, i32 %123, i32 %126, %struct.symt* %127, %struct.symt* %128)
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  store %struct.symt* %130, %struct.symt** %132, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load %struct.symt*, %struct.symt** %134, align 8
  store %struct.symt* %135, %struct.symt** %3, align 8
  br label %136

136:                                              ; preds = %117, %18
  %137 = load %struct.symt*, %struct.symt** %3, align 8
  ret %struct.symt* %137
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_18__*) #1

declare dso_local i32 @dwarf2_debug_di(%struct.TYPE_19__*) #1

declare dso_local %struct.symt* @dwarf2_lookup_type(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local %struct.vector* @dwarf2_get_di_children(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @vector_length(%struct.vector*) #1

declare dso_local i64 @vector_at(%struct.vector*, i32) #1

declare dso_local i32 @dwarf2_find_attribute(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, %struct.attribute*) #1

declare dso_local i32 @FIXME(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @symt_new_array(i32, i32, i32, %struct.symt*, %struct.symt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
