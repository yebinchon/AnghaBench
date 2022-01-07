; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_unqualified_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_unqualified_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_OPERATOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"li\00", align 1
@DEMANGLE_COMPONENT_UNARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_unqualified_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_unqualified_name(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca i8, align 1
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %6 = load %struct.d_info*, %struct.d_info** %3, align 8
  %7 = call signext i8 @d_peek_char(%struct.d_info* %6)
  store i8 %7, i8* %5, align 1
  %8 = load i8, i8* %5, align 1
  %9 = call i64 @IS_DIGIT(i8 signext %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = call %struct.demangle_component* @d_source_name(%struct.d_info* %12)
  store %struct.demangle_component* %13, %struct.demangle_component** %4, align 8
  br label %126

14:                                               ; preds = %1
  %15 = load i8, i8* %5, align 1
  %16 = call i64 @IS_LOWER(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %14
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 111
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.d_info*, %struct.d_info** %3, align 8
  %24 = call signext i8 @d_peek_next_char(%struct.d_info* %23)
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 110
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.d_info*, %struct.d_info** %3, align 8
  %29 = call i32 @d_advance(%struct.d_info* %28, i32 2)
  br label %30

30:                                               ; preds = %27, %22, %18
  %31 = load %struct.d_info*, %struct.d_info** %3, align 8
  %32 = call %struct.demangle_component* @d_operator_name(%struct.d_info* %31)
  store %struct.demangle_component* %32, %struct.demangle_component** %4, align 8
  %33 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %34 = icmp ne %struct.demangle_component* %33, null
  br i1 %34, label %35, label %75

35:                                               ; preds = %30
  %36 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %37 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DEMANGLE_COMPONENT_OPERATOR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %35
  %42 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %43 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 9, %49
  %51 = sub i64 %50, 2
  %52 = load %struct.d_info*, %struct.d_info** %3, align 8
  %53 = getelementptr inbounds %struct.d_info, %struct.d_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %59 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @strcmp(i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %41
  %68 = load %struct.d_info*, %struct.d_info** %3, align 8
  %69 = load i32, i32* @DEMANGLE_COMPONENT_UNARY, align 4
  %70 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %71 = load %struct.d_info*, %struct.d_info** %3, align 8
  %72 = call %struct.demangle_component* @d_source_name(%struct.d_info* %71)
  %73 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %68, i32 %69, %struct.demangle_component* %70, %struct.demangle_component* %72)
  store %struct.demangle_component* %73, %struct.demangle_component** %4, align 8
  br label %74

74:                                               ; preds = %67, %41
  br label %75

75:                                               ; preds = %74, %35, %30
  br label %125

76:                                               ; preds = %14
  %77 = load i8, i8* %5, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 67
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i8, i8* %5, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 68
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %76
  %85 = load %struct.d_info*, %struct.d_info** %3, align 8
  %86 = call %struct.demangle_component* @d_ctor_dtor_name(%struct.d_info* %85)
  store %struct.demangle_component* %86, %struct.demangle_component** %4, align 8
  br label %124

87:                                               ; preds = %80
  %88 = load i8, i8* %5, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 76
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load %struct.d_info*, %struct.d_info** %3, align 8
  %93 = call i32 @d_advance(%struct.d_info* %92, i32 1)
  %94 = load %struct.d_info*, %struct.d_info** %3, align 8
  %95 = call %struct.demangle_component* @d_source_name(%struct.d_info* %94)
  store %struct.demangle_component* %95, %struct.demangle_component** %4, align 8
  %96 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %97 = icmp eq %struct.demangle_component* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

99:                                               ; preds = %91
  %100 = load %struct.d_info*, %struct.d_info** %3, align 8
  %101 = call i32 @d_discriminator(%struct.d_info* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

104:                                              ; preds = %99
  br label %123

105:                                              ; preds = %87
  %106 = load i8, i8* %5, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 85
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load %struct.d_info*, %struct.d_info** %3, align 8
  %111 = call signext i8 @d_peek_next_char(%struct.d_info* %110)
  %112 = sext i8 %111 to i32
  switch i32 %112, label %119 [
    i32 108, label %113
    i32 116, label %116
  ]

113:                                              ; preds = %109
  %114 = load %struct.d_info*, %struct.d_info** %3, align 8
  %115 = call %struct.demangle_component* @d_lambda(%struct.d_info* %114)
  store %struct.demangle_component* %115, %struct.demangle_component** %4, align 8
  br label %120

116:                                              ; preds = %109
  %117 = load %struct.d_info*, %struct.d_info** %3, align 8
  %118 = call %struct.demangle_component* @d_unnamed_type(%struct.d_info* %117)
  store %struct.demangle_component* %118, %struct.demangle_component** %4, align 8
  br label %120

119:                                              ; preds = %109
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

120:                                              ; preds = %116, %113
  br label %122

121:                                              ; preds = %105
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %104
  br label %124

124:                                              ; preds = %123, %84
  br label %125

125:                                              ; preds = %124, %75
  br label %126

126:                                              ; preds = %125, %11
  %127 = load %struct.d_info*, %struct.d_info** %3, align 8
  %128 = call signext i8 @d_peek_char(%struct.d_info* %127)
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 66
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.d_info*, %struct.d_info** %3, align 8
  %133 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %134 = call %struct.demangle_component* @d_abi_tags(%struct.d_info* %132, %struct.demangle_component* %133)
  store %struct.demangle_component* %134, %struct.demangle_component** %4, align 8
  br label %135

135:                                              ; preds = %131, %126
  %136 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %136, %struct.demangle_component** %2, align 8
  br label %137

137:                                              ; preds = %135, %121, %119, %103, %98
  %138 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %138
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i64 @IS_DIGIT(i8 signext) #1

declare dso_local %struct.demangle_component* @d_source_name(%struct.d_info*) #1

declare dso_local i64 @IS_LOWER(i8 signext) #1

declare dso_local signext i8 @d_peek_next_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_operator_name(%struct.d_info*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_ctor_dtor_name(%struct.d_info*) #1

declare dso_local i32 @d_discriminator(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_lambda(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_unnamed_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_abi_tags(%struct.d_info*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
