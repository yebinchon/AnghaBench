; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_apply_frame_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_apply_frame_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.cpu_stack_walk = type { i32 }
%struct.frame_state = type { i32, i32*, i64*, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Couldn't read memory at %p\0A\00", align 1
@NB_FRAME_REGS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*, %struct.cpu_stack_walk*, i32*, %struct.frame_state*, i64*)* @apply_frame_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_frame_state(%struct.module* %0, %struct.cpu_stack_walk* %1, i32* %2, %struct.frame_state* %3, i64* %4) #0 {
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.cpu_stack_walk*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.frame_state*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %6, align 8
  store %struct.cpu_stack_walk* %1, %struct.cpu_stack_walk** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.frame_state* %3, %struct.frame_state** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.frame_state*, %struct.frame_state** %9, align 8
  %17 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %51 [
    i32 133, label %19
    i32 128, label %41
  ]

19:                                               ; preds = %5
  %20 = load %struct.module*, %struct.module** %6, align 8
  %21 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %7, align 8
  %22 = load %struct.frame_state*, %struct.frame_state** %9, align 8
  %23 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @eval_expression(%struct.module* %20, %struct.cpu_stack_walk* %21, i8* %25, i32* %26)
  %28 = load i64*, i64** %10, align 8
  store i64 %27, i64* %28, align 8
  %29 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %7, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %29, i64 %31, i64* %32, i32 8)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %19
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %150

40:                                               ; preds = %19
  br label %62

41:                                               ; preds = %5
  %42 = load %struct.module*, %struct.module** %6, align 8
  %43 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %7, align 8
  %44 = load %struct.frame_state*, %struct.frame_state** %9, align 8
  %45 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @eval_expression(%struct.module* %42, %struct.cpu_stack_walk* %43, i8* %47, i32* %48)
  %50 = load i64*, i64** %10, align 8
  store i64 %49, i64* %50, align 8
  br label %62

51:                                               ; preds = %5
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.frame_state*, %struct.frame_state** %9, align 8
  %54 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @get_context_reg(i32* %52, i32 %55)
  %57 = load %struct.frame_state*, %struct.frame_state** %9, align 8
  %58 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load i64*, i64** %10, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %51, %41, %40
  %63 = load i64*, i64** %10, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %150

67:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %144, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @NB_FRAME_REGS, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %147

72:                                               ; preds = %68
  %73 = load %struct.frame_state*, %struct.frame_state** %9, align 8
  %74 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %143 [
    i32 129, label %80
    i32 130, label %80
    i32 131, label %80
    i32 134, label %81
    i32 132, label %96
    i32 133, label %107
    i32 128, label %125
  ]

80:                                               ; preds = %72, %72, %72
  br label %143

81:                                               ; preds = %72
  %82 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i64*, i64** %10, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.frame_state*, %struct.frame_state** %9, align 8
  %87 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %85, %92
  %94 = load i32, i32* @TRUE, align 4
  %95 = call i32 @set_context_reg(%struct.cpu_stack_walk* %82, i32* %13, i32 %83, i64 %93, i32 %94)
  br label %143

96:                                               ; preds = %72
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.frame_state*, %struct.frame_state** %9, align 8
  %100 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @copy_context_reg(i32* %13, i32 %97, i32* %98, i64 %105)
  br label %143

107:                                              ; preds = %72
  %108 = load %struct.module*, %struct.module** %6, align 8
  %109 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %7, align 8
  %110 = load %struct.frame_state*, %struct.frame_state** %9, align 8
  %111 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load i32*, i32** %8, align 8
  %119 = call i64 @eval_expression(%struct.module* %108, %struct.cpu_stack_walk* %109, i8* %117, i32* %118)
  store i64 %119, i64* %12, align 8
  %120 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %7, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i64, i64* %12, align 8
  %123 = load i32, i32* @TRUE, align 4
  %124 = call i32 @set_context_reg(%struct.cpu_stack_walk* %120, i32* %13, i32 %121, i64 %122, i32 %123)
  br label %143

125:                                              ; preds = %72
  %126 = load %struct.module*, %struct.module** %6, align 8
  %127 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %7, align 8
  %128 = load %struct.frame_state*, %struct.frame_state** %9, align 8
  %129 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %128, i32 0, i32 2
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i8*
  %136 = load i32*, i32** %8, align 8
  %137 = call i64 @eval_expression(%struct.module* %126, %struct.cpu_stack_walk* %127, i8* %135, i32* %136)
  store i64 %137, i64* %12, align 8
  %138 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %7, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load i64, i64* %12, align 8
  %141 = load i32, i32* @FALSE, align 4
  %142 = call i32 @set_context_reg(%struct.cpu_stack_walk* %138, i32* %13, i32 %139, i64 %140, i32 %141)
  br label %143

143:                                              ; preds = %72, %125, %107, %96, %81, %80
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %11, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %68

147:                                              ; preds = %68
  %148 = load i32, i32* %13, align 4
  %149 = load i32*, i32** %8, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %66, %35
  ret void
}

declare dso_local i64 @eval_expression(%struct.module*, %struct.cpu_stack_walk*, i8*, i32*) #1

declare dso_local i32 @sw_read_mem(%struct.cpu_stack_walk*, i64, i64*, i32) #1

declare dso_local i32 @WARN(i8*, i8*) #1

declare dso_local i64 @get_context_reg(i32*, i32) #1

declare dso_local i32 @set_context_reg(%struct.cpu_stack_walk*, i32*, i32, i64, i32) #1

declare dso_local i32 @copy_context_reg(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
