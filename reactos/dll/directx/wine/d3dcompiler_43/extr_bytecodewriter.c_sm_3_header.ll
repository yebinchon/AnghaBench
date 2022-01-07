; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_sm_3_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_sm_3_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i32 }
%struct.bwriter_shader = type { i32, i32, i32, i32 }
%struct.bytecode_buffer = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@BWRITERSPR_INPUT = common dso_local global i32 0, align 4
@BWRITERSPR_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.bwriter_shader*, %struct.bytecode_buffer*)* @sm_3_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm_3_header(%struct.bc_writer* %0, %struct.bwriter_shader* %1, %struct.bytecode_buffer* %2) #0 {
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.bwriter_shader*, align 8
  %6 = alloca %struct.bytecode_buffer*, align 8
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.bwriter_shader* %1, %struct.bwriter_shader** %5, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %6, align 8
  %7 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %8 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %9 = load i32, i32* @TRUE, align 4
  %10 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %11 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %14 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BWRITERSPR_INPUT, align 4
  %17 = call i32 @write_declarations(%struct.bc_writer* %7, %struct.bytecode_buffer* %8, i32 %9, i32 %12, i32 %15, i32 %16)
  %18 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %19 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %22 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %25 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BWRITERSPR_OUTPUT, align 4
  %28 = call i32 @write_declarations(%struct.bc_writer* %18, %struct.bytecode_buffer* %19, i32 %20, i32 %23, i32 %26, i32 %27)
  %29 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %30 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @write_constF(%struct.bwriter_shader* %29, %struct.bytecode_buffer* %30, i32 %31)
  %33 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %34 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @write_constB(%struct.bwriter_shader* %33, %struct.bytecode_buffer* %34, i32 %35)
  %37 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %38 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @write_constI(%struct.bwriter_shader* %37, %struct.bytecode_buffer* %38, i32 %39)
  %41 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %42 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %43 = call i32 @write_samplers(%struct.bwriter_shader* %41, %struct.bytecode_buffer* %42)
  ret void
}

declare dso_local i32 @write_declarations(%struct.bc_writer*, %struct.bytecode_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @write_constF(%struct.bwriter_shader*, %struct.bytecode_buffer*, i32) #1

declare dso_local i32 @write_constB(%struct.bwriter_shader*, %struct.bytecode_buffer*, i32) #1

declare dso_local i32 @write_constI(%struct.bwriter_shader*, %struct.bytecode_buffer*, i32) #1

declare dso_local i32 @write_samplers(%struct.bwriter_shader*, %struct.bytecode_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
