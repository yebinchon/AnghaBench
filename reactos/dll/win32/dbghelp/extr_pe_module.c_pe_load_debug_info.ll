; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_debug_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32 }
%struct.module = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@dbghelp_options = common dso_local global i32 0, align 4
@SYMOPT_PUBLICS_ONLY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pe_load_debug_info(%struct.process* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.process*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i32, align 4
  store %struct.process* %0, %struct.process** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @dbghelp_options, align 4
  %8 = load i32, i32* @SYMOPT_PUBLICS_ONLY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %52, label %11

11:                                               ; preds = %2
  %12 = load %struct.process*, %struct.process** %3, align 8
  %13 = load %struct.module*, %struct.module** %4, align 8
  %14 = call i32 @pe_load_stabs(%struct.process* %12, %struct.module* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.module*, %struct.module** %4, align 8
  %16 = call i64 @pe_load_dwarf(%struct.module* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i1 [ true, %11 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load %struct.process*, %struct.process** %3, align 8
  %25 = load %struct.module*, %struct.module** %4, align 8
  %26 = call i64 @pe_load_msc_debug_info(%struct.process* %24, %struct.module* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %28, %21
  %32 = phi i1 [ true, %21 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.module*, %struct.module** %4, align 8
  %35 = call i64 @pe_load_rsym(%struct.module* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %37, %31
  %41 = phi i1 [ true, %31 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load %struct.module*, %struct.module** %4, align 8
  %47 = call i64 @pe_load_coff_symbol_table(%struct.module* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i1 [ true, %40 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %2
  %53 = load %struct.process*, %struct.process** %3, align 8
  %54 = load %struct.module*, %struct.module** %4, align 8
  %55 = call i64 @pe_load_export_debug_info(%struct.process* %53, %struct.module* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %57, %52
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @pe_load_stabs(%struct.process*, %struct.module*) #1

declare dso_local i64 @pe_load_dwarf(%struct.module*) #1

declare dso_local i64 @pe_load_msc_debug_info(%struct.process*, %struct.module*) #1

declare dso_local i64 @pe_load_rsym(%struct.module*) #1

declare dso_local i64 @pe_load_coff_symbol_table(%struct.module*) #1

declare dso_local i64 @pe_load_export_debug_info(%struct.process*, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
