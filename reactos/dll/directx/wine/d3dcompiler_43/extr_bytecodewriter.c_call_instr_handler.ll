; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_call_instr_handler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_call_instr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, {}* }
%struct.instruction = type { i64 }
%struct.bytecode_buffer = type { i32 }

@BWRITERSIO_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Opcode %u not supported by this profile\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unhandled instruction %u - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)* @call_instr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_instr_handler(%struct.bc_writer* %0, %struct.instruction* %1, %struct.bytecode_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bc_writer*, align 8
  %6 = alloca %struct.instruction*, align 8
  %7 = alloca %struct.bytecode_buffer*, align 8
  %8 = alloca i64, align 8
  store %struct.bc_writer* %0, %struct.bc_writer** %5, align 8
  store %struct.instruction* %1, %struct.instruction** %6, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %69, %3
  %10 = load %struct.bc_writer*, %struct.bc_writer** %5, align 8
  %11 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BWRITERSIO_END, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %9
  %22 = load %struct.instruction*, %struct.instruction** %6, align 8
  %23 = getelementptr inbounds %struct.instruction, %struct.instruction* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bc_writer*, %struct.bc_writer** %5, align 8
  %26 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %24, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %21
  %36 = load %struct.bc_writer*, %struct.bc_writer** %5, align 8
  %37 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = bitcast {}** %43 to i32 (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)**
  %45 = load i32 (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)** %44, align 8
  %46 = icmp ne i32 (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %35
  %48 = load %struct.instruction*, %struct.instruction** %6, align 8
  %49 = getelementptr inbounds %struct.instruction, %struct.instruction* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %52, i32* %4, align 4
  br label %82

53:                                               ; preds = %35
  %54 = load %struct.bc_writer*, %struct.bc_writer** %5, align 8
  %55 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = bitcast {}** %61 to i32 (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)**
  %63 = load i32 (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)** %62, align 8
  %64 = load %struct.bc_writer*, %struct.bc_writer** %5, align 8
  %65 = load %struct.instruction*, %struct.instruction** %6, align 8
  %66 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %7, align 8
  %67 = call i32 %63(%struct.bc_writer* %64, %struct.instruction* %65, %struct.bytecode_buffer* %66)
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %82

69:                                               ; preds = %21
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %9

72:                                               ; preds = %9
  %73 = load %struct.instruction*, %struct.instruction** %6, align 8
  %74 = getelementptr inbounds %struct.instruction, %struct.instruction* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.instruction*, %struct.instruction** %6, align 8
  %77 = getelementptr inbounds %struct.instruction, %struct.instruction* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @debug_print_opcode(i64 %78)
  %80 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %75, i32 %79)
  %81 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %72, %53, %47
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @FIXME(i8*, i64, i32) #1

declare dso_local i32 @debug_print_opcode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
