; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_add_variable_to_head.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_add_variable_to_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arguments = type { %struct.arguments*, %struct.variable*, %struct.variable* }
%struct.variable = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_variable_to_head(%struct.arguments** %0, %struct.variable* %1, %struct.variable* %2) #0 {
  %4 = alloca %struct.arguments**, align 8
  %5 = alloca %struct.variable*, align 8
  %6 = alloca %struct.variable*, align 8
  %7 = alloca %struct.arguments*, align 8
  store %struct.arguments** %0, %struct.arguments*** %4, align 8
  store %struct.variable* %1, %struct.variable** %5, align 8
  store %struct.variable* %2, %struct.variable** %6, align 8
  %8 = call i64 @mm_alloc(i32 24)
  %9 = inttoptr i64 %8 to %struct.arguments*
  store %struct.arguments* %9, %struct.arguments** %7, align 8
  %10 = load %struct.variable*, %struct.variable** %5, align 8
  %11 = load %struct.arguments*, %struct.arguments** %7, align 8
  %12 = getelementptr inbounds %struct.arguments, %struct.arguments* %11, i32 0, i32 2
  store %struct.variable* %10, %struct.variable** %12, align 8
  %13 = load %struct.variable*, %struct.variable** %6, align 8
  %14 = load %struct.arguments*, %struct.arguments** %7, align 8
  %15 = getelementptr inbounds %struct.arguments, %struct.arguments* %14, i32 0, i32 1
  store %struct.variable* %13, %struct.variable** %15, align 8
  %16 = load %struct.arguments**, %struct.arguments*** %4, align 8
  %17 = load %struct.arguments*, %struct.arguments** %16, align 8
  %18 = load %struct.arguments*, %struct.arguments** %7, align 8
  %19 = getelementptr inbounds %struct.arguments, %struct.arguments* %18, i32 0, i32 0
  store %struct.arguments* %17, %struct.arguments** %19, align 8
  %20 = load %struct.arguments*, %struct.arguments** %7, align 8
  %21 = load %struct.arguments**, %struct.arguments*** %4, align 8
  store %struct.arguments* %20, %struct.arguments** %21, align 8
  ret void
}

declare dso_local i64 @mm_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
