; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_pointer_to_member_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_pointer_to_member_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_PTRMEM_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_pointer_to_member_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_pointer_to_member_type(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %6 = load %struct.d_info*, %struct.d_info** %3, align 8
  %7 = call i32 @d_check_char(%struct.d_info* %6, i8 signext 77)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.d_info*, %struct.d_info** %3, align 8
  %12 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %11)
  store %struct.demangle_component* %12, %struct.demangle_component** %4, align 8
  %13 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %14 = icmp eq %struct.demangle_component* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %28

16:                                               ; preds = %10
  %17 = load %struct.d_info*, %struct.d_info** %3, align 8
  %18 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %17)
  store %struct.demangle_component* %18, %struct.demangle_component** %5, align 8
  %19 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %20 = icmp eq %struct.demangle_component* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %28

22:                                               ; preds = %16
  %23 = load %struct.d_info*, %struct.d_info** %3, align 8
  %24 = load i32, i32* @DEMANGLE_COMPONENT_PTRMEM_TYPE, align 4
  %25 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %26 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %27 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %23, i32 %24, %struct.demangle_component* %25, %struct.demangle_component* %26)
  store %struct.demangle_component* %27, %struct.demangle_component** %2, align 8
  br label %28

28:                                               ; preds = %22, %21, %15, %9
  %29 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %29
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
