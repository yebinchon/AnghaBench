; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_cplus_demangle_fill_ctor.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_cplus_demangle_fill_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.demangle_component* }

@gnu_v3_complete_object_ctor = common dso_local global i32 0, align 4
@gnu_v3_object_ctor_group = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_CTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cplus_demangle_fill_ctor(%struct.demangle_component* %0, i32 %1, %struct.demangle_component* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component*, align 8
  store %struct.demangle_component* %0, %struct.demangle_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %7, align 8
  %8 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %9 = icmp eq %struct.demangle_component* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %12 = icmp eq %struct.demangle_component* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @gnu_v3_complete_object_ctor, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @gnu_v3_object_ctor_group, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %38

22:                                               ; preds = %17
  %23 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %24 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @DEMANGLE_COMPONENT_CTOR, align 4
  %26 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %27 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %30 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %34 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %35 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store %struct.demangle_component* %33, %struct.demangle_component** %37, align 8
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %22, %21
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
