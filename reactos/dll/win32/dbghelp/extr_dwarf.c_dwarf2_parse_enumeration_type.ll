; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_enumeration_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_enumeration_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.symt*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.attribute = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32* }
%struct.symt_basic = type { i32 }
%struct.vector = type { i32 }
%struct.TYPE_20__ = type { %struct.symt }
%struct.symt_enum = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@DW_AT_name = common dso_local global i32 0, align 4
@DW_AT_byte_size = common dso_local global i32 0, align 4
@btInt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Unhandled Tag type 0x%lx at %s, for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.TYPE_18__*, %struct.TYPE_19__*)* @dwarf2_parse_enumeration_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @dwarf2_parse_enumeration_type(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.symt*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.attribute, align 8
  %7 = alloca %struct.attribute, align 8
  %8 = alloca %struct.symt_basic*, align 8
  %9 = alloca %struct.vector*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load %struct.symt*, %struct.symt** %13, align 8
  %15 = icmp ne %struct.symt* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.symt*, %struct.symt** %18, align 8
  store %struct.symt* %19, %struct.symt** %3, align 8
  br label %129

20:                                               ; preds = %2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = call i32 @dwarf2_debug_ctx(%struct.TYPE_18__* %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = call i32 @dwarf2_debug_di(%struct.TYPE_19__* %23)
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = load i32, i32* @DW_AT_name, align 4
  %29 = call i32 @dwarf2_find_attribute(%struct.TYPE_18__* %26, %struct.TYPE_19__* %27, i32 %28, %struct.attribute* %6)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %31, %20
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %37 = load i32, i32* @DW_AT_byte_size, align 4
  %38 = call i32 @dwarf2_find_attribute(%struct.TYPE_18__* %35, %struct.TYPE_19__* %36, i32 %37, %struct.attribute* %7)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %34
  %44 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %59 [
    i32 1, label %47
    i32 2, label %53
    i32 4, label %60
  ]

47:                                               ; preds = %43
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @btInt, align 4
  %52 = call %struct.symt_basic* @symt_new_basic(i32 %50, i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store %struct.symt_basic* %52, %struct.symt_basic** %8, align 8
  br label %66

53:                                               ; preds = %43
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @btInt, align 4
  %58 = call %struct.symt_basic* @symt_new_basic(i32 %56, i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store %struct.symt_basic* %58, %struct.symt_basic** %8, align 8
  br label %66

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %43, %59
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @btInt, align 4
  %65 = call %struct.symt_basic* @symt_new_basic(i32 %63, i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 4)
  store %struct.symt_basic* %65, %struct.symt_basic** %8, align 8
  br label %66

66:                                               ; preds = %60, %53, %47
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.symt_basic*, %struct.symt_basic** %8, align 8
  %74 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %73, i32 0, i32 0
  %75 = call %struct.TYPE_20__* @symt_new_enum(i32 %69, i32* %72, i32* %74)
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  store %struct.symt* %76, %struct.symt** %78, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %81 = call %struct.vector* @dwarf2_get_di_children(%struct.TYPE_18__* %79, %struct.TYPE_19__* %80)
  store %struct.vector* %81, %struct.vector** %9, align 8
  %82 = load %struct.vector*, %struct.vector** %9, align 8
  %83 = icmp ne %struct.vector* %82, null
  br i1 %83, label %84, label %125

84:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %121, %84
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.vector*, %struct.vector** %9, align 8
  %88 = call i32 @vector_length(%struct.vector* %87)
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %90, label %124

90:                                               ; preds = %85
  %91 = load %struct.vector*, %struct.vector** %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @vector_at(%struct.vector* %91, i32 %92)
  %94 = inttoptr i64 %93 to %struct.TYPE_19__**
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  store %struct.TYPE_19__* %95, %struct.TYPE_19__** %10, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %109 [
    i32 128, label %101
  ]

101:                                              ; preds = %90
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load %struct.symt*, %struct.symt** %105, align 8
  %107 = bitcast %struct.symt* %106 to %struct.symt_enum*
  %108 = call i32 @dwarf2_parse_enumerator(%struct.TYPE_18__* %102, %struct.TYPE_19__* %103, %struct.symt_enum* %107)
  br label %120

109:                                              ; preds = %90
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = call i32 @dwarf2_debug_ctx(%struct.TYPE_18__* %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = call i32 @dwarf2_debug_di(%struct.TYPE_19__* %117)
  %119 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %114, i32 %116, i32 %118)
  br label %120

120:                                              ; preds = %109, %101
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %85

124:                                              ; preds = %85
  br label %125

125:                                              ; preds = %124, %66
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load %struct.symt*, %struct.symt** %127, align 8
  store %struct.symt* %128, %struct.symt** %3, align 8
  br label %129

129:                                              ; preds = %125, %16
  %130 = load %struct.symt*, %struct.symt** %3, align 8
  ret %struct.symt* %130
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_18__*) #1

declare dso_local i32 @dwarf2_debug_di(%struct.TYPE_19__*) #1

declare dso_local i32 @dwarf2_find_attribute(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, %struct.attribute*) #1

declare dso_local %struct.symt_basic* @symt_new_basic(i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_20__* @symt_new_enum(i32, i32*, i32*) #1

declare dso_local %struct.vector* @dwarf2_get_di_children(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @vector_length(%struct.vector*) #1

declare dso_local i64 @vector_at(%struct.vector*, i32) #1

declare dso_local i32 @dwarf2_parse_enumerator(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.symt_enum*) #1

declare dso_local i32 @FIXME(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
