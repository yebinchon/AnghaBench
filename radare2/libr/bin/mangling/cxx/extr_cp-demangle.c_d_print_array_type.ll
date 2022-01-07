; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_array_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32 }
%struct.demangle_component = type { i32 }
%struct.d_print_mod = type { %struct.TYPE_2__*, i32, %struct.d_print_mod* }
%struct.TYPE_2__ = type { i64 }

@DEMANGLE_COMPONENT_ARRAY_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c" (\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i32, %struct.demangle_component*, %struct.d_print_mod*)* @d_print_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_array_type(%struct.d_print_info* %0, i32 %1, %struct.demangle_component* %2, %struct.d_print_mod* %3) #0 {
  %5 = alloca %struct.d_print_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component*, align 8
  %8 = alloca %struct.d_print_mod*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.d_print_mod*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %7, align 8
  store %struct.d_print_mod* %3, %struct.d_print_mod** %8, align 8
  store i32 1, i32* %9, align 4
  %12 = load %struct.d_print_mod*, %struct.d_print_mod** %8, align 8
  %13 = icmp ne %struct.d_print_mod* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %15 = load %struct.d_print_mod*, %struct.d_print_mod** %8, align 8
  store %struct.d_print_mod* %15, %struct.d_print_mod** %11, align 8
  br label %16

16:                                               ; preds = %35, %14
  %17 = load %struct.d_print_mod*, %struct.d_print_mod** %11, align 8
  %18 = icmp ne %struct.d_print_mod* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.d_print_mod*, %struct.d_print_mod** %11, align 8
  %21 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.d_print_mod*, %struct.d_print_mod** %11, align 8
  %26 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DEMANGLE_COMPONENT_ARRAY_TYPE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %39

33:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %39

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.d_print_mod*, %struct.d_print_mod** %11, align 8
  %37 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %36, i32 0, i32 2
  %38 = load %struct.d_print_mod*, %struct.d_print_mod** %37, align 8
  store %struct.d_print_mod* %38, %struct.d_print_mod** %11, align 8
  br label %16

39:                                               ; preds = %33, %32, %16
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %44 = call i32 @d_append_string(%struct.d_print_info* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.d_print_mod*, %struct.d_print_mod** %8, align 8
  %49 = call i32 @d_print_mod_list(%struct.d_print_info* %46, i32 %47, %struct.d_print_mod* %48, i32 0)
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %54 = call i32 @d_append_char(%struct.d_print_info* %53, i8 signext 41)
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %61 = call i32 @d_append_char(%struct.d_print_info* %60, i8 signext 32)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %64 = call i32 @d_append_char(%struct.d_print_info* %63, i8 signext 91)
  %65 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %66 = call i32* @d_left(%struct.demangle_component* %65)
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %72 = call i32* @d_left(%struct.demangle_component* %71)
  %73 = call i32 @d_print_comp(%struct.d_print_info* %69, i32 %70, i32* %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %76 = call i32 @d_append_char(%struct.d_print_info* %75, i8 signext 93)
  ret void
}

declare dso_local i32 @d_append_string(%struct.d_print_info*, i8*) #1

declare dso_local i32 @d_print_mod_list(%struct.d_print_info*, i32, %struct.d_print_mod*, i32) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local i32* @d_left(%struct.demangle_component*) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
