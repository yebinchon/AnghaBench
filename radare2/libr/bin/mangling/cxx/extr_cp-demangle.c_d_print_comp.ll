; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_comp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i64, %struct.d_component_stack* }
%struct.d_component_stack = type { %struct.d_component_stack*, %struct.demangle_component* }
%struct.demangle_component = type { i32 }

@MAX_RECURSION_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i32, %struct.demangle_component*)* @d_print_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_comp(%struct.d_print_info* %0, i32 %1, %struct.demangle_component* %2) #0 {
  %4 = alloca %struct.d_print_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.demangle_component*, align 8
  %7 = alloca %struct.d_component_stack, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %6, align 8
  %8 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %9 = icmp eq %struct.demangle_component* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %12 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %17 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MAX_RECURSION_COUNT, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %10, %3
  %22 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %23 = call i32 @d_print_error(%struct.d_print_info* %22)
  br label %57

24:                                               ; preds = %15
  %25 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %26 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %30 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %34 = getelementptr inbounds %struct.d_component_stack, %struct.d_component_stack* %7, i32 0, i32 1
  store %struct.demangle_component* %33, %struct.demangle_component** %34, align 8
  %35 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %36 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %35, i32 0, i32 1
  %37 = load %struct.d_component_stack*, %struct.d_component_stack** %36, align 8
  %38 = getelementptr inbounds %struct.d_component_stack, %struct.d_component_stack* %7, i32 0, i32 0
  store %struct.d_component_stack* %37, %struct.d_component_stack** %38, align 8
  %39 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %40 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %39, i32 0, i32 1
  store %struct.d_component_stack* %7, %struct.d_component_stack** %40, align 8
  %41 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %44 = call i32 @d_print_comp_inner(%struct.d_print_info* %41, i32 %42, %struct.demangle_component* %43)
  %45 = getelementptr inbounds %struct.d_component_stack, %struct.d_component_stack* %7, i32 0, i32 0
  %46 = load %struct.d_component_stack*, %struct.d_component_stack** %45, align 8
  %47 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %48 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %47, i32 0, i32 1
  store %struct.d_component_stack* %46, %struct.d_component_stack** %48, align 8
  %49 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %50 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %54 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @d_print_error(%struct.d_print_info*) #1

declare dso_local i32 @d_print_comp_inner(%struct.d_print_info*, i32, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
