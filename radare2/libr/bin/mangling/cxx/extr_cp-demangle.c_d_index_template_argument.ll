; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_index_template_argument.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_index_template_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i64 }

@DEMANGLE_COMPONENT_TEMPLATE_ARGLIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.demangle_component*, i32)* @d_index_template_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_index_template_argument(%struct.demangle_component* %0, i32 %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.demangle_component*, align 8
  store %struct.demangle_component* %0, %struct.demangle_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %10, %struct.demangle_component** %3, align 8
  br label %43

11:                                               ; preds = %2
  %12 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %12, %struct.demangle_component** %6, align 8
  br label %13

13:                                               ; preds = %30, %11
  %14 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %15 = icmp ne %struct.demangle_component* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %18 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DEMANGLE_COMPONENT_TEMPLATE_ARGLIST, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %43

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27
  %31 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %32 = call %struct.demangle_component* @d_right(%struct.demangle_component* %31)
  store %struct.demangle_component* %32, %struct.demangle_component** %6, align 8
  br label %13

33:                                               ; preds = %26, %13
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %38 = icmp eq %struct.demangle_component* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %43

40:                                               ; preds = %36
  %41 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %42 = call %struct.demangle_component* @d_left(%struct.demangle_component* %41)
  store %struct.demangle_component* %42, %struct.demangle_component** %3, align 8
  br label %43

43:                                               ; preds = %40, %39, %22, %9
  %44 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %44
}

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
