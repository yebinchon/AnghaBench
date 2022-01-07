; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_subroutine_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_subroutine_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.symt** }
%struct.TYPE_14__ = type { %struct.symt*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.symt_function_signature = type { %struct.symt }
%struct.vector = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@sc_void = common dso_local global i64 0, align 8
@CV_CALL_FAR_C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unsupported unspecified parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.TYPE_13__*, %struct.TYPE_14__*)* @dwarf2_parse_subroutine_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @dwarf2_parse_subroutine_type(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.symt*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.symt*, align 8
  %7 = alloca %struct.symt_function_signature*, align 8
  %8 = alloca %struct.vector*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.symt*, %struct.symt** %12, align 8
  %14 = icmp ne %struct.symt* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.symt*, %struct.symt** %17, align 8
  store %struct.symt* %18, %struct.symt** %3, align 8
  br label %88

19:                                               ; preds = %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = call i32 @dwarf2_debug_ctx(%struct.TYPE_13__* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = call i32 @dwarf2_debug_di(%struct.TYPE_14__* %22)
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = call %struct.symt* @dwarf2_lookup_type(%struct.TYPE_13__* %25, %struct.TYPE_14__* %26)
  store %struct.symt* %27, %struct.symt** %6, align 8
  %28 = icmp ne %struct.symt* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %19
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.symt**, %struct.symt*** %31, align 8
  %33 = load i64, i64* @sc_void, align 8
  %34 = getelementptr inbounds %struct.symt*, %struct.symt** %32, i64 %33
  %35 = load %struct.symt*, %struct.symt** %34, align 8
  store %struct.symt* %35, %struct.symt** %6, align 8
  %36 = load %struct.symt*, %struct.symt** %6, align 8
  %37 = call i32 @assert(%struct.symt* %36)
  br label %38

38:                                               ; preds = %29, %19
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.symt*, %struct.symt** %6, align 8
  %43 = load i32, i32* @CV_CALL_FAR_C, align 4
  %44 = call %struct.symt_function_signature* @symt_new_function_signature(i32 %41, %struct.symt* %42, i32 %43)
  store %struct.symt_function_signature* %44, %struct.symt_function_signature** %7, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = call %struct.vector* @dwarf2_get_di_children(%struct.TYPE_13__* %45, %struct.TYPE_14__* %46)
  store %struct.vector* %47, %struct.vector** %8, align 8
  %48 = load %struct.vector*, %struct.vector** %8, align 8
  %49 = icmp ne %struct.vector* %48, null
  br i1 %49, label %50, label %83

50:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.vector*, %struct.vector** %8, align 8
  %54 = call i32 @vector_length(%struct.vector* %53)
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %51
  %57 = load %struct.vector*, %struct.vector** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @vector_at(%struct.vector* %57, i32 %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_14__**
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %9, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %78 [
    i32 129, label %67
    i32 128, label %76
  ]

67:                                               ; preds = %56
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.symt_function_signature*, %struct.symt_function_signature** %7, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = call %struct.symt* @dwarf2_lookup_type(%struct.TYPE_13__* %72, %struct.TYPE_14__* %73)
  %75 = call i32 @symt_add_function_signature_parameter(i32 %70, %struct.symt_function_signature* %71, %struct.symt* %74)
  br label %78

76:                                               ; preds = %56
  %77 = call i32 @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %56, %76, %67
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %51

82:                                               ; preds = %51
  br label %83

83:                                               ; preds = %82, %38
  %84 = load %struct.symt_function_signature*, %struct.symt_function_signature** %7, align 8
  %85 = getelementptr inbounds %struct.symt_function_signature, %struct.symt_function_signature* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  store %struct.symt* %85, %struct.symt** %87, align 8
  store %struct.symt* %85, %struct.symt** %3, align 8
  br label %88

88:                                               ; preds = %83, %15
  %89 = load %struct.symt*, %struct.symt** %3, align 8
  ret %struct.symt* %89
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_13__*) #1

declare dso_local i32 @dwarf2_debug_di(%struct.TYPE_14__*) #1

declare dso_local %struct.symt* @dwarf2_lookup_type(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @assert(%struct.symt*) #1

declare dso_local %struct.symt_function_signature* @symt_new_function_signature(i32, %struct.symt*, i32) #1

declare dso_local %struct.vector* @dwarf2_get_di_children(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @vector_length(%struct.vector*) #1

declare dso_local i64 @vector_at(%struct.vector*, i32) #1

declare dso_local i32 @symt_add_function_signature_parameter(i32, %struct.symt_function_signature*, %struct.symt*) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
