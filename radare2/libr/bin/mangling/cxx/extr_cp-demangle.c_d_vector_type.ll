; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_vector_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_vector_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_VECTOR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_vector_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_vector_type(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %6 = load %struct.d_info*, %struct.d_info** %3, align 8
  %7 = call signext i8 @d_peek_char(%struct.d_info* %6)
  store i8 %7, i8* %4, align 1
  %8 = load i8, i8* %4, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 95
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = call i32 @d_advance(%struct.d_info* %12, i32 1)
  %14 = load %struct.d_info*, %struct.d_info** %3, align 8
  %15 = call %struct.demangle_component* @d_expression(%struct.d_info* %14)
  store %struct.demangle_component* %15, %struct.demangle_component** %5, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.d_info*, %struct.d_info** %3, align 8
  %18 = call %struct.demangle_component* @d_number_component(%struct.d_info* %17)
  store %struct.demangle_component* %18, %struct.demangle_component** %5, align 8
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %21 = icmp eq %struct.demangle_component* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %35

23:                                               ; preds = %19
  %24 = load %struct.d_info*, %struct.d_info** %3, align 8
  %25 = call i32 @d_check_char(%struct.d_info* %24, i8 signext 95)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %35

28:                                               ; preds = %23
  %29 = load %struct.d_info*, %struct.d_info** %3, align 8
  %30 = load i32, i32* @DEMANGLE_COMPONENT_VECTOR_TYPE, align 4
  %31 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %32 = load %struct.d_info*, %struct.d_info** %3, align 8
  %33 = call i32 @cplus_demangle_type(%struct.d_info* %32)
  %34 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %29, i32 %30, %struct.demangle_component* %31, i32 %33)
  store %struct.demangle_component* %34, %struct.demangle_component** %2, align 8
  br label %35

35:                                               ; preds = %28, %27, %22
  %36 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %36
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_expression(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_number_component(%struct.d_info*) #1

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, i32) #1

declare dso_local i32 @cplus_demangle_type(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
