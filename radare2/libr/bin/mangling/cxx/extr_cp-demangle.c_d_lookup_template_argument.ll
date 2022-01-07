; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_lookup_template_argument.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_lookup_template_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.demangle_component = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_print_info*, %struct.demangle_component*)* @d_lookup_template_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_lookup_template_argument(%struct.d_print_info* %0, %struct.demangle_component* %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.d_print_info*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %4, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %5, align 8
  %6 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %7 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %12 = call i32 @d_print_error(%struct.d_print_info* %11)
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %15 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @d_right(i32 %18)
  %20 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %21 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.demangle_component* @d_index_template_argument(i32 %19, i32 %24)
  store %struct.demangle_component* %25, %struct.demangle_component** %3, align 8
  br label %26

26:                                               ; preds = %13, %10
  %27 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %27
}

declare dso_local i32 @d_print_error(%struct.d_print_info*) #1

declare dso_local %struct.demangle_component* @d_index_template_argument(i32, i32) #1

declare dso_local i32 @d_right(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
