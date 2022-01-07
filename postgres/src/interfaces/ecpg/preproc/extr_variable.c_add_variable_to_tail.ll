; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_add_variable_to_tail.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_add_variable_to_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arguments = type { %struct.arguments*, %struct.variable*, %struct.variable* }
%struct.variable = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_variable_to_tail(%struct.arguments** %0, %struct.variable* %1, %struct.variable* %2) #0 {
  %4 = alloca %struct.arguments**, align 8
  %5 = alloca %struct.variable*, align 8
  %6 = alloca %struct.variable*, align 8
  %7 = alloca %struct.arguments*, align 8
  %8 = alloca %struct.arguments*, align 8
  store %struct.arguments** %0, %struct.arguments*** %4, align 8
  store %struct.variable* %1, %struct.variable** %5, align 8
  store %struct.variable* %2, %struct.variable** %6, align 8
  %9 = call i64 @mm_alloc(i32 24)
  %10 = inttoptr i64 %9 to %struct.arguments*
  store %struct.arguments* %10, %struct.arguments** %8, align 8
  %11 = load %struct.arguments**, %struct.arguments*** %4, align 8
  %12 = load %struct.arguments*, %struct.arguments** %11, align 8
  store %struct.arguments* %12, %struct.arguments** %7, align 8
  br label %13

13:                                               ; preds = %24, %3
  %14 = load %struct.arguments*, %struct.arguments** %7, align 8
  %15 = icmp ne %struct.arguments* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.arguments*, %struct.arguments** %7, align 8
  %18 = getelementptr inbounds %struct.arguments, %struct.arguments* %17, i32 0, i32 0
  %19 = load %struct.arguments*, %struct.arguments** %18, align 8
  %20 = icmp ne %struct.arguments* %19, null
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.arguments*, %struct.arguments** %7, align 8
  %26 = getelementptr inbounds %struct.arguments, %struct.arguments* %25, i32 0, i32 0
  %27 = load %struct.arguments*, %struct.arguments** %26, align 8
  store %struct.arguments* %27, %struct.arguments** %7, align 8
  br label %13

28:                                               ; preds = %21
  %29 = load %struct.variable*, %struct.variable** %5, align 8
  %30 = load %struct.arguments*, %struct.arguments** %8, align 8
  %31 = getelementptr inbounds %struct.arguments, %struct.arguments* %30, i32 0, i32 2
  store %struct.variable* %29, %struct.variable** %31, align 8
  %32 = load %struct.variable*, %struct.variable** %6, align 8
  %33 = load %struct.arguments*, %struct.arguments** %8, align 8
  %34 = getelementptr inbounds %struct.arguments, %struct.arguments* %33, i32 0, i32 1
  store %struct.variable* %32, %struct.variable** %34, align 8
  %35 = load %struct.arguments*, %struct.arguments** %8, align 8
  %36 = getelementptr inbounds %struct.arguments, %struct.arguments* %35, i32 0, i32 0
  store %struct.arguments* null, %struct.arguments** %36, align 8
  %37 = load %struct.arguments*, %struct.arguments** %7, align 8
  %38 = icmp ne %struct.arguments* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.arguments*, %struct.arguments** %8, align 8
  %41 = load %struct.arguments*, %struct.arguments** %7, align 8
  %42 = getelementptr inbounds %struct.arguments, %struct.arguments* %41, i32 0, i32 0
  store %struct.arguments* %40, %struct.arguments** %42, align 8
  br label %46

43:                                               ; preds = %28
  %44 = load %struct.arguments*, %struct.arguments** %8, align 8
  %45 = load %struct.arguments**, %struct.arguments*** %4, align 8
  store %struct.arguments* %44, %struct.arguments** %45, align 8
  br label %46

46:                                               ; preds = %43, %39
  ret void
}

declare dso_local i64 @mm_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
