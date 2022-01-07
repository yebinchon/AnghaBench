; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_create_loop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_create_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_node = type { i32 }
%struct.list = type { %struct.list*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.source_location, i32 }
%struct.source_location = type { i32 }
%struct.hlsl_ir_loop = type { %struct.hlsl_ir_loop*, %struct.TYPE_2__ }
%struct.hlsl_ir_if = type { %struct.hlsl_ir_if*, %struct.TYPE_2__ }

@HLSL_IR_LOOP = common dso_local global i32 0, align 4
@LOOP_DO_WHILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list* (i32, %struct.list*, %struct.list*, %struct.hlsl_ir_node*, %struct.list*, %struct.source_location*)* @create_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list* @create_loop(i32 %0, %struct.list* %1, %struct.list* %2, %struct.hlsl_ir_node* %3, %struct.list* %4, %struct.source_location* %5) #0 {
  %7 = alloca %struct.list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.list*, align 8
  %10 = alloca %struct.list*, align 8
  %11 = alloca %struct.hlsl_ir_node*, align 8
  %12 = alloca %struct.list*, align 8
  %13 = alloca %struct.source_location*, align 8
  %14 = alloca %struct.list*, align 8
  %15 = alloca %struct.hlsl_ir_loop*, align 8
  %16 = alloca %struct.hlsl_ir_if*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.list* %1, %struct.list** %9, align 8
  store %struct.list* %2, %struct.list** %10, align 8
  store %struct.hlsl_ir_node* %3, %struct.hlsl_ir_node** %11, align 8
  store %struct.list* %4, %struct.list** %12, align 8
  store %struct.source_location* %5, %struct.source_location** %13, align 8
  store %struct.list* null, %struct.list** %14, align 8
  store %struct.hlsl_ir_loop* null, %struct.hlsl_ir_loop** %15, align 8
  store %struct.hlsl_ir_if* null, %struct.hlsl_ir_if** %16, align 8
  %17 = call i8* @d3dcompiler_alloc(i32 24)
  %18 = bitcast i8* %17 to %struct.list*
  store %struct.list* %18, %struct.list** %14, align 8
  %19 = load %struct.list*, %struct.list** %14, align 8
  %20 = icmp ne %struct.list* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %125

22:                                               ; preds = %6
  %23 = load %struct.list*, %struct.list** %14, align 8
  %24 = call i32 @list_init(%struct.list* %23)
  %25 = load %struct.list*, %struct.list** %9, align 8
  %26 = icmp ne %struct.list* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.list*, %struct.list** %14, align 8
  %29 = load %struct.list*, %struct.list** %9, align 8
  %30 = call i32 @list_move_head(%struct.list* %28, %struct.list* %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = call i8* @d3dcompiler_alloc(i32 24)
  %33 = bitcast i8* %32 to %struct.hlsl_ir_loop*
  store %struct.hlsl_ir_loop* %33, %struct.hlsl_ir_loop** %15, align 8
  %34 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %35 = icmp ne %struct.hlsl_ir_loop* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %125

37:                                               ; preds = %31
  %38 = load i32, i32* @HLSL_IR_LOOP, align 4
  %39 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %40 = getelementptr inbounds %struct.hlsl_ir_loop, %struct.hlsl_ir_loop* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %43 = getelementptr inbounds %struct.hlsl_ir_loop, %struct.hlsl_ir_loop* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.source_location*, %struct.source_location** %13, align 8
  %46 = bitcast %struct.source_location* %44 to i8*
  %47 = bitcast %struct.source_location* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load %struct.list*, %struct.list** %14, align 8
  %49 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %50 = getelementptr inbounds %struct.hlsl_ir_loop, %struct.hlsl_ir_loop* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @list_add_tail(%struct.list* %48, i32* %51)
  %53 = call i8* @d3dcompiler_alloc(i32 24)
  %54 = bitcast i8* %53 to %struct.hlsl_ir_loop*
  %55 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %56 = getelementptr inbounds %struct.hlsl_ir_loop, %struct.hlsl_ir_loop* %55, i32 0, i32 0
  store %struct.hlsl_ir_loop* %54, %struct.hlsl_ir_loop** %56, align 8
  %57 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %58 = getelementptr inbounds %struct.hlsl_ir_loop, %struct.hlsl_ir_loop* %57, i32 0, i32 0
  %59 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %58, align 8
  %60 = icmp ne %struct.hlsl_ir_loop* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %37
  br label %125

62:                                               ; preds = %37
  %63 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %64 = getelementptr inbounds %struct.hlsl_ir_loop, %struct.hlsl_ir_loop* %63, i32 0, i32 0
  %65 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %64, align 8
  %66 = bitcast %struct.hlsl_ir_loop* %65 to %struct.list*
  %67 = call i32 @list_init(%struct.list* %66)
  %68 = load %struct.list*, %struct.list** %10, align 8
  %69 = call %struct.list* @loop_condition(%struct.list* %68)
  %70 = bitcast %struct.list* %69 to %struct.hlsl_ir_if*
  store %struct.hlsl_ir_if* %70, %struct.hlsl_ir_if** %16, align 8
  %71 = load %struct.hlsl_ir_if*, %struct.hlsl_ir_if** %16, align 8
  %72 = icmp ne %struct.hlsl_ir_if* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  br label %125

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @LOOP_DO_WHILE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %80 = getelementptr inbounds %struct.hlsl_ir_loop, %struct.hlsl_ir_loop* %79, i32 0, i32 0
  %81 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %80, align 8
  %82 = bitcast %struct.hlsl_ir_loop* %81 to %struct.list*
  %83 = load %struct.hlsl_ir_if*, %struct.hlsl_ir_if** %16, align 8
  %84 = getelementptr inbounds %struct.hlsl_ir_if, %struct.hlsl_ir_if* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @list_add_tail(%struct.list* %82, i32* %85)
  br label %87

87:                                               ; preds = %78, %74
  %88 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %89 = getelementptr inbounds %struct.hlsl_ir_loop, %struct.hlsl_ir_loop* %88, i32 0, i32 0
  %90 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %89, align 8
  %91 = bitcast %struct.hlsl_ir_loop* %90 to %struct.list*
  %92 = load %struct.list*, %struct.list** %12, align 8
  %93 = call i32 @list_move_tail(%struct.list* %91, %struct.list* %92)
  %94 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %11, align 8
  %95 = icmp ne %struct.hlsl_ir_node* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %98 = getelementptr inbounds %struct.hlsl_ir_loop, %struct.hlsl_ir_loop* %97, i32 0, i32 0
  %99 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %98, align 8
  %100 = bitcast %struct.hlsl_ir_loop* %99 to %struct.list*
  %101 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %11, align 8
  %102 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %101, i32 0, i32 0
  %103 = call i32 @list_add_tail(%struct.list* %100, i32* %102)
  br label %104

104:                                              ; preds = %96, %87
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @LOOP_DO_WHILE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %110 = getelementptr inbounds %struct.hlsl_ir_loop, %struct.hlsl_ir_loop* %109, i32 0, i32 0
  %111 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %110, align 8
  %112 = bitcast %struct.hlsl_ir_loop* %111 to %struct.list*
  %113 = load %struct.hlsl_ir_if*, %struct.hlsl_ir_if** %16, align 8
  %114 = getelementptr inbounds %struct.hlsl_ir_if, %struct.hlsl_ir_if* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @list_add_tail(%struct.list* %112, i32* %115)
  br label %117

117:                                              ; preds = %108, %104
  %118 = load %struct.list*, %struct.list** %9, align 8
  %119 = call i32 @d3dcompiler_free(%struct.list* %118)
  %120 = load %struct.list*, %struct.list** %10, align 8
  %121 = call i32 @d3dcompiler_free(%struct.list* %120)
  %122 = load %struct.list*, %struct.list** %12, align 8
  %123 = call i32 @d3dcompiler_free(%struct.list* %122)
  %124 = load %struct.list*, %struct.list** %14, align 8
  store %struct.list* %124, %struct.list** %7, align 8
  br label %152

125:                                              ; preds = %73, %61, %36, %21
  %126 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %127 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %128 = icmp ne %struct.hlsl_ir_loop* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %131 = getelementptr inbounds %struct.hlsl_ir_loop, %struct.hlsl_ir_loop* %130, i32 0, i32 0
  %132 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %131, align 8
  %133 = bitcast %struct.hlsl_ir_loop* %132 to %struct.list*
  %134 = call i32 @d3dcompiler_free(%struct.list* %133)
  br label %135

135:                                              ; preds = %129, %125
  %136 = load %struct.hlsl_ir_loop*, %struct.hlsl_ir_loop** %15, align 8
  %137 = bitcast %struct.hlsl_ir_loop* %136 to %struct.list*
  %138 = call i32 @d3dcompiler_free(%struct.list* %137)
  %139 = load %struct.hlsl_ir_if*, %struct.hlsl_ir_if** %16, align 8
  %140 = bitcast %struct.hlsl_ir_if* %139 to %struct.list*
  %141 = call i32 @d3dcompiler_free(%struct.list* %140)
  %142 = load %struct.list*, %struct.list** %14, align 8
  %143 = call i32 @d3dcompiler_free(%struct.list* %142)
  %144 = load %struct.list*, %struct.list** %9, align 8
  %145 = call i32 @free_instr_list(%struct.list* %144)
  %146 = load %struct.list*, %struct.list** %10, align 8
  %147 = call i32 @free_instr_list(%struct.list* %146)
  %148 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %11, align 8
  %149 = call i32 @free_instr(%struct.hlsl_ir_node* %148)
  %150 = load %struct.list*, %struct.list** %12, align 8
  %151 = call i32 @free_instr_list(%struct.list* %150)
  store %struct.list* null, %struct.list** %7, align 8
  br label %152

152:                                              ; preds = %135, %117
  %153 = load %struct.list*, %struct.list** %7, align 8
  ret %struct.list* %153
}

declare dso_local i8* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @list_init(%struct.list*) #1

declare dso_local i32 @list_move_head(%struct.list*, %struct.list*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(%struct.list*, i32*) #1

declare dso_local %struct.list* @loop_condition(%struct.list*) #1

declare dso_local i32 @list_move_tail(%struct.list*, %struct.list*) #1

declare dso_local i32 @d3dcompiler_free(%struct.list*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @free_instr_list(%struct.list*) #1

declare dso_local i32 @free_instr(%struct.hlsl_ir_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
