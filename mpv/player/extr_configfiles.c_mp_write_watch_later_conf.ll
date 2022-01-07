; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_write_watch_later_conf.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_write_watch_later_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i8**, i32, i32, %struct.demuxer*, %struct.playlist_entry* }
%struct.demuxer = type { i64, i32 }
%struct.playlist_entry = type { i32, i8**, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Not seekable - not saving state.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Saving state.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"start=%f\0A\00", align 1
@backup_properties = common dso_local global i8** null, align 8
@M_PROPERTY_GET_STRING = common dso_local global i32 0, align 4
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"options/\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s=%%%d%%%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_write_watch_later_conf(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.playlist_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.demuxer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [4096 x i8], align 16
  %16 = alloca %struct.TYPE_4__, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %17 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 4
  %19 = load %struct.playlist_entry*, %struct.playlist_entry** %18, align 8
  store %struct.playlist_entry* %19, %struct.playlist_entry** %3, align 8
  store i8* null, i8** %4, align 8
  %20 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %21 = icmp ne %struct.playlist_entry* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %232

23:                                               ; preds = %1
  %24 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %25 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %24, i32 0, i32 3
  %26 = load %struct.demuxer*, %struct.demuxer** %25, align 8
  store %struct.demuxer* %26, %struct.demuxer** %5, align 8
  %27 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %28 = icmp ne %struct.demuxer* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %31 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %36 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %29
  %40 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %41 = call i32 @MP_INFO(%struct.MPContext* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %232

42:                                               ; preds = %34, %23
  %43 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %44 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %45 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @mp_get_playback_resume_config_filename(%struct.MPContext* %43, i32 %46)
  store i8* %47, i8** %4, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %232

51:                                               ; preds = %42
  %52 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %56 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @mp_mk_config_dir(i32 %54, i32 %57)
  %59 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %60 = call i32 @MP_INFO(%struct.MPContext* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i8*, i8** %4, align 8
  %62 = call i32* @fopen(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %51
  br label %232

66:                                               ; preds = %51
  %67 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %70 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @write_filename(%struct.MPContext* %67, i32* %68, i32 %71)
  %73 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %74 = call double @get_current_time(%struct.MPContext* %73)
  store double %74, double* %7, align 8
  %75 = load double, double* %7, align 8
  %76 = load double, double* @MP_NOPTS_VALUE, align 8
  %77 = fcmp une double %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i32*, i32** %6, align 8
  %80 = load double, double* %7, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), double %80)
  br label %82

82:                                               ; preds = %78, %66
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %146, %82
  %84 = load i8**, i8*** @backup_properties, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %149

90:                                               ; preds = %83
  %91 = load i8**, i8*** @backup_properties, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* @M_PROPERTY_GET_STRING, align 4
  %98 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %99 = call i32 @mp_property_do(i8* %96, i32 %97, i8** %10, %struct.MPContext* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @M_PROPERTY_OK, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %143

103:                                              ; preds = %90
  %104 = load i8*, i8** %9, align 8
  %105 = call i64 @strncmp(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 8
  store i8* %109, i8** %9, align 8
  br label %110

110:                                              ; preds = %107, %103
  %111 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %112 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %12, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %110
  %121 = load i8*, i8** %12, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i64 @strcmp(i8* %121, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %120, %110
  %126 = load i8*, i8** %10, align 8
  %127 = call i64 @needs_config_quoting(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i32*, i32** %6, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @strlen(i8* %132)
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %131, i32 %133, i8* %134)
  br label %141

136:                                              ; preds = %125
  %137 = load i32*, i32** %6, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %138, i8* %139)
  br label %141

141:                                              ; preds = %136, %129
  br label %142

142:                                              ; preds = %141, %120
  br label %143

143:                                              ; preds = %142, %90
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 @talloc_free(i8* %144)
  br label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %83

149:                                              ; preds = %83
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @fclose(i32* %150)
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %168, %149
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %155 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %152
  %159 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %160 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %161 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %160, i32 0, i32 1
  %162 = load i8**, i8*** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @write_redirect(%struct.MPContext* %159, i8* %166)
  br label %168

168:                                              ; preds = %158
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %152

171:                                              ; preds = %152
  %172 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %173 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %231

176:                                              ; preds = %171
  %177 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %178 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %177, i32 0, i32 1
  %179 = load i8**, i8*** %178, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 0
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %14, align 8
  %182 = load i8*, i8** %14, align 8
  %183 = call i32 @bstr0(i8* %182)
  %184 = call i32 @mp_is_url(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %230, label %186

186:                                              ; preds = %176
  %187 = load i8*, i8** %14, align 8
  %188 = call i32 @strlen(i8* %187)
  %189 = sext i32 %188 to i64
  %190 = icmp ult i64 %189, 4096
  br i1 %190, label %191, label %230

191:                                              ; preds = %186
  %192 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %193 = load i8*, i8** %14, align 8
  %194 = call i32 @snprintf(i8* %192, i32 4096, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %193)
  br label %195

195:                                              ; preds = %225, %191
  %196 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %197 = call i32 @mp_dirname(i8* %196)
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %197, i32* %198, align 4
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %202 = call i32 @strlen(i8* %201)
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %213, label %204

204:                                              ; preds = %195
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @bstr_equals0(i32 %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208, %204, %195
  br label %229

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 %217
  store i8 0, i8* %218, align 1
  %219 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %220 = call i32 @strlen(i8* %219)
  %221 = icmp sge i32 %220, 2
  br i1 %221, label %222, label %225

222:                                              ; preds = %214
  %223 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %224 = call i32 @mp_path_strip_trailing_separator(i8* %223)
  br label %225

225:                                              ; preds = %222, %214
  %226 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %227 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %228 = call i32 @write_redirect(%struct.MPContext* %226, i8* %227)
  br label %195

229:                                              ; preds = %213
  br label %230

230:                                              ; preds = %229, %186, %176
  br label %231

231:                                              ; preds = %230, %171
  br label %232

232:                                              ; preds = %231, %65, %50, %39, %22
  %233 = load i8*, i8** %4, align 8
  %234 = call i32 @talloc_free(i8* %233)
  ret void
}

declare dso_local i32 @MP_INFO(%struct.MPContext*, i8*) #1

declare dso_local i8* @mp_get_playback_resume_config_filename(%struct.MPContext*, i32) #1

declare dso_local i32 @mp_mk_config_dir(i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @write_filename(%struct.MPContext*, i32*, i32) #1

declare dso_local double @get_current_time(%struct.MPContext*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @mp_property_do(i8*, i32, i8**, %struct.MPContext*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @needs_config_quoting(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @write_redirect(%struct.MPContext*, i8*) #1

declare dso_local i32 @mp_is_url(i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @mp_dirname(i8*) #1

declare dso_local i64 @bstr_equals0(i32, i8*) #1

declare dso_local i32 @mp_path_strip_trailing_separator(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
