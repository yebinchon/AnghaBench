; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_prefix.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_QUAL_NAME = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TEMPLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_prefix(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component*, align 8
  %8 = alloca i8, align 1
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  store %struct.demangle_component* null, %struct.demangle_component** %4, align 8
  br label %9

9:                                                ; preds = %1, %101, %136
  %10 = load %struct.d_info*, %struct.d_info** %3, align 8
  %11 = call signext i8 @d_peek_char(%struct.d_info* %10)
  store i8 %11, i8* %5, align 1
  %12 = load i8, i8* %5, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

16:                                               ; preds = %9
  %17 = load i32, i32* @DEMANGLE_COMPONENT_QUAL_NAME, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i8, i8* %5, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 68
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.d_info*, %struct.d_info** %3, align 8
  %23 = call signext i8 @d_peek_next_char(%struct.d_info* %22)
  store i8 %23, i8* %8, align 1
  %24 = load i8, i8* %8, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 84
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i8, i8* %8, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 116
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %21
  %32 = load %struct.d_info*, %struct.d_info** %3, align 8
  %33 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %32)
  store %struct.demangle_component* %33, %struct.demangle_component** %7, align 8
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.d_info*, %struct.d_info** %3, align 8
  %36 = call %struct.demangle_component* @d_unqualified_name(%struct.d_info* %35)
  store %struct.demangle_component* %36, %struct.demangle_component** %7, align 8
  br label %37

37:                                               ; preds = %34, %31
  br label %109

38:                                               ; preds = %16
  %39 = load i8, i8* %5, align 1
  %40 = call i64 @IS_DIGIT(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = load i8, i8* %5, align 1
  %44 = call i64 @IS_LOWER(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = load i8, i8* %5, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 67
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i8, i8* %5, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 85
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i8, i8* %5, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 76
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %50, %46, %42, %38
  %59 = load %struct.d_info*, %struct.d_info** %3, align 8
  %60 = call %struct.demangle_component* @d_unqualified_name(%struct.d_info* %59)
  store %struct.demangle_component* %60, %struct.demangle_component** %7, align 8
  br label %108

61:                                               ; preds = %54
  %62 = load i8, i8* %5, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 83
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.d_info*, %struct.d_info** %3, align 8
  %67 = call %struct.demangle_component* @d_substitution(%struct.d_info* %66, i32 1)
  store %struct.demangle_component* %67, %struct.demangle_component** %7, align 8
  br label %107

68:                                               ; preds = %61
  %69 = load i8, i8* %5, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 73
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %74 = icmp eq %struct.demangle_component* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

76:                                               ; preds = %72
  %77 = load i32, i32* @DEMANGLE_COMPONENT_TEMPLATE, align 4
  store i32 %77, i32* %6, align 4
  %78 = load %struct.d_info*, %struct.d_info** %3, align 8
  %79 = call %struct.demangle_component* @d_template_args(%struct.d_info* %78)
  store %struct.demangle_component* %79, %struct.demangle_component** %7, align 8
  br label %106

80:                                               ; preds = %68
  %81 = load i8, i8* %5, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 84
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.d_info*, %struct.d_info** %3, align 8
  %86 = call %struct.demangle_component* @d_template_param(%struct.d_info* %85)
  store %struct.demangle_component* %86, %struct.demangle_component** %7, align 8
  br label %105

87:                                               ; preds = %80
  %88 = load i8, i8* %5, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 69
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %92, %struct.demangle_component** %2, align 8
  br label %137

93:                                               ; preds = %87
  %94 = load i8, i8* %5, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 77
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %99 = icmp eq %struct.demangle_component* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

101:                                              ; preds = %97
  %102 = load %struct.d_info*, %struct.d_info** %3, align 8
  %103 = call i32 @d_advance(%struct.d_info* %102, i32 1)
  br label %9

104:                                              ; preds = %93
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

105:                                              ; preds = %84
  br label %106

106:                                              ; preds = %105, %76
  br label %107

107:                                              ; preds = %106, %65
  br label %108

108:                                              ; preds = %107, %58
  br label %109

109:                                              ; preds = %108, %37
  %110 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %111 = icmp eq %struct.demangle_component* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  store %struct.demangle_component* %113, %struct.demangle_component** %4, align 8
  br label %120

114:                                              ; preds = %109
  %115 = load %struct.d_info*, %struct.d_info** %3, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %118 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %119 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %115, i32 %116, %struct.demangle_component* %117, %struct.demangle_component* %118)
  store %struct.demangle_component* %119, %struct.demangle_component** %4, align 8
  br label %120

120:                                              ; preds = %114, %112
  %121 = load i8, i8* %5, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 83
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load %struct.d_info*, %struct.d_info** %3, align 8
  %126 = call signext i8 @d_peek_char(%struct.d_info* %125)
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 69
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.d_info*, %struct.d_info** %3, align 8
  %131 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %132 = call i32 @d_add_substitution(%struct.d_info* %130, %struct.demangle_component* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %124, %120
  br label %9

137:                                              ; preds = %134, %104, %100, %91, %75, %15
  %138 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %138
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local signext i8 @d_peek_next_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_unqualified_name(%struct.d_info*) #1

declare dso_local i64 @IS_DIGIT(i8 signext) #1

declare dso_local i64 @IS_LOWER(i8 signext) #1

declare dso_local %struct.demangle_component* @d_substitution(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_template_args(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_template_param(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

declare dso_local i32 @d_add_substitution(%struct.d_info*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
