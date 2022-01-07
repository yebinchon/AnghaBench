; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_end.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i32 }
%struct.bwriter_shader = type { i32 }
%struct.bytecode_buffer = type { i32 }

@D3DSIO_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.bwriter_shader*, %struct.bytecode_buffer*)* @end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end(%struct.bc_writer* %0, %struct.bwriter_shader* %1, %struct.bytecode_buffer* %2) #0 {
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.bwriter_shader*, align 8
  %6 = alloca %struct.bytecode_buffer*, align 8
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.bwriter_shader* %1, %struct.bwriter_shader** %5, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %6, align 8
  %7 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %8 = load i32, i32* @D3DSIO_END, align 4
  %9 = call i32 @put_dword(%struct.bytecode_buffer* %7, i32 %8)
  ret void
}

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
