; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_program_update_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_program_update_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_program = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.program_param* }
%struct.program_param = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @program_update_params(%struct.gs_program* %0) #0 {
  %2 = alloca %struct.gs_program*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.program_param*, align 8
  store %struct.gs_program* %0, %struct.gs_program** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %8 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %6, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %5
  %13 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %14 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.program_param*, %struct.program_param** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.program_param, %struct.program_param* %16, i64 %17
  store %struct.program_param* %18, %struct.program_param** %4, align 8
  %19 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %20 = load %struct.program_param*, %struct.program_param** %4, align 8
  %21 = call i32 @program_set_param_data(%struct.gs_program* %19, %struct.program_param* %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %5

25:                                               ; preds = %5
  ret void
}

declare dso_local i32 @program_set_param_data(%struct.gs_program*, %struct.program_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
