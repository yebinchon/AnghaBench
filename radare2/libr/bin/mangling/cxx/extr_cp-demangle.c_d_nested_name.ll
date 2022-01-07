; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_nested_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_nested_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_nested_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_nested_name(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.demangle_component**, align 8
  %6 = alloca %struct.demangle_component*, align 8
  %7 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %8 = load %struct.d_info*, %struct.d_info** %3, align 8
  %9 = call i32 @d_check_char(%struct.d_info* %8, i8 signext 78)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.d_info*, %struct.d_info** %3, align 8
  %14 = call %struct.demangle_component** @d_cv_qualifiers(%struct.d_info* %13, %struct.demangle_component** %4, i32 1)
  store %struct.demangle_component** %14, %struct.demangle_component*** %5, align 8
  %15 = load %struct.demangle_component**, %struct.demangle_component*** %5, align 8
  %16 = icmp eq %struct.demangle_component** %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %41

18:                                               ; preds = %12
  %19 = load %struct.d_info*, %struct.d_info** %3, align 8
  %20 = call %struct.demangle_component* @d_ref_qualifier(%struct.d_info* %19, i32* null)
  store %struct.demangle_component* %20, %struct.demangle_component** %6, align 8
  %21 = load %struct.d_info*, %struct.d_info** %3, align 8
  %22 = call %struct.demangle_component* @d_prefix(%struct.d_info* %21)
  %23 = load %struct.demangle_component**, %struct.demangle_component*** %5, align 8
  store %struct.demangle_component* %22, %struct.demangle_component** %23, align 8
  %24 = load %struct.demangle_component**, %struct.demangle_component*** %5, align 8
  %25 = load %struct.demangle_component*, %struct.demangle_component** %24, align 8
  %26 = icmp eq %struct.demangle_component* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %41

28:                                               ; preds = %18
  %29 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %30 = icmp ne %struct.demangle_component* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %32, %struct.demangle_component** %7, align 8
  %33 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  store %struct.demangle_component* %33, %struct.demangle_component** %4, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.d_info*, %struct.d_info** %3, align 8
  %36 = call i32 @d_check_char(%struct.d_info* %35, i8 signext 69)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %41

39:                                               ; preds = %34
  %40 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %40, %struct.demangle_component** %2, align 8
  br label %41

41:                                               ; preds = %39, %38, %27, %17, %11
  %42 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %42
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component** @d_cv_qualifiers(%struct.d_info*, %struct.demangle_component**, i32) #1

declare dso_local %struct.demangle_component* @d_ref_qualifier(%struct.d_info*, i32*) #1

declare dso_local %struct.demangle_component* @d_prefix(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
