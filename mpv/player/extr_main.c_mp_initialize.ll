; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_main.c_mp_initialize.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_main.c_mp_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.MPOpts* }
%struct.TYPE_7__ = type { %struct.MPContext*, i32 (%struct.MPContext*, i32*, i32)*, %struct.MPContext*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.MPOpts = type { i32, i32, %struct.TYPE_6__*, i32, i64*, i32 }
%struct.TYPE_6__ = type { i64* }

@.str = private unnamed_addr constant [22 x i8] c"Command line options:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"builtin-pseudo-gui\00", align 1
@M_SETOPT_NO_OVERWRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"pseudo-gui\00", align 1
@mp_on_set_option = common dso_local global i32 0, align 4
@UPDATE_OPTS_MASK = common dso_local global i32 0, align 4
@mp_null_log = common dso_local global i32 0, align 4
@MSGL_FATAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [218 x i8] c"\0Ampv was compiled against an incompatible version of FFmpeg/Libav than the shared\0Alibrary it is linked against. This is most likely a broken build and could\0Aresult in misbehavior and crashes.\0A\0AThis is a broken build.\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@mp_help_text = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"start init\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Encoding initialization failed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@MP_INPUT_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"Compiled without libass.\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"There will be no OSD and no text subtitles.\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"end init\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_initialize(%struct.MPContext* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.MPOpts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %10 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %9, i32 0, i32 8
  %11 = load %struct.MPOpts*, %struct.MPOpts** %10, align 8
  store %struct.MPOpts* %11, %struct.MPOpts** %6, align 8
  %12 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8**, i8*** %5, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %29 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %28, i32 0, i32 5
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @m_config_preparse_command_line(%struct.TYPE_7__* %24, i32 %27, i32* %29, i8** %30)
  br label %32

32:                                               ; preds = %21, %2
  %33 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %34 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %37 = call i32 @mp_init_paths(i32 %35, %struct.MPOpts* %36)
  %38 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %39 = call i32 @mp_update_logging(%struct.MPContext* %38, i32 1)
  %40 = load i8**, i8*** %5, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %32
  %43 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %44 = call i32 (%struct.MPContext*, i8*, ...) @MP_VERBOSE(%struct.MPContext* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %60, %42
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (%struct.MPContext*, i8*, ...) @MP_VERBOSE(%struct.MPContext* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %45

63:                                               ; preds = %45
  %64 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %65 = call i32 (%struct.MPContext*, i8*, ...) @MP_VERBOSE(%struct.MPContext* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %32
  %67 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %68 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mp_print_version(i32 %69, i32 0)
  %71 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %72 = call i32 @mp_parse_cfgfiles(%struct.MPContext* %71)
  %73 = load i8**, i8*** %5, align 8
  %74 = icmp ne i8** %73, null
  br i1 %74, label %75, label %96

75:                                               ; preds = %66
  %76 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %77 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %80 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %79, i32 0, i32 7
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %83 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i8**, i8*** %5, align 8
  %86 = call i32 @m_config_parse_mp_command_line(%struct.TYPE_7__* %78, %struct.TYPE_8__* %81, i32 %84, i8** %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %75
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @M_OPT_EXIT, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 -1
  store i32 %94, i32* %3, align 4
  br label %239

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95, %66
  %97 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %98 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %103 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %102, i32 0, i32 2
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i32, i32* @M_SETOPT_NO_OVERWRITE, align 4
  %106 = call i32 @m_config_set_profile(%struct.TYPE_7__* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %108 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = call i32 @m_config_set_profile(%struct.TYPE_7__* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %111

111:                                              ; preds = %101, %96
  %112 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %113 = call i32 @mp_get_resume_defaults(%struct.MPContext* %112)
  %114 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %115 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @mp_input_load_config(i32 %116)
  %118 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %119 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i32, i32* @mp_on_set_option, align 4
  %121 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %122 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %121, i32 0, i32 2
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  store i32 %120, i32* %124, align 8
  %125 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %126 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %127 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %126, i32 0, i32 2
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  store %struct.MPContext* %125, %struct.MPContext** %129, align 8
  %130 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %131 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %130, i32 0, i32 2
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store i32 (%struct.MPContext*, i32*, i32)* @mp_option_change_callback, i32 (%struct.MPContext*, i32*, i32)** %133, align 8
  %134 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %135 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %136 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %135, i32 0, i32 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store %struct.MPContext* %134, %struct.MPContext** %138, align 8
  %139 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %140 = load i32, i32* @UPDATE_OPTS_MASK, align 4
  %141 = call i32 @mp_option_change_callback(%struct.MPContext* %139, i32* null, i32 %140)
  %142 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %143 = call i64 @handle_help_options(%struct.MPContext* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %111
  store i32 1, i32* %3, align 4
  br label %239

146:                                              ; preds = %111
  %147 = load i32, i32* @mp_null_log, align 4
  %148 = call i32 @print_libav_versions(i32 %147, i32 0)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %152 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MSGL_FATAL, align 4
  %155 = call i32 @print_libav_versions(i32 %153, i32 %154)
  %156 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %157 = call i32 @MP_FATAL(%struct.MPContext* %156, i8* getelementptr inbounds ([218 x i8], [218 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %239

158:                                              ; preds = %146
  %159 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %160 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %159, i32 0, i32 7
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %178, label %165

165:                                              ; preds = %158
  %166 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %167 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %165
  %171 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %172 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @mp_print_version(i32 %173, i32 1)
  %175 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %176 = load i32, i32* @mp_help_text, align 4
  %177 = call i32 (%struct.MPContext*, i8*, ...) @MP_INFO(%struct.MPContext* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %176)
  store i32 1, i32* %3, align 4
  br label %239

178:                                              ; preds = %165, %158
  %179 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %180 = call i32 @MP_STATS(%struct.MPContext* %179, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %181 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %182 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %181, i32 0, i32 2
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = icmp ne i64* %185, null
  br i1 %186, label %187, label %220

187:                                              ; preds = %178
  %188 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %189 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %188, i32 0, i32 2
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %220

196:                                              ; preds = %187
  %197 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %198 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @encode_lavc_init(i32 %199)
  %201 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %202 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  %203 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %204 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %196
  %208 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %209 = call i32 (%struct.MPContext*, i8*, ...) @MP_INFO(%struct.MPContext* %208, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %239

210:                                              ; preds = %196
  %211 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %212 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %211, i32 0, i32 2
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = call i32 @m_config_set_profile(%struct.TYPE_7__* %213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %215 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %216 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @MP_INPUT_EXCLUSIVE, align 4
  %219 = call i32 @mp_input_enable_section(i32 %217, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %210, %187, %178
  %221 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %222 = call i32 @MP_WARN(%struct.MPContext* %221, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %223 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %224 = call i32 @MP_WARN(%struct.MPContext* %223, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  %225 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %226 = call i32 @mp_load_scripts(%struct.MPContext* %225)
  %227 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %228 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %231, label %236

231:                                              ; preds = %220
  %232 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %233 = call i64 @handle_force_window(%struct.MPContext* %232, i32 0)
  %234 = icmp slt i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  store i32 -1, i32* %3, align 4
  br label %239

236:                                              ; preds = %231, %220
  %237 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %238 = call i32 @MP_STATS(%struct.MPContext* %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %239

239:                                              ; preds = %236, %235, %207, %170, %150, %145, %89
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @m_config_preparse_command_line(%struct.TYPE_7__*, i32, i32*, i8**) #1

declare dso_local i32 @mp_init_paths(i32, %struct.MPOpts*) #1

declare dso_local i32 @mp_update_logging(%struct.MPContext*, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, ...) #1

declare dso_local i32 @mp_print_version(i32, i32) #1

declare dso_local i32 @mp_parse_cfgfiles(%struct.MPContext*) #1

declare dso_local i32 @m_config_parse_mp_command_line(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i8**) #1

declare dso_local i32 @m_config_set_profile(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @mp_get_resume_defaults(%struct.MPContext*) #1

declare dso_local i32 @mp_input_load_config(i32) #1

declare dso_local i32 @mp_option_change_callback(%struct.MPContext*, i32*, i32) #1

declare dso_local i64 @handle_help_options(%struct.MPContext*) #1

declare dso_local i32 @print_libav_versions(i32, i32) #1

declare dso_local i32 @MP_FATAL(%struct.MPContext*, i8*) #1

declare dso_local i32 @MP_INFO(%struct.MPContext*, i8*, ...) #1

declare dso_local i32 @MP_STATS(%struct.MPContext*, i8*) #1

declare dso_local i32 @encode_lavc_init(i32) #1

declare dso_local i32 @mp_input_enable_section(i32, i8*, i32) #1

declare dso_local i32 @MP_WARN(%struct.MPContext*, i8*) #1

declare dso_local i32 @mp_load_scripts(%struct.MPContext*) #1

declare dso_local i64 @handle_force_window(%struct.MPContext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
