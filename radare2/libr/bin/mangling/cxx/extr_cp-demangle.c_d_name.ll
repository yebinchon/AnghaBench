; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_QUAL_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"std\00", align 1
@DEMANGLE_COMPONENT_TEMPLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_name(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %7 = load %struct.d_info*, %struct.d_info** %3, align 8
  %8 = call signext i8 @d_peek_char(%struct.d_info* %7)
  store i8 %8, i8* %4, align 1
  %9 = load i8, i8* %4, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %68 [
    i32 78, label %11
    i32 90, label %14
    i32 85, label %17
    i32 83, label %20
    i32 76, label %67
  ]

11:                                               ; preds = %1
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = call %struct.demangle_component* @d_nested_name(%struct.d_info* %12)
  store %struct.demangle_component* %13, %struct.demangle_component** %2, align 8
  br label %90

14:                                               ; preds = %1
  %15 = load %struct.d_info*, %struct.d_info** %3, align 8
  %16 = call %struct.demangle_component* @d_local_name(%struct.d_info* %15)
  store %struct.demangle_component* %16, %struct.demangle_component** %2, align 8
  br label %90

17:                                               ; preds = %1
  %18 = load %struct.d_info*, %struct.d_info** %3, align 8
  %19 = call %struct.demangle_component* @d_unqualified_name(%struct.d_info* %18)
  store %struct.demangle_component* %19, %struct.demangle_component** %2, align 8
  br label %90

20:                                               ; preds = %1
  %21 = load %struct.d_info*, %struct.d_info** %3, align 8
  %22 = call signext i8 @d_peek_next_char(%struct.d_info* %21)
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 116
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.d_info*, %struct.d_info** %3, align 8
  %27 = call %struct.demangle_component* @d_substitution(%struct.d_info* %26, i32 0)
  store %struct.demangle_component* %27, %struct.demangle_component** %5, align 8
  store i32 1, i32* %6, align 4
  br label %42

28:                                               ; preds = %20
  %29 = load %struct.d_info*, %struct.d_info** %3, align 8
  %30 = call i32 @d_advance(%struct.d_info* %29, i32 2)
  %31 = load %struct.d_info*, %struct.d_info** %3, align 8
  %32 = load i32, i32* @DEMANGLE_COMPONENT_QUAL_NAME, align 4
  %33 = load %struct.d_info*, %struct.d_info** %3, align 8
  %34 = call %struct.demangle_component* @d_make_name(%struct.d_info* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %35 = load %struct.d_info*, %struct.d_info** %3, align 8
  %36 = call %struct.demangle_component* @d_unqualified_name(%struct.d_info* %35)
  %37 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %31, i32 %32, %struct.demangle_component* %34, %struct.demangle_component* %36)
  store %struct.demangle_component* %37, %struct.demangle_component** %5, align 8
  %38 = load %struct.d_info*, %struct.d_info** %3, align 8
  %39 = getelementptr inbounds %struct.d_info, %struct.d_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 3
  store i32 %41, i32* %39, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %28, %25
  %43 = load %struct.d_info*, %struct.d_info** %3, align 8
  %44 = call signext i8 @d_peek_char(%struct.d_info* %43)
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 73
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %65

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load %struct.d_info*, %struct.d_info** %3, align 8
  %53 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %54 = call i32 @d_add_substitution(%struct.d_info* %52, %struct.demangle_component* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %90

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %48
  %59 = load %struct.d_info*, %struct.d_info** %3, align 8
  %60 = load i32, i32* @DEMANGLE_COMPONENT_TEMPLATE, align 4
  %61 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %62 = load %struct.d_info*, %struct.d_info** %3, align 8
  %63 = call %struct.demangle_component* @d_template_args(%struct.d_info* %62)
  %64 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %59, i32 %60, %struct.demangle_component* %61, %struct.demangle_component* %63)
  store %struct.demangle_component* %64, %struct.demangle_component** %5, align 8
  br label %65

65:                                               ; preds = %58, %47
  %66 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  store %struct.demangle_component* %66, %struct.demangle_component** %2, align 8
  br label %90

67:                                               ; preds = %1
  br label %68

68:                                               ; preds = %1, %67
  %69 = load %struct.d_info*, %struct.d_info** %3, align 8
  %70 = call %struct.demangle_component* @d_unqualified_name(%struct.d_info* %69)
  store %struct.demangle_component* %70, %struct.demangle_component** %5, align 8
  %71 = load %struct.d_info*, %struct.d_info** %3, align 8
  %72 = call signext i8 @d_peek_char(%struct.d_info* %71)
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 73
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.d_info*, %struct.d_info** %3, align 8
  %77 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %78 = call i32 @d_add_substitution(%struct.d_info* %76, %struct.demangle_component* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %90

81:                                               ; preds = %75
  %82 = load %struct.d_info*, %struct.d_info** %3, align 8
  %83 = load i32, i32* @DEMANGLE_COMPONENT_TEMPLATE, align 4
  %84 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %85 = load %struct.d_info*, %struct.d_info** %3, align 8
  %86 = call %struct.demangle_component* @d_template_args(%struct.d_info* %85)
  %87 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %82, i32 %83, %struct.demangle_component* %84, %struct.demangle_component* %86)
  store %struct.demangle_component* %87, %struct.demangle_component** %5, align 8
  br label %88

88:                                               ; preds = %81, %68
  %89 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  store %struct.demangle_component* %89, %struct.demangle_component** %2, align 8
  br label %90

90:                                               ; preds = %88, %80, %65, %56, %17, %14, %11
  %91 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %91
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_nested_name(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_local_name(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_unqualified_name(%struct.d_info*) #1

declare dso_local signext i8 @d_peek_next_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_substitution(%struct.d_info*, i32) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_make_name(%struct.d_info*, i8*, i32) #1

declare dso_local i32 @d_add_substitution(%struct.d_info*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_template_args(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
