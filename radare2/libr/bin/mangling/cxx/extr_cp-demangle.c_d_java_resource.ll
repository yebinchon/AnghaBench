; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_java_resource.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_java_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_COMPOUND_NAME = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_JAVA_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_java_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_java_resource(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  store %struct.demangle_component* null, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* null, %struct.demangle_component** %5, align 8
  %10 = load %struct.d_info*, %struct.d_info** %3, align 8
  %11 = call i32 @d_number(%struct.d_info* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

15:                                               ; preds = %1
  %16 = load %struct.d_info*, %struct.d_info** %3, align 8
  %17 = call signext i8 @d_next_char(%struct.d_info* %16)
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 95
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %6, align 4
  %24 = load %struct.d_info*, %struct.d_info** %3, align 8
  %25 = call i8* @d_str(%struct.d_info* %24)
  store i8* %25, i8** %9, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %130, %21
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %131

29:                                               ; preds = %26
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %8, align 1
  %35 = load i8, i8* %8, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

38:                                               ; preds = %29
  %39 = load i8, i8* %8, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 36
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %55 [
    i32 83, label %52
    i32 95, label %53
    i32 36, label %54
  ]

52:                                               ; preds = %42
  store i8 47, i8* %8, align 1
  br label %56

53:                                               ; preds = %42
  store i8 46, i8* %8, align 1
  br label %56

54:                                               ; preds = %42
  store i8 36, i8* %8, align 1
  br label %56

55:                                               ; preds = %42
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

56:                                               ; preds = %54, %53, %52
  %57 = load %struct.d_info*, %struct.d_info** %3, align 8
  %58 = load i8, i8* %8, align 1
  %59 = call %struct.demangle_component* @d_make_character(%struct.d_info* %57, i8 signext %58)
  store %struct.demangle_component* %59, %struct.demangle_component** %5, align 8
  %60 = load %struct.d_info*, %struct.d_info** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @d_advance(%struct.d_info* %60, i32 %61)
  %63 = load %struct.d_info*, %struct.d_info** %3, align 8
  %64 = call i8* @d_str(%struct.d_info* %63)
  store i8* %64, i8** %9, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %68 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %69 = icmp eq %struct.demangle_component* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

71:                                               ; preds = %56
  br label %115

72:                                               ; preds = %38
  br label %73

73:                                               ; preds = %95, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 36
  br label %93

93:                                               ; preds = %85, %77, %73
  %94 = phi i1 [ false, %77 ], [ false, %73 ], [ %92, %85 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %73

98:                                               ; preds = %93
  %99 = load %struct.d_info*, %struct.d_info** %3, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call %struct.demangle_component* @d_make_name(%struct.d_info* %99, i8* %100, i32 %101)
  store %struct.demangle_component* %102, %struct.demangle_component** %5, align 8
  %103 = load %struct.d_info*, %struct.d_info** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @d_advance(%struct.d_info* %103, i32 %104)
  %106 = load %struct.d_info*, %struct.d_info** %3, align 8
  %107 = call i8* @d_str(%struct.d_info* %106)
  store i8* %107, i8** %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %111 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %112 = icmp eq %struct.demangle_component* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %98
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

114:                                              ; preds = %98
  br label %115

115:                                              ; preds = %114, %71
  %116 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %117 = icmp eq %struct.demangle_component* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  store %struct.demangle_component* %119, %struct.demangle_component** %4, align 8
  br label %130

120:                                              ; preds = %115
  %121 = load %struct.d_info*, %struct.d_info** %3, align 8
  %122 = load i32, i32* @DEMANGLE_COMPONENT_COMPOUND_NAME, align 4
  %123 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %124 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %125 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %121, i32 %122, %struct.demangle_component* %123, %struct.demangle_component* %124)
  store %struct.demangle_component* %125, %struct.demangle_component** %4, align 8
  %126 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %127 = icmp eq %struct.demangle_component* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %137

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %118
  br label %26

131:                                              ; preds = %26
  %132 = load %struct.d_info*, %struct.d_info** %3, align 8
  %133 = load i32, i32* @DEMANGLE_COMPONENT_JAVA_RESOURCE, align 4
  %134 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %135 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %132, i32 %133, %struct.demangle_component* %134, %struct.demangle_component* null)
  store %struct.demangle_component* %135, %struct.demangle_component** %4, align 8
  %136 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %136, %struct.demangle_component** %2, align 8
  br label %137

137:                                              ; preds = %131, %128, %113, %70, %55, %37, %20, %14
  %138 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %138
}

declare dso_local i32 @d_number(%struct.d_info*) #1

declare dso_local signext i8 @d_next_char(%struct.d_info*) #1

declare dso_local i8* @d_str(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_character(%struct.d_info*, i8 signext) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_make_name(%struct.d_info*, i8*, i32) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
