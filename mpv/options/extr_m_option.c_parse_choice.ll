; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_choice.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.m_option = type { i32, %struct.m_opt_choice_alternatives* }
%struct.m_opt_choice_alternatives = type { i8*, i32 }
%struct.bstr = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Valid values for option %.*s are:\0A\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@M_OPT_MISSING_PARAM = common dso_local global i32 0, align 4
@M_OPT_MIN = common dso_local global i32 0, align 4
@M_OPT_MAX = common dso_local global i32 0, align 4
@mp_null_log = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid value for option %.*s: %.*s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Valid values are:\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.m_option*, i64, i64, i8*)* @parse_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_choice(%struct.mp_log* %0, %struct.m_option* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 8
  %8 = alloca %struct.bstr, align 8
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca %struct.m_option*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.m_opt_choice_alternatives*, align 8
  %13 = alloca i64, align 8
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i64 %2, i64* %14, align 8
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i64 %3, i64* %15, align 8
  store %struct.mp_log* %0, %struct.mp_log** %9, align 8
  store %struct.m_option* %1, %struct.m_option** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load %struct.m_option*, %struct.m_option** %10, align 8
  %17 = getelementptr inbounds %struct.m_option, %struct.m_option* %16, i32 0, i32 1
  %18 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %17, align 8
  store %struct.m_opt_choice_alternatives* %18, %struct.m_opt_choice_alternatives** %12, align 8
  br label %19

19:                                               ; preds = %34, %5
  %20 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %12, align 8
  %21 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %12, align 8
  %26 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bstrcmp0(i64 %29, i8* %27)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %12, align 8
  %36 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %35, i32 1
  store %struct.m_opt_choice_alternatives* %36, %struct.m_opt_choice_alternatives** %12, align 8
  br label %19

37:                                               ; preds = %32, %19
  %38 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %12, align 8
  %39 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %67, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load %struct.m_option*, %struct.m_option** %10, align 8
  %48 = getelementptr inbounds %struct.m_option, %struct.m_option* %47, i32 0, i32 1
  %49 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %48, align 8
  store %struct.m_opt_choice_alternatives* %49, %struct.m_opt_choice_alternatives** %12, align 8
  br label %50

50:                                               ; preds = %63, %46
  %51 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %12, align 8
  %52 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %12, align 8
  %57 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %66

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %12, align 8
  %65 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %64, i32 1
  store %struct.m_opt_choice_alternatives* %65, %struct.m_opt_choice_alternatives** %12, align 8
  br label %50

66:                                               ; preds = %61, %50
  br label %67

67:                                               ; preds = %66, %42, %37
  %68 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %12, align 8
  %69 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %141, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @bstrcmp0(i64 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %79 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @BSTR_P(i64 %80)
  %82 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %84 = load %struct.m_option*, %struct.m_option** %10, align 8
  %85 = call i32 @print_choice_values(%struct.mp_log* %83, %struct.m_option* %84)
  %86 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %86, i32* %6, align 4
  br label %151

87:                                               ; preds = %72
  %88 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @M_OPT_MISSING_PARAM, align 4
  store i32 %92, i32* %6, align 4
  br label %151

93:                                               ; preds = %87
  %94 = load %struct.m_option*, %struct.m_option** %10, align 8
  %95 = getelementptr inbounds %struct.m_option, %struct.m_option* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @M_OPT_MIN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %93
  %101 = load %struct.m_option*, %struct.m_option** %10, align 8
  %102 = getelementptr inbounds %struct.m_option, %struct.m_option* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @M_OPT_MAX, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %100
  %108 = load i32, i32* @mp_null_log, align 4
  %109 = load %struct.m_option*, %struct.m_option** %10, align 8
  %110 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @parse_longlong(i32 %108, %struct.m_option* %109, i64 %111, i64 %113, i64* %13)
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %125

116:                                              ; preds = %107
  %117 = load i8*, i8** %11, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i64, i64* %13, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i8*, i8** %11, align 8
  %123 = bitcast i8* %122 to i32*
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %116
  store i32 1, i32* %6, align 4
  br label %151

125:                                              ; preds = %107
  br label %126

126:                                              ; preds = %125, %100, %93
  %127 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %128 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @BSTR_P(i64 %129)
  %131 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @BSTR_P(i64 %132)
  %134 = call i32 @mp_fatal(%struct.mp_log* %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %133)
  %135 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %136 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %137 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %138 = load %struct.m_option*, %struct.m_option** %10, align 8
  %139 = call i32 @print_choice_values(%struct.mp_log* %137, %struct.m_option* %138)
  %140 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %140, i32* %6, align 4
  br label %151

141:                                              ; preds = %67
  %142 = load i8*, i8** %11, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %12, align 8
  %146 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = bitcast i8* %148 to i32*
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %144, %141
  store i32 1, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %126, %124, %91, %77
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @bstrcmp0(i64, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, ...) #1

declare dso_local i32 @BSTR_P(i64) #1

declare dso_local i32 @print_choice_values(%struct.mp_log*, %struct.m_option*) #1

declare dso_local i32 @parse_longlong(i32, %struct.m_option*, i64, i64, i64*) #1

declare dso_local i32 @mp_fatal(%struct.mp_log*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
