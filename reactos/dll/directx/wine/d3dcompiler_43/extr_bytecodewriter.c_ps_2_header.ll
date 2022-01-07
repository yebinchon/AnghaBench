; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_2_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_2_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i32 }
%struct.bwriter_shader = type { i32, i32 }
%struct.bytecode_buffer = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@BWRITERSPR_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.bwriter_shader*, %struct.bytecode_buffer*)* @ps_2_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_2_header(%struct.bc_writer* %0, %struct.bwriter_shader* %1, %struct.bytecode_buffer* %2) #0 {
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.bwriter_shader*, align 8
  %6 = alloca %struct.bytecode_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.bwriter_shader* %1, %struct.bwriter_shader** %5, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %6, align 8
  %8 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %9 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %10 = call i32 @find_ps_builtin_semantics(%struct.bc_writer* %8, %struct.bwriter_shader* %9, i32 8)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @FAILED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %17 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %20 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %23 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %26 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BWRITERSPR_INPUT, align 4
  %29 = call i32 @write_declarations(%struct.bc_writer* %19, %struct.bytecode_buffer* %20, i32 %21, i32 %24, i32 %27, i32 %28)
  %30 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %31 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %32 = call i32 @write_samplers(%struct.bwriter_shader* %30, %struct.bytecode_buffer* %31)
  %33 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %34 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @write_constF(%struct.bwriter_shader* %33, %struct.bytecode_buffer* %34, i32 %35)
  %37 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %38 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @write_constB(%struct.bwriter_shader* %37, %struct.bytecode_buffer* %38, i32 %39)
  %41 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %42 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @write_constI(%struct.bwriter_shader* %41, %struct.bytecode_buffer* %42, i32 %43)
  br label %45

45:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @find_ps_builtin_semantics(%struct.bc_writer*, %struct.bwriter_shader*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @write_declarations(%struct.bc_writer*, %struct.bytecode_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @write_samplers(%struct.bwriter_shader*, %struct.bytecode_buffer*) #1

declare dso_local i32 @write_constF(%struct.bwriter_shader*, %struct.bytecode_buffer*, i32) #1

declare dso_local i32 @write_constB(%struct.bwriter_shader*, %struct.bytecode_buffer*, i32) #1

declare dso_local i32 @write_constI(%struct.bwriter_shader*, %struct.bytecode_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
