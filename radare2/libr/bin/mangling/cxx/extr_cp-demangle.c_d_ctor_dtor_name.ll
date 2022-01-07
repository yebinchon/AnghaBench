; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_ctor_dtor_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_ctor_dtor_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@DEMANGLE_COMPONENT_NAME = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_SUB_STD = common dso_local global i64 0, align 8
@gnu_v3_complete_object_ctor = common dso_local global i32 0, align 4
@gnu_v3_base_object_ctor = common dso_local global i32 0, align 4
@gnu_v3_complete_object_allocating_ctor = common dso_local global i32 0, align 4
@gnu_v3_unified_ctor = common dso_local global i32 0, align 4
@gnu_v3_object_ctor_group = common dso_local global i32 0, align 4
@gnu_v3_deleting_dtor = common dso_local global i32 0, align 4
@gnu_v3_complete_object_dtor = common dso_local global i32 0, align 4
@gnu_v3_base_object_dtor = common dso_local global i32 0, align 4
@gnu_v3_unified_dtor = common dso_local global i32 0, align 4
@gnu_v3_object_dtor_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_ctor_dtor_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_ctor_dtor_name(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %7 = load %struct.d_info*, %struct.d_info** %3, align 8
  %8 = getelementptr inbounds %struct.d_info, %struct.d_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %57

11:                                               ; preds = %1
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = getelementptr inbounds %struct.d_info, %struct.d_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DEMANGLE_COMPONENT_NAME, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %11
  %20 = load %struct.d_info*, %struct.d_info** %3, align 8
  %21 = getelementptr inbounds %struct.d_info, %struct.d_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.d_info*, %struct.d_info** %3, align 8
  %28 = getelementptr inbounds %struct.d_info, %struct.d_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  br label %56

33:                                               ; preds = %11
  %34 = load %struct.d_info*, %struct.d_info** %3, align 8
  %35 = getelementptr inbounds %struct.d_info, %struct.d_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DEMANGLE_COMPONENT_SUB_STD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = load %struct.d_info*, %struct.d_info** %3, align 8
  %43 = getelementptr inbounds %struct.d_info, %struct.d_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.d_info*, %struct.d_info** %3, align 8
  %50 = getelementptr inbounds %struct.d_info, %struct.d_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  br label %55

55:                                               ; preds = %41, %33
  br label %56

56:                                               ; preds = %55, %19
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.d_info*, %struct.d_info** %3, align 8
  %59 = call i32 @d_peek_char(%struct.d_info* %58)
  switch i32 %59, label %122 [
    i32 67, label %60
    i32 68, label %98
  ]

60:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  %61 = load %struct.d_info*, %struct.d_info** %3, align 8
  %62 = call signext i8 @d_peek_next_char(%struct.d_info* %61)
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 73
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  %66 = load %struct.d_info*, %struct.d_info** %3, align 8
  %67 = call i32 @d_advance(%struct.d_info* %66, i32 1)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.d_info*, %struct.d_info** %3, align 8
  %70 = call signext i8 @d_peek_next_char(%struct.d_info* %69)
  %71 = sext i8 %70 to i32
  switch i32 %71, label %82 [
    i32 49, label %72
    i32 50, label %74
    i32 51, label %76
    i32 52, label %78
    i32 53, label %80
  ]

72:                                               ; preds = %68
  %73 = load i32, i32* @gnu_v3_complete_object_ctor, align 4
  store i32 %73, i32* %4, align 4
  br label %83

74:                                               ; preds = %68
  %75 = load i32, i32* @gnu_v3_base_object_ctor, align 4
  store i32 %75, i32* %4, align 4
  br label %83

76:                                               ; preds = %68
  %77 = load i32, i32* @gnu_v3_complete_object_allocating_ctor, align 4
  store i32 %77, i32* %4, align 4
  br label %83

78:                                               ; preds = %68
  %79 = load i32, i32* @gnu_v3_unified_ctor, align 4
  store i32 %79, i32* %4, align 4
  br label %83

80:                                               ; preds = %68
  %81 = load i32, i32* @gnu_v3_object_ctor_group, align 4
  store i32 %81, i32* %4, align 4
  br label %83

82:                                               ; preds = %68
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %123

83:                                               ; preds = %80, %78, %76, %74, %72
  %84 = load %struct.d_info*, %struct.d_info** %3, align 8
  %85 = call i32 @d_advance(%struct.d_info* %84, i32 2)
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.d_info*, %struct.d_info** %3, align 8
  %90 = call i32 @cplus_demangle_type(%struct.d_info* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.d_info*, %struct.d_info** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.d_info*, %struct.d_info** %3, align 8
  %95 = getelementptr inbounds %struct.d_info, %struct.d_info* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = call %struct.demangle_component* @d_make_ctor(%struct.d_info* %92, i32 %93, %struct.TYPE_9__* %96)
  store %struct.demangle_component* %97, %struct.demangle_component** %2, align 8
  br label %123

98:                                               ; preds = %57
  %99 = load %struct.d_info*, %struct.d_info** %3, align 8
  %100 = call signext i8 @d_peek_next_char(%struct.d_info* %99)
  %101 = sext i8 %100 to i32
  switch i32 %101, label %112 [
    i32 48, label %102
    i32 49, label %104
    i32 50, label %106
    i32 52, label %108
    i32 53, label %110
  ]

102:                                              ; preds = %98
  %103 = load i32, i32* @gnu_v3_deleting_dtor, align 4
  store i32 %103, i32* %6, align 4
  br label %113

104:                                              ; preds = %98
  %105 = load i32, i32* @gnu_v3_complete_object_dtor, align 4
  store i32 %105, i32* %6, align 4
  br label %113

106:                                              ; preds = %98
  %107 = load i32, i32* @gnu_v3_base_object_dtor, align 4
  store i32 %107, i32* %6, align 4
  br label %113

108:                                              ; preds = %98
  %109 = load i32, i32* @gnu_v3_unified_dtor, align 4
  store i32 %109, i32* %6, align 4
  br label %113

110:                                              ; preds = %98
  %111 = load i32, i32* @gnu_v3_object_dtor_group, align 4
  store i32 %111, i32* %6, align 4
  br label %113

112:                                              ; preds = %98
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %123

113:                                              ; preds = %110, %108, %106, %104, %102
  %114 = load %struct.d_info*, %struct.d_info** %3, align 8
  %115 = call i32 @d_advance(%struct.d_info* %114, i32 2)
  %116 = load %struct.d_info*, %struct.d_info** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.d_info*, %struct.d_info** %3, align 8
  %119 = getelementptr inbounds %struct.d_info, %struct.d_info* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = call %struct.demangle_component* @d_make_dtor(%struct.d_info* %116, i32 %117, %struct.TYPE_9__* %120)
  store %struct.demangle_component* %121, %struct.demangle_component** %2, align 8
  br label %123

122:                                              ; preds = %57
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %123

123:                                              ; preds = %122, %113, %112, %91, %82
  %124 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %124
}

declare dso_local i32 @d_peek_char(%struct.d_info*) #1

declare dso_local signext i8 @d_peek_next_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local i32 @cplus_demangle_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_ctor(%struct.d_info*, i32, %struct.TYPE_9__*) #1

declare dso_local %struct.demangle_component* @d_make_dtor(%struct.d_info*, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
