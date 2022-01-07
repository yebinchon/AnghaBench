; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_subexpr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_subexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32 }
%struct.demangle_component = type { i64 }

@DEMANGLE_COMPONENT_NAME = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_QUAL_NAME = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_INITIALIZER_LIST = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_FUNCTION_PARAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i32, %struct.demangle_component*)* @d_print_subexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_subexpr(%struct.d_print_info* %0, i32 %1, %struct.demangle_component* %2) #0 {
  %4 = alloca %struct.d_print_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.demangle_component*, align 8
  %7 = alloca i32, align 4
  store %struct.d_print_info* %0, %struct.d_print_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %9 = icmp ne %struct.demangle_component* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %12 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DEMANGLE_COMPONENT_NAME, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %18 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DEMANGLE_COMPONENT_QUAL_NAME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %24 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DEMANGLE_COMPONENT_INITIALIZER_LIST, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %30 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DEMANGLE_COMPONENT_FUNCTION_PARAM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22, %16, %10
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %28, %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %40 = call i32 @d_append_char(%struct.d_print_info* %39, i8 signext 40)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %45 = call i32 @d_print_comp(%struct.d_print_info* %42, i32 %43, %struct.demangle_component* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %50 = call i32 @d_append_char(%struct.d_print_info* %49, i8 signext 41)
  br label %51

51:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, i32, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
