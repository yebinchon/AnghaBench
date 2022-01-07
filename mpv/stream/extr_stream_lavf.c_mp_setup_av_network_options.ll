; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_lavf.c_mp_setup_av_network_options.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_lavf.c_mp_setup_av_network_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_global = type { i32 }
%struct.mp_log = type { i32 }
%struct.stream_lavf_params = type { i8*, i8*, i8*, i8*, i8*, i64, i8*, i32, i64*, i64, i64, i64 }

@stream_lavf_conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"user_agent\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cookies\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"tls_verify\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ca_file\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"cert_file\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"key_file\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Referer: %s\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"headers\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"icy\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_setup_av_network_options(i32** %0, %struct.mpv_global* %1, %struct.mp_log* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.mpv_global*, align 8
  %6 = alloca %struct.mp_log*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stream_lavf_params*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [80 x i8], align 16
  store i32** %0, i32*** %4, align 8
  store %struct.mpv_global* %1, %struct.mpv_global** %5, align 8
  store %struct.mp_log* %2, %struct.mp_log** %6, align 8
  %14 = call i8* @talloc_new(i32* null)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.mpv_global*, %struct.mpv_global** %5, align 8
  %17 = call %struct.stream_lavf_params* @mp_get_config_group(i8* %15, %struct.mpv_global* %16, i32* @stream_lavf_conf)
  store %struct.stream_lavf_params* %17, %struct.stream_lavf_params** %8, align 8
  %18 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %19 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32**, i32*** %4, align 8
  %24 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %25 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @av_dict_set(i32** %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %26, i32 0)
  br label %28

28:                                               ; preds = %22, %3
  %29 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %30 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %29, i32 0, i32 11
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %28
  %34 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %35 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.mpv_global*, %struct.mpv_global** %5, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i8* @mp_get_user_path(i8* %46, %struct.mpv_global* %47, i8* %48)
  store i8* %49, i8** %9, align 8
  br label %50

50:                                               ; preds = %45, %39, %33
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i8* @cookies_lavf(i8* %51, %struct.mp_log* %52, i8* %53)
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32**, i32*** %4, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @av_dict_set(i32** %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %65, i32 0)
  br label %67

67:                                               ; preds = %63, %57, %50
  br label %68

68:                                               ; preds = %67, %28
  %69 = load i32**, i32*** %4, align 8
  %70 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %71 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %70, i32 0, i32 10
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %76 = call i32 @av_dict_set(i32** %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 0)
  %77 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %78 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %68
  %82 = load i32**, i32*** %4, align 8
  %83 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %84 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @av_dict_set(i32** %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %85, i32 0)
  br label %87

87:                                               ; preds = %81, %68
  %88 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %89 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32**, i32*** %4, align 8
  %94 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %95 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @av_dict_set(i32** %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %96, i32 0)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %100 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %99, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32**, i32*** %4, align 8
  %105 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %106 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %105, i32 0, i32 4
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @av_dict_set(i32** %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %107, i32 0)
  br label %109

109:                                              ; preds = %103, %98
  %110 = load i8*, i8** %7, align 8
  %111 = call i8* @talloc_strdup(i8* %110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  store i8* %111, i8** %11, align 8
  %112 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %113 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %112, i32 0, i32 9
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load i8*, i8** %11, align 8
  %118 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %119 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %118, i32 0, i32 9
  %120 = load i64, i64* %119, align 8
  %121 = call i8* @talloc_asprintf_append(i8* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i64 %120)
  store i8* %121, i8** %11, align 8
  br label %122

122:                                              ; preds = %116, %109
  %123 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %124 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %123, i32 0, i32 8
  %125 = load i64*, i64** %124, align 8
  %126 = icmp ne i64* %125, null
  br i1 %126, label %127, label %151

127:                                              ; preds = %122
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %147, %127
  %129 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %130 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %129, i32 0, i32 8
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %128
  %138 = load i8*, i8** %11, align 8
  %139 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %140 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %139, i32 0, i32 8
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = call i8* @talloc_asprintf_append(i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 %145)
  store i8* %146, i8** %11, align 8
  br label %147

147:                                              ; preds = %137
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %128

150:                                              ; preds = %128
  br label %151

151:                                              ; preds = %150, %122
  %152 = load i8*, i8** %11, align 8
  %153 = call i64 @strlen(i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32**, i32*** %4, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = call i32 @av_dict_set(i32** %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %157, i32 0)
  br label %159

159:                                              ; preds = %155, %151
  %160 = load i32**, i32*** %4, align 8
  %161 = call i32 @av_dict_set(i32** %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %162 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %163 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %159
  %167 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %168 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %169 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = sitofp i64 %170 to double
  %172 = fmul double %171, 1.000000e+06
  %173 = fptosi double %172 to i64
  %174 = call i32 @snprintf(i8* %167, i32 80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 %173)
  %175 = load i32**, i32*** %4, align 8
  %176 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %177 = call i32 @av_dict_set(i32** %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %176, i32 0)
  br label %178

178:                                              ; preds = %166, %159
  %179 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %180 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %179, i32 0, i32 6
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %197

183:                                              ; preds = %178
  %184 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %185 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %184, i32 0, i32 6
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %183
  %192 = load i32**, i32*** %4, align 8
  %193 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %194 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %193, i32 0, i32 6
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @av_dict_set(i32** %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %195, i32 0)
  br label %197

197:                                              ; preds = %191, %183, %178
  %198 = load i32**, i32*** %4, align 8
  %199 = load %struct.stream_lavf_params*, %struct.stream_lavf_params** %8, align 8
  %200 = getelementptr inbounds %struct.stream_lavf_params, %struct.stream_lavf_params* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @mp_set_avdict(i32** %198, i32 %201)
  %203 = load i8*, i8** %7, align 8
  %204 = call i32 @talloc_free(i8* %203)
  ret void
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local %struct.stream_lavf_params* @mp_get_config_group(i8*, %struct.mpv_global*, i32*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i8* @mp_get_user_path(i8*, %struct.mpv_global*, i8*) #1

declare dso_local i8* @cookies_lavf(i8*, %struct.mp_log*, i8*) #1

declare dso_local i8* @talloc_strdup(i8*, i8*) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @mp_set_avdict(i32**, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
