; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_base_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_base_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.TYPE_14__ = type { %struct.symt**, i32 }
%struct.TYPE_15__ = type { %struct.symt* }
%struct.attribute = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_16__ = type { %struct.symt }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@DW_AT_name = common dso_local global i32 0, align 4
@DW_AT_byte_size = common dso_local global i32 0, align 4
@DW_AT_encoding = common dso_local global i32 0, align 4
@btULong = common dso_local global i32 0, align 4
@btBool = common dso_local global i32 0, align 4
@btComplex = common dso_local global i32 0, align 4
@btFloat = common dso_local global i32 0, align 4
@btUInt = common dso_local global i32 0, align 4
@btChar = common dso_local global i32 0, align 4
@btNoType = common dso_local global i32 0, align 4
@sc_void = common dso_local global i32 0, align 4
@sc_int1 = common dso_local global i32 0, align 4
@sc_int2 = common dso_local global i32 0, align 4
@sc_int4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unsupported children\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.TYPE_14__*, %struct.TYPE_15__*)* @dwarf2_parse_base_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @dwarf2_parse_base_type(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.symt*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.attribute, align 8
  %7 = alloca %struct.attribute, align 8
  %8 = alloca %struct.attribute, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 -1, i32* %10, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.symt*, %struct.symt** %12, align 8
  %14 = icmp ne %struct.symt* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.symt*, %struct.symt** %17, align 8
  store %struct.symt* %18, %struct.symt** %3, align 8
  br label %142

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = call i32 @dwarf2_debug_ctx(%struct.TYPE_14__* %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = call i32 @dwarf2_debug_di(%struct.TYPE_15__* %22)
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = load i32, i32* @DW_AT_name, align 4
  %28 = call i32 @dwarf2_find_attribute(%struct.TYPE_14__* %25, %struct.TYPE_15__* %26, i32 %27, %struct.attribute* %6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %30, %19
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = load i32, i32* @DW_AT_byte_size, align 4
  %37 = call i32 @dwarf2_find_attribute(%struct.TYPE_14__* %34, %struct.TYPE_15__* %35, i32 %36, %struct.attribute* %7)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = load i32, i32* @DW_AT_encoding, align 4
  %46 = call i32 @dwarf2_find_attribute(%struct.TYPE_14__* %43, %struct.TYPE_15__* %44, i32 %45, %struct.attribute* %8)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i32 130, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %71 [
    i32 130, label %55
    i32 138, label %56
    i32 137, label %58
    i32 136, label %60
    i32 135, label %62
    i32 134, label %64
    i32 132, label %65
    i32 133, label %67
    i32 131, label %69
  ]

55:                                               ; preds = %51
  store i32 128, i32* %9, align 4
  br label %73

56:                                               ; preds = %51
  %57 = load i32, i32* @btULong, align 4
  store i32 %57, i32* %9, align 4
  br label %73

58:                                               ; preds = %51
  %59 = load i32, i32* @btBool, align 4
  store i32 %59, i32* %9, align 4
  br label %73

60:                                               ; preds = %51
  %61 = load i32, i32* @btComplex, align 4
  store i32 %61, i32* %9, align 4
  br label %73

62:                                               ; preds = %51
  %63 = load i32, i32* @btFloat, align 4
  store i32 %63, i32* %9, align 4
  br label %73

64:                                               ; preds = %51
  store i32 129, i32* %9, align 4
  br label %73

65:                                               ; preds = %51
  %66 = load i32, i32* @btUInt, align 4
  store i32 %66, i32* %9, align 4
  br label %73

67:                                               ; preds = %51
  %68 = load i32, i32* @btChar, align 4
  store i32 %68, i32* %9, align 4
  br label %73

69:                                               ; preds = %51
  %70 = load i32, i32* @btChar, align 4
  store i32 %70, i32* %9, align 4
  br label %73

71:                                               ; preds = %51
  %72 = load i32, i32* @btNoType, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %69, %67, %65, %64, %62, %60, %58, %56, %55
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.TYPE_16__* @symt_new_basic(i32 %76, i32 %77, i32* %80, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store %struct.symt* %85, %struct.symt** %87, align 8
  %88 = load i32, i32* %9, align 4
  switch i32 %88, label %108 [
    i32 128, label %89
    i32 129, label %97
  ]

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* @sc_void, align 4
  store i32 %96, i32* %10, align 4
  br label %109

97:                                               ; preds = %73
  %98 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %107 [
    i32 1, label %101
    i32 2, label %103
    i32 4, label %105
  ]

101:                                              ; preds = %97
  %102 = load i32, i32* @sc_int1, align 4
  store i32 %102, i32* %10, align 4
  br label %107

103:                                              ; preds = %97
  %104 = load i32, i32* @sc_int2, align 4
  store i32 %104, i32* %10, align 4
  br label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @sc_int4, align 4
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %97, %105, %103, %101
  br label %109

108:                                              ; preds = %73
  br label %109

109:                                              ; preds = %108, %107, %89
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load %struct.symt**, %struct.symt*** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.symt*, %struct.symt** %115, i64 %117
  %119 = load %struct.symt*, %struct.symt** %118, align 8
  %120 = icmp ne %struct.symt* %119, null
  br i1 %120, label %131, label %121

121:                                              ; preds = %112
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load %struct.symt*, %struct.symt** %123, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load %struct.symt**, %struct.symt*** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.symt*, %struct.symt** %127, i64 %129
  store %struct.symt* %124, %struct.symt** %130, align 8
  br label %131

131:                                              ; preds = %121, %112, %109
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %134 = call i64 @dwarf2_get_di_children(%struct.TYPE_14__* %132, %struct.TYPE_15__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %131
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load %struct.symt*, %struct.symt** %140, align 8
  store %struct.symt* %141, %struct.symt** %3, align 8
  br label %142

142:                                              ; preds = %138, %15
  %143 = load %struct.symt*, %struct.symt** %3, align 8
  ret %struct.symt* %143
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_14__*) #1

declare dso_local i32 @dwarf2_debug_di(%struct.TYPE_15__*) #1

declare dso_local i32 @dwarf2_find_attribute(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, %struct.attribute*) #1

declare dso_local %struct.TYPE_16__* @symt_new_basic(i32, i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dwarf2_get_di_children(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
