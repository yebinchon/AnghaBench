; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_function_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_function_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_function_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_function_type(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %5 = load %struct.d_info*, %struct.d_info** %3, align 8
  %6 = call i32 @d_check_char(%struct.d_info* %5, i8 signext 70)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.d_info*, %struct.d_info** %3, align 8
  %11 = call signext i8 @d_peek_char(%struct.d_info* %10)
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 89
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.d_info*, %struct.d_info** %3, align 8
  %16 = call i32 @d_advance(%struct.d_info* %15, i32 1)
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.d_info*, %struct.d_info** %3, align 8
  %19 = call %struct.demangle_component* @d_bare_function_type(%struct.d_info* %18, i32 1)
  store %struct.demangle_component* %19, %struct.demangle_component** %4, align 8
  %20 = load %struct.d_info*, %struct.d_info** %3, align 8
  %21 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %22 = call %struct.demangle_component* @d_ref_qualifier(%struct.d_info* %20, %struct.demangle_component* %21)
  store %struct.demangle_component* %22, %struct.demangle_component** %4, align 8
  %23 = load %struct.d_info*, %struct.d_info** %3, align 8
  %24 = call i32 @d_check_char(%struct.d_info* %23, i8 signext 69)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %29

27:                                               ; preds = %17
  %28 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %28, %struct.demangle_component** %2, align 8
  br label %29

29:                                               ; preds = %27, %26, %8
  %30 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %30
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_bare_function_type(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_ref_qualifier(%struct.d_info*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
