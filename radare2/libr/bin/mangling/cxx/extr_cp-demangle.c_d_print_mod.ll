; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_mod.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32 }
%struct.demangle_component = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c" restrict\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" transaction_safe\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" noexcept\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" throw\00", align 1
@DMGL_JAVA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"complex \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"imaginary \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c" __vector(\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i32, %struct.demangle_component*)* @d_print_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_mod(%struct.d_print_info* %0, i32 %1, %struct.demangle_component* %2) #0 {
  %4 = alloca %struct.d_print_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.demangle_component*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %6, align 8
  %7 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %8 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %123 [
    i32 138, label %10
    i32 137, label %10
    i32 129, label %13
    i32 128, label %13
    i32 146, label %16
    i32 145, label %16
    i32 133, label %19
    i32 143, label %22
    i32 134, label %39
    i32 130, label %56
    i32 142, label %64
    i32 139, label %73
    i32 140, label %76
    i32 135, label %79
    i32 136, label %82
    i32 147, label %85
    i32 144, label %88
    i32 141, label %91
    i32 132, label %107
    i32 131, label %113
  ]

10:                                               ; preds = %3, %3
  %11 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %12 = call i32 @d_append_string(%struct.d_print_info* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %128

13:                                               ; preds = %3, %3
  %14 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %15 = call i32 @d_append_string(%struct.d_print_info* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %128

16:                                               ; preds = %3, %3
  %17 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %18 = call i32 @d_append_string(%struct.d_print_info* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %128

19:                                               ; preds = %3
  %20 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %21 = call i32 @d_append_string(%struct.d_print_info* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %128

22:                                               ; preds = %3
  %23 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %24 = call i32 @d_append_string(%struct.d_print_info* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %25 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %26 = call %struct.demangle_component* @d_right(%struct.demangle_component* %25)
  %27 = icmp ne %struct.demangle_component* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %30 = call i32 @d_append_char(%struct.d_print_info* %29, i8 signext 40)
  %31 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %34 = call %struct.demangle_component* @d_right(%struct.demangle_component* %33)
  %35 = call i32 @d_print_comp(%struct.d_print_info* %31, i32 %32, %struct.demangle_component* %34)
  %36 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %37 = call i32 @d_append_char(%struct.d_print_info* %36, i8 signext 41)
  br label %38

38:                                               ; preds = %28, %22
  br label %128

39:                                               ; preds = %3
  %40 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %41 = call i32 @d_append_string(%struct.d_print_info* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %42 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %43 = call %struct.demangle_component* @d_right(%struct.demangle_component* %42)
  %44 = icmp ne %struct.demangle_component* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %47 = call i32 @d_append_char(%struct.d_print_info* %46, i8 signext 40)
  %48 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %51 = call %struct.demangle_component* @d_right(%struct.demangle_component* %50)
  %52 = call i32 @d_print_comp(%struct.d_print_info* %48, i32 %49, %struct.demangle_component* %51)
  %53 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %54 = call i32 @d_append_char(%struct.d_print_info* %53, i8 signext 41)
  br label %55

55:                                               ; preds = %45, %39
  br label %128

56:                                               ; preds = %3
  %57 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %58 = call i32 @d_append_char(%struct.d_print_info* %57, i8 signext 32)
  %59 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %62 = call %struct.demangle_component* @d_right(%struct.demangle_component* %61)
  %63 = call i32 @d_print_comp(%struct.d_print_info* %59, i32 %60, %struct.demangle_component* %62)
  br label %128

64:                                               ; preds = %3
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @DMGL_JAVA, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %71 = call i32 @d_append_char(%struct.d_print_info* %70, i8 signext 42)
  br label %72

72:                                               ; preds = %69, %64
  br label %128

73:                                               ; preds = %3
  %74 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %75 = call i32 @d_append_char(%struct.d_print_info* %74, i8 signext 32)
  br label %76

76:                                               ; preds = %3, %73
  %77 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %78 = call i32 @d_append_char(%struct.d_print_info* %77, i8 signext 38)
  br label %128

79:                                               ; preds = %3
  %80 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %81 = call i32 @d_append_char(%struct.d_print_info* %80, i8 signext 32)
  br label %82

82:                                               ; preds = %3, %79
  %83 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %84 = call i32 @d_append_string(%struct.d_print_info* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %128

85:                                               ; preds = %3
  %86 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %87 = call i32 @d_append_string(%struct.d_print_info* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %128

88:                                               ; preds = %3
  %89 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %90 = call i32 @d_append_string(%struct.d_print_info* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %128

91:                                               ; preds = %3
  %92 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %93 = call signext i8 @d_last_char(%struct.d_print_info* %92)
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 40
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %98 = call i32 @d_append_char(%struct.d_print_info* %97, i8 signext 32)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %103 = call %struct.demangle_component* @d_left(%struct.demangle_component* %102)
  %104 = call i32 @d_print_comp(%struct.d_print_info* %100, i32 %101, %struct.demangle_component* %103)
  %105 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %106 = call i32 @d_append_string(%struct.d_print_info* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %128

107:                                              ; preds = %3
  %108 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %111 = call %struct.demangle_component* @d_left(%struct.demangle_component* %110)
  %112 = call i32 @d_print_comp(%struct.d_print_info* %108, i32 %109, %struct.demangle_component* %111)
  br label %128

113:                                              ; preds = %3
  %114 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %115 = call i32 @d_append_string(%struct.d_print_info* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %116 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %119 = call %struct.demangle_component* @d_left(%struct.demangle_component* %118)
  %120 = call i32 @d_print_comp(%struct.d_print_info* %116, i32 %117, %struct.demangle_component* %119)
  %121 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %122 = call i32 @d_append_char(%struct.d_print_info* %121, i8 signext 41)
  br label %128

123:                                              ; preds = %3
  %124 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %127 = call i32 @d_print_comp(%struct.d_print_info* %124, i32 %125, %struct.demangle_component* %126)
  br label %128

128:                                              ; preds = %123, %113, %107, %99, %88, %85, %82, %76, %72, %56, %55, %38, %19, %16, %13, %10
  ret void
}

declare dso_local i32 @d_append_string(%struct.d_print_info*, i8*) #1

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, i32, %struct.demangle_component*) #1

declare dso_local signext i8 @d_last_char(%struct.d_print_info*) #1

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
