; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil_dfg.c_edf_use_new_push_1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil_dfg.c_edf_use_new_push_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"result_\00", align 1
@R_ANAL_ESIL_DFG_BLOCK_RESULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32 (i32, i32)*)* @edf_use_new_push_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edf_use_new_push_1(%struct.TYPE_18__* %0, i8* %1, i32 (i32, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i32, i32)*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i32, i32)* %2, i32 (i32, i32)** %7, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %8, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call %struct.TYPE_16__* @r_anal_esil_dfg_node_new(%struct.TYPE_17__* %21, i8* %22)
  %24 = call %struct.TYPE_15__* @r_graph_add_node(i32 %20, %struct.TYPE_16__* %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %9, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %10, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %29 = icmp ne %struct.TYPE_15__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

31:                                               ; preds = %3
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = call %struct.TYPE_16__* @r_anal_esil_dfg_node_new(%struct.TYPE_17__* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %11, align 8
  %34 = load i32, i32* @R_ANAL_ESIL_DFG_BLOCK_RESULT, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = call i32 @r_strbuf_appendf(i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %46 = icmp ne i32 (i32, i32)* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %31
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %12, align 8
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @r_strbuf_get(i32 %58)
  %60 = call i32 %52(i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %47, %31
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %66 = call %struct.TYPE_15__* @r_graph_add_node(i32 %64, %struct.TYPE_16__* %65)
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %13, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @r_strbuf_get(i32 %70)
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %73 = call i32 @_edf_var_set(%struct.TYPE_17__* %67, i32 %71, %struct.TYPE_15__* %72)
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = call i32 @r_graph_add_edge(i32 %76, %struct.TYPE_15__* %77, %struct.TYPE_15__* %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %85 = call i32 @r_graph_add_edge(i32 %82, %struct.TYPE_15__* %83, %struct.TYPE_15__* %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @r_strbuf_get(i32 %89)
  %91 = call i32 @r_anal_esil_push(%struct.TYPE_18__* %86, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %61, %30
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_15__* @r_graph_add_node(i32, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @r_anal_esil_dfg_node_new(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @r_strbuf_appendf(i32, i8*, i32) #1

declare dso_local i32 @r_strbuf_get(i32) #1

declare dso_local i32 @_edf_var_set(%struct.TYPE_17__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @r_graph_add_edge(i32, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @r_anal_esil_push(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
