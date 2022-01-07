; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil_dfg.c_edf_consume_1_use_old_new_push_1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil_dfg.c_edf_consume_1_use_old_new_push_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@R_ANAL_ESIL_PARM_REG = common dso_local global i32 0, align 4
@R_ANAL_ESIL_PARM_NUM = common dso_local global i32 0, align 4
@R_ANAL_ESIL_DFG_BLOCK_CONST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c":const_%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"result_\00", align 1
@R_ANAL_ESIL_DFG_BLOCK_RESULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@R_ANAL_ESIL_DFG_BLOCK_GENERATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i8*, i32 (i32, i32, i32, i32)*)* @edf_consume_1_use_old_new_push_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edf_consume_1_use_old_new_push_1(%struct.TYPE_24__* %0, i8* %1, i32 (i32, i32, i32, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i32, i32, i32, i32)*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i32, i32, i32, i32)* %2, i32 (i32, i32, i32, i32)** %7, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %8, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = call i8* @r_anal_esil_pop(%struct.TYPE_24__* %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %199

32:                                               ; preds = %3
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call %struct.TYPE_22__* @r_anal_esil_dfg_node_new(%struct.TYPE_23__* %33, i8* %34)
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %10, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @r_strbuf_appendf(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %45 = call %struct.TYPE_21__* @r_graph_add_node(i32 %43, %struct.TYPE_22__* %44)
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %11, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @r_anal_esil_get_parm_type(%struct.TYPE_24__* %46, i8* %47)
  store i32 %48, i32* %12, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %13, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @R_ANAL_ESIL_PARM_REG, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %32
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call %struct.TYPE_21__* @_edf_reg_get(%struct.TYPE_23__* %53, i8* %54)
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** %13, align 8
  br label %100

56:                                               ; preds = %32
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @R_ANAL_ESIL_PARM_NUM, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %56
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call %struct.TYPE_22__* @r_anal_esil_dfg_node_new(%struct.TYPE_23__* %64, i8* %65)
  %67 = call %struct.TYPE_21__* @r_graph_add_node(i32 %63, %struct.TYPE_22__* %66)
  store %struct.TYPE_21__* %67, %struct.TYPE_21__** %14, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call %struct.TYPE_22__* @r_anal_esil_dfg_node_new(%struct.TYPE_23__* %68, i8* %69)
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** %15, align 8
  %71 = load i32, i32* @R_ANAL_ESIL_DFG_BLOCK_CONST, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = sext i32 %79 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @r_strbuf_appendf(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %88 = call %struct.TYPE_21__* @r_graph_add_node(i32 %86, %struct.TYPE_22__* %87)
  store %struct.TYPE_21__* %88, %struct.TYPE_21__** %13, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %94 = call i32 @r_graph_add_edge(i32 %91, %struct.TYPE_21__* %92, %struct.TYPE_21__* %93)
  br label %99

95:                                               ; preds = %56
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call %struct.TYPE_21__* @_edf_var_get(%struct.TYPE_23__* %96, i8* %97)
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %13, align 8
  br label %99

99:                                               ; preds = %95, %60
  br label %100

100:                                              ; preds = %99, %52
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %108 = call i32 @r_graph_add_edge(i32 %105, %struct.TYPE_21__* %106, %struct.TYPE_21__* %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %110, align 8
  store %struct.TYPE_21__* %111, %struct.TYPE_21__** %16, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  store %struct.TYPE_21__* %114, %struct.TYPE_21__** %17, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %116 = call %struct.TYPE_22__* @r_anal_esil_dfg_node_new(%struct.TYPE_23__* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_22__* %116, %struct.TYPE_22__** %18, align 8
  %117 = load i32, i32* @R_ANAL_ESIL_DFG_BLOCK_RESULT, align 4
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = sext i32 %125 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 @r_strbuf_appendf(i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  %130 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %7, align 8
  %131 = icmp ne i32 (i32, i32, i32, i32)* %130, null
  br i1 %131, label %132, label %162

132:                                              ; preds = %100
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %136, %struct.TYPE_22__** %19, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %140, %struct.TYPE_22__** %20, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %144, %struct.TYPE_22__** %21, align 8
  %145 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %7, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @r_strbuf_get(i32 %151)
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @r_strbuf_get(i32 %155)
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @r_strbuf_get(i32 %159)
  %161 = call i32 %145(i32 %148, i32 %152, i32 %156, i32 %160)
  br label %162

162:                                              ; preds = %132, %100
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %167 = call %struct.TYPE_21__* @r_graph_add_node(i32 %165, %struct.TYPE_22__* %166)
  store %struct.TYPE_21__* %167, %struct.TYPE_21__** %22, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @r_strbuf_get(i32 %171)
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %174 = call i32 @_edf_var_set(%struct.TYPE_23__* %168, i32 %172, %struct.TYPE_21__* %173)
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %180 = call i32 @r_graph_add_edge(i32 %177, %struct.TYPE_21__* %178, %struct.TYPE_21__* %179)
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %186 = call i32 @r_graph_add_edge(i32 %183, %struct.TYPE_21__* %184, %struct.TYPE_21__* %185)
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %192 = call i32 @r_graph_add_edge(i32 %189, %struct.TYPE_21__* %190, %struct.TYPE_21__* %191)
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @r_strbuf_get(i32 %196)
  %198 = call i32 @r_anal_esil_push(%struct.TYPE_24__* %193, i32 %197)
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %162, %31
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i8* @r_anal_esil_pop(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_22__* @r_anal_esil_dfg_node_new(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @r_strbuf_appendf(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_21__* @r_graph_add_node(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @r_anal_esil_get_parm_type(%struct.TYPE_24__*, i8*) #1

declare dso_local %struct.TYPE_21__* @_edf_reg_get(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @r_graph_add_edge(i32, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @_edf_var_get(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_strbuf_get(i32) #1

declare dso_local i32 @_edf_var_set(%struct.TYPE_23__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @r_anal_esil_push(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
