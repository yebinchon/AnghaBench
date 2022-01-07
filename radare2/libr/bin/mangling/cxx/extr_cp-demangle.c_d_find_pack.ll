; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_find_pack.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_find_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32 }
%struct.demangle_component = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.demangle_component* }
%struct.TYPE_5__ = type { %struct.demangle_component* }
%struct.TYPE_8__ = type { %struct.demangle_component* }

@DEMANGLE_COMPONENT_TEMPLATE_ARGLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_print_info*, %struct.demangle_component*)* @d_find_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_find_pack(%struct.d_print_info* %0, %struct.demangle_component* %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.d_print_info*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca %struct.demangle_component*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %4, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %5, align 8
  %7 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %8 = icmp eq %struct.demangle_component* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %69

10:                                               ; preds = %2
  %11 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %12 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %55 [
    i32 129, label %14
    i32 132, label %29
    i32 136, label %30
    i32 135, label %30
    i32 130, label %30
    i32 133, label %30
    i32 144, label %30
    i32 131, label %30
    i32 143, label %30
    i32 137, label %30
    i32 128, label %30
    i32 138, label %30
    i32 141, label %30
    i32 134, label %30
    i32 139, label %31
    i32 142, label %39
    i32 140, label %47
  ]

14:                                               ; preds = %10
  %15 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %16 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %17 = call %struct.demangle_component* @d_lookup_template_argument(%struct.d_print_info* %15, %struct.demangle_component* %16)
  store %struct.demangle_component* %17, %struct.demangle_component** %6, align 8
  %18 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %19 = icmp ne %struct.demangle_component* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %22 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DEMANGLE_COMPONENT_TEMPLATE_ARGLIST, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  store %struct.demangle_component* %27, %struct.demangle_component** %3, align 8
  br label %69

28:                                               ; preds = %20, %14
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %69

29:                                               ; preds = %10
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %69

30:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %69

31:                                               ; preds = %10
  %32 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %33 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %34 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.demangle_component*, %struct.demangle_component** %36, align 8
  %38 = call %struct.demangle_component* @d_find_pack(%struct.d_print_info* %32, %struct.demangle_component* %37)
  store %struct.demangle_component* %38, %struct.demangle_component** %3, align 8
  br label %69

39:                                               ; preds = %10
  %40 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %41 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %42 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.demangle_component*, %struct.demangle_component** %44, align 8
  %46 = call %struct.demangle_component* @d_find_pack(%struct.d_print_info* %40, %struct.demangle_component* %45)
  store %struct.demangle_component* %46, %struct.demangle_component** %3, align 8
  br label %69

47:                                               ; preds = %10
  %48 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %49 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %50 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.demangle_component*, %struct.demangle_component** %52, align 8
  %54 = call %struct.demangle_component* @d_find_pack(%struct.d_print_info* %48, %struct.demangle_component* %53)
  store %struct.demangle_component* %54, %struct.demangle_component** %3, align 8
  br label %69

55:                                               ; preds = %10
  %56 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %57 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %58 = call %struct.demangle_component* @d_left(%struct.demangle_component* %57)
  %59 = call %struct.demangle_component* @d_find_pack(%struct.d_print_info* %56, %struct.demangle_component* %58)
  store %struct.demangle_component* %59, %struct.demangle_component** %6, align 8
  %60 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %61 = icmp ne %struct.demangle_component* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  store %struct.demangle_component* %63, %struct.demangle_component** %3, align 8
  br label %69

64:                                               ; preds = %55
  %65 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %66 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %67 = call %struct.demangle_component* @d_right(%struct.demangle_component* %66)
  %68 = call %struct.demangle_component* @d_find_pack(%struct.d_print_info* %65, %struct.demangle_component* %67)
  store %struct.demangle_component* %68, %struct.demangle_component** %3, align 8
  br label %69

69:                                               ; preds = %64, %62, %47, %39, %31, %30, %29, %28, %26, %9
  %70 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %70
}

declare dso_local %struct.demangle_component* @d_lookup_template_argument(%struct.d_print_info*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
