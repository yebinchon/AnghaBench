; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_rel_time.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_rel_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.bstr = type { i64 }
%struct.m_rel_time = type { double, i32, i32 }

@M_OPT_MISSING_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@REL_TIME_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@REL_TIME_PERCENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@REL_TIME_CHAPTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@REL_TIME_RELATIVE = common dso_local global i32 0, align 4
@REL_TIME_ABSOLUTE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Option %.*s: invalid time or position: '%.*s'\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32*, i64, i64, i8*)* @parse_rel_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_rel_time(%struct.mp_log* %0, i32* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 8
  %8 = alloca %struct.bstr, align 8
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.m_rel_time, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i64 %2, i64* %16, align 8
  %17 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i64 %3, i64* %17, align 8
  store %struct.mp_log* %0, %struct.mp_log** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = bitcast %struct.m_rel_time* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @M_OPT_MISSING_PARAM, align 4
  store i32 %23, i32* %6, align 4
  br label %124

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @bstr_equals0(i64 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @REL_TIME_NONE, align 4
  %31 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %12, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  br label %115

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @bstr_endswith0(i64 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @bstr_splice(i64 %39, i32 0, i32 -1)
  %41 = call double @bstrtod(i32 %40, %struct.bstr* %8)
  store double %41, double* %13, align 8
  %42 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load double, double* %13, align 8
  %47 = fcmp oge double %46, 0.000000e+00
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load double, double* %13, align 8
  %50 = fcmp ole double %49, 1.000000e+02
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* @REL_TIME_PERCENT, align 4
  %53 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %12, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load double, double* %13, align 8
  %55 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %12, i32 0, i32 0
  store double %54, double* %55, align 8
  br label %115

56:                                               ; preds = %48, %45, %37
  br label %57

57:                                               ; preds = %56, %32
  %58 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @bstr_startswith0(i64 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @bstr_cut(i64 %64, i32 1)
  %66 = call i32 @bstrtoll(i32 %65, %struct.bstr* %8, i32 10)
  store i32 %66, i32* %14, align 4
  %67 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  %72 = icmp sge i32 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* @REL_TIME_CHAPTER, align 4
  %75 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %12, i32 0, i32 1
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sitofp i32 %77 to double
  %79 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %12, i32 0, i32 0
  store double %78, double* %79, align 8
  br label %115

80:                                               ; preds = %70, %62
  br label %81

81:                                               ; preds = %80, %57
  %82 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @parse_timestring(i64 %83, double* %15, i32 0)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @bstr_startswith0(i64 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @bstr_startswith0(i64 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91, %86
  %97 = load i32, i32* @REL_TIME_RELATIVE, align 4
  %98 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %12, i32 0, i32 1
  store i32 %97, i32* %98, align 8
  br label %102

99:                                               ; preds = %91
  %100 = load i32, i32* @REL_TIME_ABSOLUTE, align 4
  %101 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %12, i32 0, i32 1
  store i32 %100, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %96
  %103 = load double, double* %15, align 8
  %104 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %12, i32 0, i32 0
  store double %103, double* %104, align 8
  br label %115

105:                                              ; preds = %81
  %106 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %107 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @BSTR_P(i64 %108)
  %110 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @BSTR_P(i64 %111)
  %113 = call i32 @mp_err(%struct.mp_log* %106, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %109, i32 %112)
  %114 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %114, i32* %6, align 4
  br label %124

115:                                              ; preds = %102, %73, %51, %29
  %116 = load i8*, i8** %11, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i8*, i8** %11, align 8
  %120 = bitcast i8* %119 to %struct.m_rel_time*
  %121 = bitcast %struct.m_rel_time* %120 to i8*
  %122 = bitcast %struct.m_rel_time* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 16, i1 false)
  br label %123

123:                                              ; preds = %118, %115
  store i32 1, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %105, %22
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @bstr_equals0(i64, i8*) #2

declare dso_local i64 @bstr_endswith0(i64, i8*) #2

declare dso_local double @bstrtod(i32, %struct.bstr*) #2

declare dso_local i32 @bstr_splice(i64, i32, i32) #2

declare dso_local i64 @bstr_startswith0(i64, i8*) #2

declare dso_local i32 @bstrtoll(i32, %struct.bstr*, i32) #2

declare dso_local i32 @bstr_cut(i64, i32) #2

declare dso_local i64 @parse_timestring(i64, double*, i32) #2

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, i32) #2

declare dso_local i32 @BSTR_P(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
