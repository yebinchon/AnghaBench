; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_lambda.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_lambda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.demangle_component* }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_LAMBDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_lambda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_lambda(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %7 = load %struct.d_info*, %struct.d_info** %3, align 8
  %8 = call i32 @d_check_char(%struct.d_info* %7, i8 signext 85)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %60

11:                                               ; preds = %1
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = call i32 @d_check_char(%struct.d_info* %12, i8 signext 108)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %60

16:                                               ; preds = %11
  %17 = load %struct.d_info*, %struct.d_info** %3, align 8
  %18 = call %struct.demangle_component* @d_parmlist(%struct.d_info* %17)
  store %struct.demangle_component* %18, %struct.demangle_component** %4, align 8
  %19 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %20 = icmp eq %struct.demangle_component* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %60

22:                                               ; preds = %16
  %23 = load %struct.d_info*, %struct.d_info** %3, align 8
  %24 = call i32 @d_check_char(%struct.d_info* %23, i8 signext 69)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %60

27:                                               ; preds = %22
  %28 = load %struct.d_info*, %struct.d_info** %3, align 8
  %29 = call i32 @d_compact_number(%struct.d_info* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %60

33:                                               ; preds = %27
  %34 = load %struct.d_info*, %struct.d_info** %3, align 8
  %35 = call %struct.demangle_component* @d_make_empty(%struct.d_info* %34)
  store %struct.demangle_component* %35, %struct.demangle_component** %5, align 8
  %36 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %37 = icmp ne %struct.demangle_component* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i32, i32* @DEMANGLE_COMPONENT_LAMBDA, align 4
  %40 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %41 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %43 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %44 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store %struct.demangle_component* %42, %struct.demangle_component** %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %49 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  br label %52

52:                                               ; preds = %38, %33
  %53 = load %struct.d_info*, %struct.d_info** %3, align 8
  %54 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %55 = call i32 @d_add_substitution(%struct.d_info* %53, %struct.demangle_component* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %60

58:                                               ; preds = %52
  %59 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  store %struct.demangle_component* %59, %struct.demangle_component** %2, align 8
  br label %60

60:                                               ; preds = %58, %57, %32, %26, %21, %15, %10
  %61 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %61
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_parmlist(%struct.d_info*) #1

declare dso_local i32 @d_compact_number(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_empty(%struct.d_info*) #1

declare dso_local i32 @d_add_substitution(%struct.d_info*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
