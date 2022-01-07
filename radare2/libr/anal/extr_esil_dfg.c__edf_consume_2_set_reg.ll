; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil_dfg.c__edf_consume_2_set_reg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil_dfg.c__edf_consume_2_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_15__ = type { i32*, i32, i32, i32* }
%struct.TYPE_14__ = type { i32, i32 }

@R_ANAL_ESIL_PARM_INVALID = common dso_local global i32 0, align 4
@R_ANAL_ESIL_PARM_REG = common dso_local global i32 0, align 4
@R_ANAL_ESIL_PARM_NUM = common dso_local global i32 0, align 4
@R_ANAL_ESIL_DFG_BLOCK_CONST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c":const_%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c",%s,%s\00", align 1
@R_ANAL_ESIL_DFG_BLOCK_GENERATIVE = common dso_local global i32 0, align 4
@R_ANAL_ESIL_DFG_BLOCK_RESULT = common dso_local global i32 0, align 4
@R_ANAL_ESIL_DFG_BLOCK_VAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c":var_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @_edf_consume_2_set_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_edf_consume_2_set_reg(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = call i8* @r_anal_esil_pop(%struct.TYPE_16__* %27)
  store i8* %28, i8** %8, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = call i8* @r_anal_esil_pop(%struct.TYPE_16__* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33, %2
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @free(i8* %39)
  store i32 0, i32* %3, align 4
  br label %207

41:                                               ; preds = %33
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i8* @r_anal_esil_get_parm_type(%struct.TYPE_16__* %42, i8* %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @R_ANAL_ESIL_PARM_INVALID, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @free(i8* %52)
  store i32 0, i32* %3, align 4
  br label %207

54:                                               ; preds = %41
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i8* @r_anal_esil_get_parm_type(%struct.TYPE_16__* %55, i8* %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @R_ANAL_ESIL_PARM_REG, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32* @_edf_reg_get(%struct.TYPE_15__* %63, i8* %64)
  store i32* %65, i32** %12, align 8
  br label %110

66:                                               ; preds = %54
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @R_ANAL_ESIL_PARM_NUM, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %66
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call %struct.TYPE_14__* @r_anal_esil_dfg_node_new(%struct.TYPE_15__* %74, i8* %75)
  %77 = call i32* @r_graph_add_node(i32 %73, %struct.TYPE_14__* %76)
  store i32* %77, i32** %13, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = call %struct.TYPE_14__* @r_anal_esil_dfg_node_new(%struct.TYPE_15__* %78, i8* %79)
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %14, align 8
  %81 = load i32, i32* @R_ANAL_ESIL_DFG_BLOCK_CONST, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = sext i32 %89 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 (i32, i8*, i8*, ...) @r_strbuf_appendf(i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %98 = call i32* @r_graph_add_node(i32 %96, %struct.TYPE_14__* %97)
  store i32* %98, i32** %12, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @r_graph_add_edge(i32 %101, i32* %102, i32* %103)
  br label %109

105:                                              ; preds = %66
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i32* @_edf_var_get(%struct.TYPE_15__* %106, i8* %107)
  store i32* %108, i32** %12, align 8
  br label %109

109:                                              ; preds = %105, %70
  br label %110

110:                                              ; preds = %109, %62
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = call i32* @_edf_origin_reg_get(%struct.TYPE_15__* %114, i8* %115)
  br label %121

117:                                              ; preds = %110
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i32* @_edf_reg_get(%struct.TYPE_15__* %118, i8* %119)
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i32* [ %116, %113 ], [ %120, %117 ]
  store i32* %122, i32** %15, align 8
  %123 = load i32*, i32** %15, align 8
  store i32* %123, i32** %16, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32*, i32** %15, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %126, %121
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @free(i8* %132)
  store i32 0, i32* %3, align 4
  br label %207

134:                                              ; preds = %126
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = call %struct.TYPE_14__* @r_anal_esil_dfg_node_new(%struct.TYPE_15__* %135, i8* %136)
  store %struct.TYPE_14__* %137, %struct.TYPE_14__** %17, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 (i32, i8*, i8*, ...) @r_strbuf_appendf(i32 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %141, i8* %142)
  %144 = load i32, i32* @R_ANAL_ESIL_DFG_BLOCK_GENERATIVE, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 @free(i8* %147)
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %153 = call i32* @r_graph_add_node(i32 %151, %struct.TYPE_14__* %152)
  store i32* %153, i32** %18, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = load i32*, i32** %18, align 8
  %159 = call i32 @r_graph_add_edge(i32 %156, i32* %157, i32* %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = load i32*, i32** %18, align 8
  %165 = call i32 @r_graph_add_edge(i32 %162, i32* %163, i32* %164)
  %166 = load i32*, i32** %16, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 3
  store i32* %166, i32** %168, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = call %struct.TYPE_14__* @r_anal_esil_dfg_node_new(%struct.TYPE_15__* %169, i8* %170)
  store %struct.TYPE_14__* %171, %struct.TYPE_14__** %19, align 8
  %172 = load i32, i32* @R_ANAL_ESIL_DFG_BLOCK_RESULT, align 4
  %173 = load i32, i32* @R_ANAL_ESIL_DFG_BLOCK_VAR, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = sext i32 %182 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = call i32 (i32, i8*, i8*, ...) @r_strbuf_appendf(i32 %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %191 = call i32* @r_graph_add_node(i32 %189, %struct.TYPE_14__* %190)
  store i32* %191, i32** %15, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32*, i32** %18, align 8
  %196 = load i32*, i32** %15, align 8
  %197 = call i32 @r_graph_add_edge(i32 %194, i32* %195, i32* %196)
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = load i32*, i32** %15, align 8
  %201 = call i32 @_edf_reg_set(%struct.TYPE_15__* %198, i8* %199, i32* %200)
  %202 = load i32*, i32** %15, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  store i32* %202, i32** %204, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 @free(i8* %205)
  store i32 1, i32* %3, align 4
  br label %207

207:                                              ; preds = %134, %129, %49, %36
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i8* @r_anal_esil_pop(%struct.TYPE_16__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_anal_esil_get_parm_type(%struct.TYPE_16__*, i8*) #1

declare dso_local i32* @_edf_reg_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i32* @r_graph_add_node(i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @r_anal_esil_dfg_node_new(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @r_strbuf_appendf(i32, i8*, i8*, ...) #1

declare dso_local i32 @r_graph_add_edge(i32, i32*, i32*) #1

declare dso_local i32* @_edf_var_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i32* @_edf_origin_reg_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @_edf_reg_set(%struct.TYPE_15__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
