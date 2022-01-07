; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_expr_primary.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_expr_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_BUILTIN_TYPE = common dso_local global i64 0, align 8
@D_PRINT_DEFAULT = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_LITERAL = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_LITERAL_NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_expr_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_expr_primary(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %8 = load %struct.d_info*, %struct.d_info** %3, align 8
  %9 = call i32 @d_check_char(%struct.d_info* %8, i8 signext 76)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %110

12:                                               ; preds = %1
  %13 = load %struct.d_info*, %struct.d_info** %3, align 8
  %14 = call signext i8 @d_peek_char(%struct.d_info* %13)
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 95
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.d_info*, %struct.d_info** %3, align 8
  %19 = call signext i8 @d_peek_char(%struct.d_info* %18)
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 90
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %12
  %23 = load %struct.d_info*, %struct.d_info** %3, align 8
  %24 = call %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info* %23, i32 0)
  store %struct.demangle_component* %24, %struct.demangle_component** %4, align 8
  br label %103

25:                                               ; preds = %17
  %26 = load %struct.d_info*, %struct.d_info** %3, align 8
  %27 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %26)
  store %struct.demangle_component* %27, %struct.demangle_component** %5, align 8
  %28 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %29 = icmp eq %struct.demangle_component* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %110

31:                                               ; preds = %25
  %32 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %33 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DEMANGLE_COMPONENT_BUILTIN_TYPE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %31
  %38 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %39 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @D_PRINT_DEFAULT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %37
  %48 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %49 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.d_info*, %struct.d_info** %3, align 8
  %56 = getelementptr inbounds %struct.d_info, %struct.d_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  br label %61

61:                                               ; preds = %47, %37, %31
  %62 = load i32, i32* @DEMANGLE_COMPONENT_LITERAL, align 4
  store i32 %62, i32* %6, align 4
  %63 = load %struct.d_info*, %struct.d_info** %3, align 8
  %64 = call signext i8 @d_peek_char(%struct.d_info* %63)
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 110
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @DEMANGLE_COMPONENT_LITERAL_NEG, align 4
  store i32 %68, i32* %6, align 4
  %69 = load %struct.d_info*, %struct.d_info** %3, align 8
  %70 = call i32 @d_advance(%struct.d_info* %69, i32 1)
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.d_info*, %struct.d_info** %3, align 8
  %73 = call i8* @d_str(%struct.d_info* %72)
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %85, %71
  %75 = load %struct.d_info*, %struct.d_info** %3, align 8
  %76 = call signext i8 @d_peek_char(%struct.d_info* %75)
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 69
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.d_info*, %struct.d_info** %3, align 8
  %81 = call signext i8 @d_peek_char(%struct.d_info* %80)
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %110

85:                                               ; preds = %79
  %86 = load %struct.d_info*, %struct.d_info** %3, align 8
  %87 = call i32 @d_advance(%struct.d_info* %86, i32 1)
  br label %74

88:                                               ; preds = %74
  %89 = load %struct.d_info*, %struct.d_info** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %92 = load %struct.d_info*, %struct.d_info** %3, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.d_info*, %struct.d_info** %3, align 8
  %95 = call i8* @d_str(%struct.d_info* %94)
  %96 = load i8*, i8** %7, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @d_make_name(%struct.d_info* %92, i8* %93, i32 %100)
  %102 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %89, i32 %90, %struct.demangle_component* %91, i32 %101)
  store %struct.demangle_component* %102, %struct.demangle_component** %4, align 8
  br label %103

103:                                              ; preds = %88, %22
  %104 = load %struct.d_info*, %struct.d_info** %3, align 8
  %105 = call i32 @d_check_char(%struct.d_info* %104, i8 signext 69)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %110

108:                                              ; preds = %103
  %109 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %109, %struct.demangle_component** %2, align 8
  br label %110

110:                                              ; preds = %108, %107, %84, %30, %11
  %111 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %111
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local i8* @d_str(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, i32) #1

declare dso_local i32 @d_make_name(%struct.d_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
