; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_bare_function_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_bare_function_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_FUNCTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, i32)* @d_bare_function_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_bare_function_type(%struct.d_info* %0, i32 %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.demangle_component*, align 8
  %7 = alloca %struct.demangle_component*, align 8
  %8 = alloca i8, align 1
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.d_info*, %struct.d_info** %4, align 8
  %10 = call signext i8 @d_peek_char(%struct.d_info* %9)
  store i8 %10, i8* %8, align 1
  %11 = load i8, i8* %8, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 74
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.d_info*, %struct.d_info** %4, align 8
  %16 = call i32 @d_advance(%struct.d_info* %15, i32 1)
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.d_info*, %struct.d_info** %4, align 8
  %22 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %21)
  store %struct.demangle_component* %22, %struct.demangle_component** %6, align 8
  %23 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %24 = icmp eq %struct.demangle_component* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %40

26:                                               ; preds = %20
  br label %28

27:                                               ; preds = %17
  store %struct.demangle_component* null, %struct.demangle_component** %6, align 8
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.d_info*, %struct.d_info** %4, align 8
  %30 = call %struct.demangle_component* @d_parmlist(%struct.d_info* %29)
  store %struct.demangle_component* %30, %struct.demangle_component** %7, align 8
  %31 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %32 = icmp eq %struct.demangle_component* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %40

34:                                               ; preds = %28
  %35 = load %struct.d_info*, %struct.d_info** %4, align 8
  %36 = load i32, i32* @DEMANGLE_COMPONENT_FUNCTION_TYPE, align 4
  %37 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %38 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %39 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %35, i32 %36, %struct.demangle_component* %37, %struct.demangle_component* %38)
  store %struct.demangle_component* %39, %struct.demangle_component** %3, align 8
  br label %40

40:                                               ; preds = %34, %33, %25
  %41 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %41
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_parmlist(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
