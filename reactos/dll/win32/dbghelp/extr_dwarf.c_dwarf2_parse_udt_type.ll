; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_udt_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_udt_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { %struct.symt*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.attribute = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8*, i64 }
%struct.vector = type { i32 }
%struct.TYPE_30__ = type { %struct.symt }
%struct.symt_udt = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@DW_AT_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"zz_anon_zz\00", align 1
@DW_AT_byte_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unhandled Tag type 0x%lx at %s, for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.TYPE_28__*, %struct.TYPE_29__*, i32)* @dwarf2_parse_udt_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @dwarf2_parse_udt_type(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1, i32 %2) #0 {
  %4 = alloca %struct.symt*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.attribute, align 8
  %9 = alloca %struct.attribute, align 8
  %10 = alloca %struct.vector*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %15 = load %struct.symt*, %struct.symt** %14, align 8
  %16 = icmp ne %struct.symt* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %20 = load %struct.symt*, %struct.symt** %19, align 8
  store %struct.symt* %20, %struct.symt** %4, align 8
  br label %129

21:                                               ; preds = %3
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %23 = call i32 @dwarf2_debug_ctx(%struct.TYPE_28__* %22)
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %25 = call i32 @dwarf2_debug_di(%struct.TYPE_29__* %24)
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %29 = load i32, i32* @DW_AT_name, align 4
  %30 = call i32 @dwarf2_find_attribute(%struct.TYPE_28__* %27, %struct.TYPE_29__* %28, i32 %29, %struct.attribute* %8)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  br label %35

35:                                               ; preds = %32, %21
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %38 = load i32, i32* @DW_AT_byte_size, align 4
  %39 = call i32 @dwarf2_find_attribute(%struct.TYPE_28__* %36, %struct.TYPE_29__* %37, i32 %38, %struct.attribute* %9)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %50 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @dwarf2_get_cpp_name(%struct.TYPE_28__* %48, %struct.TYPE_29__* %49, i8* %52)
  %54 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call %struct.TYPE_30__* @symt_new_udt(i32 %47, i32 %53, i64 %56, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 0
  store %struct.symt* %59, %struct.symt** %61, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %64 = call %struct.vector* @dwarf2_get_di_children(%struct.TYPE_28__* %62, %struct.TYPE_29__* %63)
  store %struct.vector* %64, %struct.vector** %10, align 8
  %65 = load %struct.vector*, %struct.vector** %10, align 8
  %66 = icmp ne %struct.vector* %65, null
  br i1 %66, label %67, label %125

67:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %121, %67
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.vector*, %struct.vector** %10, align 8
  %71 = call i32 @vector_length(%struct.vector* %70)
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %73, label %124

73:                                               ; preds = %68
  %74 = load %struct.vector*, %struct.vector** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @vector_at(%struct.vector* %74, i32 %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_29__**
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %77, align 8
  store %struct.TYPE_29__* %78, %struct.TYPE_29__** %11, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %109 [
    i32 142, label %84
    i32 136, label %88
    i32 139, label %96
    i32 133, label %100
    i32 140, label %104
    i32 134, label %108
    i32 141, label %108
    i32 129, label %108
    i32 130, label %108
    i32 137, label %108
    i32 132, label %108
    i32 131, label %108
    i32 128, label %108
    i32 138, label %108
    i32 135, label %108
    i32 143, label %108
    i32 144, label %108
  ]

84:                                               ; preds = %73
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %87 = call i32 @dwarf2_parse_array_type(%struct.TYPE_28__* %85, %struct.TYPE_29__* %86)
  br label %120

88:                                               ; preds = %73
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 0
  %93 = load %struct.symt*, %struct.symt** %92, align 8
  %94 = bitcast %struct.symt* %93 to %struct.symt_udt*
  %95 = call i32 @dwarf2_parse_udt_member(%struct.TYPE_28__* %89, %struct.TYPE_29__* %90, %struct.symt_udt* %94)
  br label %120

96:                                               ; preds = %73
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %99 = call i32 @dwarf2_parse_enumeration_type(%struct.TYPE_28__* %97, %struct.TYPE_29__* %98)
  br label %120

100:                                              ; preds = %73
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %103 = call i32 @dwarf2_parse_subprogram(%struct.TYPE_28__* %101, %struct.TYPE_29__* %102)
  br label %120

104:                                              ; preds = %73
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %107 = call i32 @dwarf2_parse_const_type(%struct.TYPE_28__* %105, %struct.TYPE_29__* %106)
  br label %120

108:                                              ; preds = %73, %73, %73, %73, %73, %73, %73, %73, %73, %73, %73, %73
  br label %120

109:                                              ; preds = %73
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %116 = call i32 @dwarf2_debug_ctx(%struct.TYPE_28__* %115)
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %118 = call i32 @dwarf2_debug_di(%struct.TYPE_29__* %117)
  %119 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %116, i32 %118)
  br label %120

120:                                              ; preds = %109, %108, %104, %100, %96, %88, %84
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %12, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %68

124:                                              ; preds = %68
  br label %125

125:                                              ; preds = %124, %44
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  %128 = load %struct.symt*, %struct.symt** %127, align 8
  store %struct.symt* %128, %struct.symt** %4, align 8
  br label %129

129:                                              ; preds = %125, %17
  %130 = load %struct.symt*, %struct.symt** %4, align 8
  ret %struct.symt* %130
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_28__*) #1

declare dso_local i32 @dwarf2_debug_di(%struct.TYPE_29__*) #1

declare dso_local i32 @dwarf2_find_attribute(%struct.TYPE_28__*, %struct.TYPE_29__*, i32, %struct.attribute*) #1

declare dso_local %struct.TYPE_30__* @symt_new_udt(i32, i32, i64, i32) #1

declare dso_local i32 @dwarf2_get_cpp_name(%struct.TYPE_28__*, %struct.TYPE_29__*, i8*) #1

declare dso_local %struct.vector* @dwarf2_get_di_children(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @vector_length(%struct.vector*) #1

declare dso_local i64 @vector_at(%struct.vector*, i32) #1

declare dso_local i32 @dwarf2_parse_array_type(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @dwarf2_parse_udt_member(%struct.TYPE_28__*, %struct.TYPE_29__*, %struct.symt_udt*) #1

declare dso_local i32 @dwarf2_parse_enumeration_type(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @dwarf2_parse_subprogram(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @dwarf2_parse_const_type(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @FIXME(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
