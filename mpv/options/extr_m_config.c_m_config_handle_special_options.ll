; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_handle_special_options.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_handle_special_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i64, i64, i32, i64, i64, i32, i32 (i32, i8*, i32)*, i32 }
%struct.m_config_option = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"No profiles have been defined.\0A\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@M_OPT_MISSING_PARAM = common dso_local global i32 0, align 4
@MAX_RECURSION_DEPTH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Maximum 'include' nesting depth exceeded.\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"show-profile\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@mp_help_text = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"list-options\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@M_OPT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_config*, %struct.m_config_option*, i8*, i32)* @m_config_handle_special_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_config_handle_special_options(%struct.m_config* %0, %struct.m_config_option* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_config*, align 8
  %7 = alloca %struct.m_config_option*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.m_config* %0, %struct.m_config** %6, align 8
  store %struct.m_config_option* %1, %struct.m_config_option** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.m_config*, %struct.m_config** %6, align 8
  %16 = getelementptr inbounds %struct.m_config, %struct.m_config* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %91

19:                                               ; preds = %4
  %20 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %21 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %91

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i8***
  %28 = load i8**, i8*** %27, align 8
  store i8** %28, i8*** %10, align 8
  %29 = load i8**, i8*** %10, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %25
  %32 = load i8**, i8*** %10, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load i8**, i8*** %10, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %36
  %42 = load i8**, i8*** %10, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.m_config*, %struct.m_config** %6, align 8
  %49 = getelementptr inbounds %struct.m_config, %struct.m_config* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load %struct.m_config*, %struct.m_config** %6, align 8
  %54 = call i32 @MP_INFO(%struct.m_config* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %55, i32* %5, align 4
  br label %227

56:                                               ; preds = %47
  %57 = load %struct.m_config*, %struct.m_config** %6, align 8
  %58 = call i32 @list_profiles(%struct.m_config* %57)
  %59 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %59, i32* %5, align 4
  br label %227

60:                                               ; preds = %41, %36, %31, %25
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %87, %60
  %62 = load i8**, i8*** %10, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i8**, i8*** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br label %71

71:                                               ; preds = %64, %61
  %72 = phi i1 [ false, %61 ], [ %70, %64 ]
  br i1 %72, label %73, label %90

73:                                               ; preds = %71
  %74 = load %struct.m_config*, %struct.m_config** %6, align 8
  %75 = load i8**, i8*** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @m_config_set_profile(%struct.m_config* %74, i8* %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %227

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %61

90:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %227

91:                                               ; preds = %19, %4
  %92 = load %struct.m_config*, %struct.m_config** %6, align 8
  %93 = getelementptr inbounds %struct.m_config, %struct.m_config* %92, i32 0, i32 6
  %94 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %93, align 8
  %95 = icmp ne i32 (i32, i8*, i32)* %94, null
  br i1 %95, label %96, label %157

96:                                               ; preds = %91
  %97 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %98 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %157

102:                                              ; preds = %96
  %103 = load i8*, i8** %8, align 8
  %104 = bitcast i8* %103 to i8**
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %13, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108, %102
  %114 = load i32, i32* @M_OPT_MISSING_PARAM, align 4
  store i32 %114, i32* %5, align 4
  br label %227

115:                                              ; preds = %108
  %116 = load %struct.m_config*, %struct.m_config** %6, align 8
  %117 = getelementptr inbounds %struct.m_config, %struct.m_config* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MAX_RECURSION_DEPTH, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.m_config*, %struct.m_config** %6, align 8
  %123 = call i32 @MP_ERR(%struct.m_config* %122, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %124, i32* %5, align 4
  br label %227

125:                                              ; preds = %115
  %126 = load %struct.m_config*, %struct.m_config** %6, align 8
  %127 = getelementptr inbounds %struct.m_config, %struct.m_config* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = load %struct.m_config*, %struct.m_config** %6, align 8
  %131 = getelementptr inbounds %struct.m_config, %struct.m_config* %130, i32 0, i32 6
  %132 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %131, align 8
  %133 = load %struct.m_config*, %struct.m_config** %6, align 8
  %134 = getelementptr inbounds %struct.m_config, %struct.m_config* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 %132(i32 %135, i8* %136, i32 %137)
  %139 = load %struct.m_config*, %struct.m_config** %6, align 8
  %140 = getelementptr inbounds %struct.m_config, %struct.m_config* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %141, 1
  store i64 %142, i64* %140, align 8
  %143 = load %struct.m_config*, %struct.m_config** %6, align 8
  %144 = getelementptr inbounds %struct.m_config, %struct.m_config* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %125
  %148 = load %struct.m_config*, %struct.m_config** %6, align 8
  %149 = getelementptr inbounds %struct.m_config, %struct.m_config* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.m_config*, %struct.m_config** %6, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @m_config_finish_default_profile(%struct.m_config* %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %147, %125
  store i32 1, i32* %5, align 4
  br label %227

157:                                              ; preds = %96, %91
  %158 = load %struct.m_config*, %struct.m_config** %6, align 8
  %159 = getelementptr inbounds %struct.m_config, %struct.m_config* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %157
  %163 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %164 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @strcmp(i8* %165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %162
  %169 = load %struct.m_config*, %struct.m_config** %6, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = bitcast i8* %170 to i8**
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @bstr0(i8* %172)
  %174 = call i32 @show_profile(%struct.m_config* %169, i32 %173)
  store i32 %174, i32* %5, align 4
  br label %227

175:                                              ; preds = %162, %157
  %176 = load %struct.m_config*, %struct.m_config** %6, align 8
  %177 = getelementptr inbounds %struct.m_config, %struct.m_config* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %215

180:                                              ; preds = %175
  %181 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %182 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @strcmp(i8* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %188 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %215

192:                                              ; preds = %186, %180
  %193 = load i8*, i8** %8, align 8
  %194 = bitcast i8* %193 to i8**
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %14, align 8
  %196 = load %struct.m_config*, %struct.m_config** %6, align 8
  %197 = getelementptr inbounds %struct.m_config, %struct.m_config* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @mp_help_text, align 4
  %200 = call i32 @mp_info(i32 %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %199)
  %201 = load i8*, i8** %14, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %213

203:                                              ; preds = %192
  %204 = load i8*, i8** %14, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load %struct.m_config*, %struct.m_config** %6, align 8
  %211 = load i8*, i8** %14, align 8
  %212 = call i32 @m_config_print_option_list(%struct.m_config* %210, i8* %211)
  br label %213

213:                                              ; preds = %209, %203, %192
  %214 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %214, i32* %5, align 4
  br label %227

215:                                              ; preds = %186, %175
  %216 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %217 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = call i64 @strcmp(i8* %218, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %215
  %222 = load %struct.m_config*, %struct.m_config** %6, align 8
  %223 = call i32 @m_config_print_option_list(%struct.m_config* %222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %224 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %224, i32* %5, align 4
  br label %227

225:                                              ; preds = %215
  %226 = load i32, i32* @M_OPT_UNKNOWN, align 4
  store i32 %226, i32* %5, align 4
  br label %227

227:                                              ; preds = %225, %221, %213, %168, %156, %121, %113, %90, %84, %56, %52
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @MP_INFO(%struct.m_config*, i8*) #1

declare dso_local i32 @list_profiles(%struct.m_config*) #1

declare dso_local i32 @m_config_set_profile(%struct.m_config*, i8*, i32) #1

declare dso_local i32 @MP_ERR(%struct.m_config*, i8*) #1

declare dso_local i32 @m_config_finish_default_profile(%struct.m_config*, i32) #1

declare dso_local i32 @show_profile(%struct.m_config*, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @mp_info(i32, i8*, i32) #1

declare dso_local i32 @m_config_print_option_list(%struct.m_config*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
