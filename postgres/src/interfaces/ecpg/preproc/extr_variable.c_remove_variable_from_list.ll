; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_remove_variable_from_list.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_remove_variable_from_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arguments = type { %struct.arguments*, %struct.variable* }
%struct.variable = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_variable_from_list(%struct.arguments** %0, %struct.variable* %1) #0 {
  %3 = alloca %struct.arguments**, align 8
  %4 = alloca %struct.variable*, align 8
  %5 = alloca %struct.arguments*, align 8
  %6 = alloca %struct.arguments*, align 8
  %7 = alloca i32, align 4
  store %struct.arguments** %0, %struct.arguments*** %3, align 8
  store %struct.variable* %1, %struct.variable** %4, align 8
  store %struct.arguments* null, %struct.arguments** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.arguments**, %struct.arguments*** %3, align 8
  %9 = load %struct.arguments*, %struct.arguments** %8, align 8
  store %struct.arguments* %9, %struct.arguments** %5, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.arguments*, %struct.arguments** %5, align 8
  %12 = icmp ne %struct.arguments* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.arguments*, %struct.arguments** %5, align 8
  %15 = getelementptr inbounds %struct.arguments, %struct.arguments* %14, i32 0, i32 1
  %16 = load %struct.variable*, %struct.variable** %15, align 8
  %17 = load %struct.variable*, %struct.variable** %4, align 8
  %18 = icmp eq %struct.variable* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %7, align 4
  br label %26

20:                                               ; preds = %13
  %21 = load %struct.arguments*, %struct.arguments** %5, align 8
  store %struct.arguments* %21, %struct.arguments** %6, align 8
  br label %22

22:                                               ; preds = %20
  %23 = load %struct.arguments*, %struct.arguments** %5, align 8
  %24 = getelementptr inbounds %struct.arguments, %struct.arguments* %23, i32 0, i32 0
  %25 = load %struct.arguments*, %struct.arguments** %24, align 8
  store %struct.arguments* %25, %struct.arguments** %5, align 8
  br label %10

26:                                               ; preds = %19, %10
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load %struct.arguments*, %struct.arguments** %6, align 8
  %31 = icmp ne %struct.arguments* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.arguments*, %struct.arguments** %5, align 8
  %34 = getelementptr inbounds %struct.arguments, %struct.arguments* %33, i32 0, i32 0
  %35 = load %struct.arguments*, %struct.arguments** %34, align 8
  %36 = load %struct.arguments*, %struct.arguments** %6, align 8
  %37 = getelementptr inbounds %struct.arguments, %struct.arguments* %36, i32 0, i32 0
  store %struct.arguments* %35, %struct.arguments** %37, align 8
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.arguments*, %struct.arguments** %5, align 8
  %40 = getelementptr inbounds %struct.arguments, %struct.arguments* %39, i32 0, i32 0
  %41 = load %struct.arguments*, %struct.arguments** %40, align 8
  %42 = load %struct.arguments**, %struct.arguments*** %3, align 8
  store %struct.arguments* %41, %struct.arguments** %42, align 8
  br label %43

43:                                               ; preds = %38, %32
  br label %44

44:                                               ; preds = %43, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
