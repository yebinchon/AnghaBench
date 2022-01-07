; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_unnamed_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_unnamed_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_UNNAMED_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_unnamed_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_unnamed_type(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %6 = load %struct.d_info*, %struct.d_info** %3, align 8
  %7 = call i32 @d_check_char(%struct.d_info* %6, i8 signext 85)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.d_info*, %struct.d_info** %3, align 8
  %12 = call i32 @d_check_char(%struct.d_info* %11, i8 signext 116)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %43

15:                                               ; preds = %10
  %16 = load %struct.d_info*, %struct.d_info** %3, align 8
  %17 = call i32 @d_compact_number(%struct.d_info* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %43

21:                                               ; preds = %15
  %22 = load %struct.d_info*, %struct.d_info** %3, align 8
  %23 = call %struct.demangle_component* @d_make_empty(%struct.d_info* %22)
  store %struct.demangle_component* %23, %struct.demangle_component** %4, align 8
  %24 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %25 = icmp ne %struct.demangle_component* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* @DEMANGLE_COMPONENT_UNNAMED_TYPE, align 4
  %28 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %29 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %32 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.d_info*, %struct.d_info** %3, align 8
  %37 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %38 = call i32 @d_add_substitution(%struct.d_info* %36, %struct.demangle_component* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %43

41:                                               ; preds = %35
  %42 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %42, %struct.demangle_component** %2, align 8
  br label %43

43:                                               ; preds = %41, %40, %20, %14, %9
  %44 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %44
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local i32 @d_compact_number(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_empty(%struct.d_info*) #1

declare dso_local i32 @d_add_substitution(%struct.d_info*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
