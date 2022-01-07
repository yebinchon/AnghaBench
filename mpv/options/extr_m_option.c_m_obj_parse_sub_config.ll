; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_m_obj_parse_sub_config.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_m_obj_parse_sub_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.bstr = type { i64 }
%struct.m_config = type { i32 }
%struct.m_obj_desc = type { i32 (%struct.mp_log*)* }
%struct.m_obj_list = type { i32 (%struct.mp_log*, i32)*, i64 }

@.str = private unnamed_addr constant [55 x i8] c"Option %.*s: this option does not accept sub-options.\0A\00", align 1
@.str.1 = private unnamed_addr constant [107 x i8] c"Sub-options for --vo and --ao were removed from mpv in release 0.23.0.\0ASee https://0x0.st/uM for details.\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Option %.*s: item %.*s doesn't exist.\0A\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i64, i64, %struct.bstr*, %struct.m_config*, i32, i32, %struct.m_obj_desc*, %struct.m_obj_list*, i8***)* @m_obj_parse_sub_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_obj_parse_sub_config(%struct.mp_log* %0, i64 %1, i64 %2, %struct.bstr* %3, %struct.m_config* %4, i32 %5, i32 %6, %struct.m_obj_desc* %7, %struct.m_obj_list* %8, i8*** %9) #0 {
  %11 = alloca %struct.bstr, align 8
  %12 = alloca %struct.bstr, align 8
  %13 = alloca %struct.mp_log*, align 8
  %14 = alloca %struct.bstr*, align 8
  %15 = alloca %struct.m_config*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.m_obj_desc*, align 8
  %19 = alloca %struct.m_obj_list*, align 8
  %20 = alloca i8***, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [80 x i8], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = getelementptr inbounds %struct.bstr, %struct.bstr* %11, i32 0, i32 0
  store i64 %1, i64* %28, align 8
  %29 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  store i64 %2, i64* %29, align 8
  store %struct.mp_log* %0, %struct.mp_log** %13, align 8
  store %struct.bstr* %3, %struct.bstr** %14, align 8
  store %struct.m_config* %4, %struct.m_config** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.m_obj_desc* %7, %struct.m_obj_desc** %18, align 8
  store %struct.m_obj_list* %8, %struct.m_obj_list** %19, align 8
  store i8*** %9, i8**** %20, align 8
  store i32 0, i32* %21, align 4
  store i8** null, i8*** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  %30 = load i8***, i8**** %20, align 8
  %31 = icmp ne i8*** %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %10
  %33 = load i8***, i8**** %20, align 8
  %34 = load i8**, i8*** %33, align 8
  store i8** %34, i8*** %22, align 8
  br label %35

35:                                               ; preds = %47, %32
  %36 = load i8**, i8*** %22, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i8**, i8*** %22, align 8
  %40 = load i32, i32* %23, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br label %45

45:                                               ; preds = %38, %35
  %46 = phi i1 [ false, %35 ], [ %44, %38 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %23, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %23, align 4
  br label %35

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %10
  br label %52

52:                                               ; preds = %131, %51
  %53 = load %struct.bstr*, %struct.bstr** %14, align 8
  %54 = getelementptr inbounds %struct.bstr, %struct.bstr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %132

57:                                               ; preds = %52
  %58 = load %struct.mp_log*, %struct.mp_log** %13, align 8
  %59 = load %struct.bstr*, %struct.bstr** %14, align 8
  %60 = getelementptr inbounds %struct.bstr, %struct.bstr* %11, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @split_subconf(%struct.mp_log* %58, i64 %61, %struct.bstr* %59, i32* %26, i32* %27)
  store i32 %62, i32* %24, align 4
  %63 = load i32, i32* %24, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %189

66:                                               ; preds = %57
  %67 = load %struct.m_obj_list*, %struct.m_obj_list** %19, align 8
  %68 = getelementptr inbounds %struct.m_obj_list, %struct.m_obj_list* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.mp_log*, %struct.mp_log** %13, align 8
  %73 = getelementptr inbounds %struct.bstr, %struct.bstr* %11, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @BSTR_P(i64 %74)
  %76 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %72, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.mp_log*, %struct.mp_log** %13, align 8
  %78 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %77, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %79, i32* %24, align 4
  br label %189

80:                                               ; preds = %66
  %81 = load i32, i32* %26, align 4
  %82 = call i64 @bstr_equals0(i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %145

85:                                               ; preds = %80
  %86 = load %struct.mp_log*, %struct.mp_log** %13, align 8
  %87 = load %struct.m_config*, %struct.m_config** %15, align 8
  %88 = load i32, i32* %26, align 4
  %89 = load i32, i32* %27, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = getelementptr inbounds [80 x i8], [80 x i8]* %25, i64 0, i64 0
  %93 = getelementptr inbounds %struct.bstr, %struct.bstr* %11, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @get_obj_param(%struct.mp_log* %86, i64 %94, i64 %96, %struct.m_config* %87, i32 %88, i32 %89, i32 %90, i32 %91, i32* %21, i32* %26, i32* %27, i8* %92, i32 80)
  store i32 %97, i32* %24, align 4
  %98 = load i32, i32* %24, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  br label %189

101:                                              ; preds = %85
  %102 = load i32, i32* %24, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %101
  %105 = load i8***, i8**** %20, align 8
  %106 = icmp ne i8*** %105, null
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load i8**, i8*** %22, align 8
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %26, align 4
  %111 = call i32* @bstrto0(i32* null, i32 %110)
  %112 = call i32 @MP_TARRAY_APPEND(i32* null, i8** %108, i32 %109, i32* %111)
  %113 = load i8**, i8*** %22, align 8
  %114 = load i32, i32* %23, align 4
  %115 = load i32, i32* %27, align 4
  %116 = call i32* @bstrto0(i32* null, i32 %115)
  %117 = call i32 @MP_TARRAY_APPEND(i32* null, i8** %113, i32 %114, i32* %116)
  %118 = load i8**, i8*** %22, align 8
  %119 = load i32, i32* %23, align 4
  %120 = call i32 @MP_TARRAY_APPEND(i32* null, i8** %118, i32 %119, i32* null)
  %121 = load i8**, i8*** %22, align 8
  %122 = load i32, i32* %23, align 4
  %123 = call i32 @MP_TARRAY_APPEND(i32* null, i8** %121, i32 %122, i32* null)
  %124 = load i32, i32* %23, align 4
  %125 = sub nsw i32 %124, 2
  store i32 %125, i32* %23, align 4
  br label %126

126:                                              ; preds = %107, %104, %101
  %127 = load %struct.bstr*, %struct.bstr** %14, align 8
  %128 = call i32 @bstr_eatstart0(%struct.bstr* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  br label %132

131:                                              ; preds = %126
  br label %52

132:                                              ; preds = %130, %52
  %133 = load i8***, i8**** %20, align 8
  %134 = icmp ne i8*** %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32, i32* %23, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i8**, i8*** %22, align 8
  %140 = load i8***, i8**** %20, align 8
  store i8** %139, i8*** %140, align 8
  store i8** null, i8*** %22, align 8
  br label %143

141:                                              ; preds = %135
  %142 = load i8***, i8**** %20, align 8
  store i8** null, i8*** %142, align 8
  br label %143

143:                                              ; preds = %141, %138
  br label %144

144:                                              ; preds = %143, %132
  br label %189

145:                                              ; preds = %84
  %146 = load %struct.m_config*, %struct.m_config** %15, align 8
  %147 = icmp ne %struct.m_config* %146, null
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load %struct.m_obj_desc*, %struct.m_obj_desc** %18, align 8
  %150 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %149, i32 0, i32 0
  %151 = load i32 (%struct.mp_log*)*, i32 (%struct.mp_log*)** %150, align 8
  %152 = icmp ne i32 (%struct.mp_log*)* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.m_obj_desc*, %struct.m_obj_desc** %18, align 8
  %155 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %154, i32 0, i32 0
  %156 = load i32 (%struct.mp_log*)*, i32 (%struct.mp_log*)** %155, align 8
  %157 = load %struct.mp_log*, %struct.mp_log** %13, align 8
  %158 = call i32 %156(%struct.mp_log* %157)
  br label %159

159:                                              ; preds = %153, %148
  %160 = load %struct.m_config*, %struct.m_config** %15, align 8
  %161 = call i32 @m_config_print_option_list(%struct.m_config* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %187

162:                                              ; preds = %145
  %163 = load %struct.m_obj_list*, %struct.m_obj_list** %19, align 8
  %164 = getelementptr inbounds %struct.m_obj_list, %struct.m_obj_list* %163, i32 0, i32 0
  %165 = load i32 (%struct.mp_log*, i32)*, i32 (%struct.mp_log*, i32)** %164, align 8
  %166 = icmp ne i32 (%struct.mp_log*, i32)* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load %struct.m_obj_list*, %struct.m_obj_list** %19, align 8
  %169 = getelementptr inbounds %struct.m_obj_list, %struct.m_obj_list* %168, i32 0, i32 0
  %170 = load i32 (%struct.mp_log*, i32)*, i32 (%struct.mp_log*, i32)** %169, align 8
  %171 = load %struct.mp_log*, %struct.mp_log** %13, align 8
  %172 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @BSTR_P(i64 %173)
  %175 = call i32 @mp_tprintf(i32 80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %174)
  %176 = call i32 %170(%struct.mp_log* %171, i32 %175)
  br label %186

177:                                              ; preds = %162
  %178 = load %struct.mp_log*, %struct.mp_log** %13, align 8
  %179 = getelementptr inbounds %struct.bstr, %struct.bstr* %11, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @BSTR_P(i64 %180)
  %182 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @BSTR_P(i64 %183)
  %185 = call i32 @mp_warn(%struct.mp_log* %178, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %177, %167
  br label %187

187:                                              ; preds = %186, %159
  %188 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %188, i32* %24, align 4
  br label %189

189:                                              ; preds = %187, %144, %100, %71, %65
  %190 = call i32 @free_str_list(i8*** %22)
  %191 = load i32, i32* %24, align 4
  ret i32 %191
}

declare dso_local i32 @split_subconf(%struct.mp_log*, i64, %struct.bstr*, i32*, i32*) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, ...) #1

declare dso_local i32 @BSTR_P(i64) #1

declare dso_local i64 @bstr_equals0(i32, i8*) #1

declare dso_local i32 @get_obj_param(%struct.mp_log*, i64, i64, %struct.m_config*, i32, i32, i32, i32, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, i8**, i32, i32*) #1

declare dso_local i32* @bstrto0(i32*, i32) #1

declare dso_local i32 @bstr_eatstart0(%struct.bstr*, i8*) #1

declare dso_local i32 @m_config_print_option_list(%struct.m_config*, i8*) #1

declare dso_local i32 @mp_tprintf(i32, i8*, i32) #1

declare dso_local i32 @mp_warn(%struct.mp_log*, i8*, i32, i32) #1

declare dso_local i32 @free_str_list(i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
