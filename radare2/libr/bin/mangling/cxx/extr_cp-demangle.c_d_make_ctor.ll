; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_make_ctor.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_make_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { i32 }
%struct.demangle_component = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, i32, %struct.demangle_component*)* @d_make_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_make_ctor(%struct.d_info* %0, i32 %1, %struct.demangle_component* %2) #0 {
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.d_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component*, align 8
  %8 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %7, align 8
  %9 = load %struct.d_info*, %struct.d_info** %5, align 8
  %10 = call %struct.demangle_component* @d_make_empty(%struct.d_info* %9)
  store %struct.demangle_component* %10, %struct.demangle_component** %8, align 8
  %11 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %14 = call i32 @cplus_demangle_fill_ctor(%struct.demangle_component* %11, i32 %12, %struct.demangle_component* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.demangle_component* null, %struct.demangle_component** %4, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  store %struct.demangle_component* %18, %struct.demangle_component** %4, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  ret %struct.demangle_component* %20
}

declare dso_local %struct.demangle_component* @d_make_empty(%struct.d_info*) #1

declare dso_local i32 @cplus_demangle_fill_ctor(%struct.demangle_component*, i32, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
