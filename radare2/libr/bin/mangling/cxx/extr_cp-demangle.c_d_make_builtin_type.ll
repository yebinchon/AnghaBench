; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_make_builtin_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_make_builtin_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.demangle_builtin_type_info* }
%struct.d_info = type { i32 }
%struct.demangle_builtin_type_info = type { i32 }

@DEMANGLE_COMPONENT_BUILTIN_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, %struct.demangle_builtin_type_info*)* @d_make_builtin_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_make_builtin_type(%struct.d_info* %0, %struct.demangle_builtin_type_info* %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca %struct.demangle_builtin_type_info*, align 8
  %6 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store %struct.demangle_builtin_type_info* %1, %struct.demangle_builtin_type_info** %5, align 8
  %7 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %5, align 8
  %8 = icmp eq %struct.demangle_builtin_type_info* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %26

10:                                               ; preds = %2
  %11 = load %struct.d_info*, %struct.d_info** %4, align 8
  %12 = call %struct.demangle_component* @d_make_empty(%struct.d_info* %11)
  store %struct.demangle_component* %12, %struct.demangle_component** %6, align 8
  %13 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %14 = icmp ne %struct.demangle_component* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* @DEMANGLE_COMPONENT_BUILTIN_TYPE, align 4
  %17 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %18 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.demangle_builtin_type_info*, %struct.demangle_builtin_type_info** %5, align 8
  %20 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %21 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.demangle_builtin_type_info* %19, %struct.demangle_builtin_type_info** %23, align 8
  br label %24

24:                                               ; preds = %15, %10
  %25 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  store %struct.demangle_component* %25, %struct.demangle_component** %3, align 8
  br label %26

26:                                               ; preds = %24, %9
  %27 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %27
}

declare dso_local %struct.demangle_component* @d_make_empty(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
