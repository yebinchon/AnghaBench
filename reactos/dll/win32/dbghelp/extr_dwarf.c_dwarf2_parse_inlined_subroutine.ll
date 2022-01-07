; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_inlined_subroutine.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_inlined_subroutine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_23__*, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.symt_block = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.vector = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"cannot read range\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unhandled Tag type 0x%lx at %s, for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.symt_block*, %struct.TYPE_22__*)* @dwarf2_parse_inlined_subroutine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_parse_inlined_subroutine(%struct.TYPE_21__* %0, %struct.symt_block* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.symt_block*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.symt_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vector*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.symt_block* %1, %struct.symt_block** %5, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %6, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %16 = call i32 @dwarf2_debug_ctx(%struct.TYPE_24__* %15)
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = call i32 @dwarf2_debug_di(%struct.TYPE_22__* %17)
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %24 = call i32 @dwarf2_read_range(%struct.TYPE_24__* %22, %struct.TYPE_22__* %23, i64* %8, i64* %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %127

28:                                               ; preds = %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  %37 = load %struct.symt_block*, %struct.symt_block** %5, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %42, %43
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %44, %49
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub i64 %51, %52
  %54 = call %struct.symt_block* @symt_open_func_block(i32 %33, %struct.TYPE_23__* %36, %struct.symt_block* %37, i64 %50, i64 %53)
  store %struct.symt_block* %54, %struct.symt_block** %7, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = call %struct.vector* @dwarf2_get_di_children(%struct.TYPE_24__* %57, %struct.TYPE_22__* %58)
  store %struct.vector* %59, %struct.vector** %10, align 8
  %60 = load %struct.vector*, %struct.vector** %10, align 8
  %61 = icmp ne %struct.vector* %60, null
  br i1 %61, label %62, label %116

62:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %112, %62
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.vector*, %struct.vector** %10, align 8
  %66 = call i32 @vector_length(%struct.vector* %65)
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %68, label %115

68:                                               ; preds = %63
  %69 = load %struct.vector*, %struct.vector** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @vector_at(%struct.vector* %69, i32 %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_22__**
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  store %struct.TYPE_22__* %73, %struct.TYPE_22__** %11, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %98 [
    i32 132, label %79
    i32 128, label %79
    i32 129, label %84
    i32 131, label %89
    i32 130, label %93
    i32 133, label %97
  ]

79:                                               ; preds = %68, %68
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %81 = load %struct.symt_block*, %struct.symt_block** %7, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %83 = call i32 @dwarf2_parse_variable(%struct.TYPE_21__* %80, %struct.symt_block* %81, %struct.TYPE_22__* %82)
  br label %111

84:                                               ; preds = %68
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = load %struct.symt_block*, %struct.symt_block** %7, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %88 = call i32 @dwarf2_parse_subprogram_block(%struct.TYPE_21__* %85, %struct.symt_block* %86, %struct.TYPE_22__* %87)
  br label %111

89:                                               ; preds = %68
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %91 = load %struct.symt_block*, %struct.symt_block** %7, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  call void @dwarf2_parse_inlined_subroutine(%struct.TYPE_21__* %90, %struct.symt_block* %91, %struct.TYPE_22__* %92)
  br label %111

93:                                               ; preds = %68
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %96 = call i32 @dwarf2_parse_subprogram_label(%struct.TYPE_21__* %94, %struct.TYPE_22__* %95)
  br label %111

97:                                               ; preds = %68
  br label %111

98:                                               ; preds = %68
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %105, align 8
  %107 = call i32 @dwarf2_debug_ctx(%struct.TYPE_24__* %106)
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %109 = call i32 @dwarf2_debug_di(%struct.TYPE_22__* %108)
  %110 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %107, i32 %109)
  br label %111

111:                                              ; preds = %98, %97, %93, %89, %84, %79
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %63

115:                                              ; preds = %63
  br label %116

116:                                              ; preds = %115, %28
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %123, align 8
  %125 = load %struct.symt_block*, %struct.symt_block** %7, align 8
  %126 = call i32 @symt_close_func_block(i32 %121, %struct.TYPE_23__* %124, %struct.symt_block* %125, i32 0)
  br label %127

127:                                              ; preds = %116, %26
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_debug_di(%struct.TYPE_22__*) #1

declare dso_local i32 @dwarf2_read_range(%struct.TYPE_24__*, %struct.TYPE_22__*, i64*, i64*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local %struct.symt_block* @symt_open_func_block(i32, %struct.TYPE_23__*, %struct.symt_block*, i64, i64) #1

declare dso_local %struct.vector* @dwarf2_get_di_children(%struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i32 @vector_length(%struct.vector*) #1

declare dso_local i64 @vector_at(%struct.vector*, i32) #1

declare dso_local i32 @dwarf2_parse_variable(%struct.TYPE_21__*, %struct.symt_block*, %struct.TYPE_22__*) #1

declare dso_local i32 @dwarf2_parse_subprogram_block(%struct.TYPE_21__*, %struct.symt_block*, %struct.TYPE_22__*) #1

declare dso_local i32 @dwarf2_parse_subprogram_label(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @symt_close_func_block(i32, %struct.TYPE_23__*, %struct.symt_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
