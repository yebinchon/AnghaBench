; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_readfile.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_readfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32*, i32, i32, i8*, i8*, %struct.TYPE_12__*, i8*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i8*, i8* }

@D_STATSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"STATSD configuration reading file '%s'\00", align 1
@STATSD_CONF_LINE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"STATSD: cannot open file '%s'.\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"STATSD: ignoring line %zu of file '%s', it is empty.\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"STATSD: processing line %zu of file '%s': %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"STATSD: ignoring line %zu of file '%s', include filename is empty\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"app\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"unnamed\00", align 1
@localhost = common dso_local global %struct.TYPE_15__* null, align 8
@statsd = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"%zu@%s\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"dictionary\00", align 1
@DICTIONARY_FLAG_SINGLE_THREADED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"Statsd chart\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"overview\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@NETDATA_CHART_PRIO_STATSD_PRIVATE = common dso_local global i8* null, align 8
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [69 x i8] c"STATSD: ignoring line %zu ('%s') of file '%s', [app] is not defined.\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"STATSD: ignoring line %zu ('%s') of file '%s', it is outside all sections.\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"STATSD: ignoring line %zu ('%s') of file '%s', there is no = in it.\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"STATSD: ignoring line %zu of file '%s', name is empty.\00", align 1
@D_CONFIG = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [56 x i8] c"STATSD: ignoring line %zu of file '%s', value is empty.\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@SIMPLE_PATTERN_EXACT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [15 x i8] c"private charts\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [24 x i8] c"gaps when not collected\00", align 1
@STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"memory mode\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.27 = private unnamed_addr constant [86 x i8] c"STATSD: ignoring line %zu ('%s') of file '%s'. Unknown keyword for the [app] section.\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"dimension\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@RRDDIM_FLAG_NONE = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@RRDDIM_FLAG_HIDDEN = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [8 x i8] c"noreset\00", align 1
@RRDDIM_FLAG_DONT_DETECT_RESETS_OR_OVERFLOWS = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [11 x i8] c"nooverflow\00", align 1
@.str.39 = private unnamed_addr constant [85 x i8] c"STATSD: ignoring line %zu ('%s') of file '%s'. Unknown keyword for the [%s] section.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32*)* @statsd_readfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statsd_readfile(i8* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca [10 x i8*], align 16
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32* %3, i32** %9, align 8
  %36 = load i32, i32* @D_STATSD, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 (i32, i8*, ...) @debug(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @STATSD_CONF_LINE_MAX, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i8* @mallocz(i32 %40)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @freez(i8* %49)
  store i32 -1, i32* %5, align 4
  br label %727

51:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %721, %704, %440, %319, %312, %292, %281, %277, %134, %74, %51
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* @STATSD_CONF_LINE_MAX, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32* @fgets(i8* %53, i32 %54, i32* %55)
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %722

58:                                               ; preds = %52
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @STATSD_CONF_LINE_MAX, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %12, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i8* @trim(i8* %65)
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load i8*, i8** %13, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 35
  br i1 %73, label %74, label %79

74:                                               ; preds = %69, %58
  %75 = load i32, i32* @D_STATSD, align 4
  %76 = load i64, i64* %12, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 (i32, i8*, ...) @debug(i32 %75, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %76, i8* %77)
  br label %52

79:                                               ; preds = %69
  %80 = load i32, i32* @D_STATSD, align 4
  %81 = load i64, i64* %12, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 (i32, i8*, ...) @debug(i32 %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %81, i8* %82, i8* %83)
  %85 = load i8*, i8** %13, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 105
  br i1 %88, label %89, label %135

89:                                               ; preds = %79
  %90 = load i8*, i8** %13, align 8
  %91 = call i64 @strncmp(i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %135

93:                                               ; preds = %89
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 7
  %96 = call i8* @trim(i8* %95)
  store i8* %96, i8** %13, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %130

99:                                               ; preds = %93
  %100 = load i8*, i8** %13, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %99
  %105 = load i8*, i8** %13, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 47
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i8*, i8** %13, align 8
  %111 = call i8* @strdupz(i8* %110)
  store i8* %111, i8** %14, align 8
  br label %122

112:                                              ; preds = %104
  %113 = load i8*, i8** %6, align 8
  %114 = call i8* @strdupz(i8* %113)
  store i8* %114, i8** %15, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = call i8* @dirname(i8* %115)
  store i8* %116, i8** %16, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = call i8* @strdupz_path_subpath(i8* %117, i8* %118)
  store i8* %119, i8** %14, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @freez(i8* %120)
  br label %122

122:                                              ; preds = %112, %109
  %123 = load i8*, i8** %14, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @statsd_readfile(i8* %123, %struct.TYPE_13__* %124, %struct.TYPE_12__* %125, i32* %126)
  %128 = load i8*, i8** %14, align 8
  %129 = call i32 @freez(i8* %128)
  br label %134

130:                                              ; preds = %99, %93
  %131 = load i64, i64* %12, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i64 %131, i8* %132)
  br label %134

134:                                              ; preds = %130, %122
  br label %52

135:                                              ; preds = %89, %79
  %136 = load i8*, i8** %13, align 8
  %137 = call i64 @strlen(i8* %136)
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %17, align 4
  %139 = load i8*, i8** %13, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 91
  br i1 %142, label %143, label %278

143:                                              ; preds = %135
  %144 = load i8*, i8** %13, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 93
  br i1 %151, label %152, label %278

152:                                              ; preds = %143
  %153 = load i8*, i8** %13, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %13, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %13, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %196, label %163

163:                                              ; preds = %152
  %164 = call i8* @callocz(i32 64, i32 1)
  %165 = bitcast i8* %164 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %165, %struct.TYPE_13__** %7, align 8
  %166 = call i8* @strdupz(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 5
  store i8* %166, i8** %168, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** @localhost, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** @localhost, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @statsd, i32 0, i32 0), align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 8
  store %struct.TYPE_13__* %179, %struct.TYPE_13__** %181, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %182, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @statsd, i32 0, i32 0), align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  store i32* null, i32** %9, align 8
  %183 = load i32, i32* @FILENAME_MAX, align 4
  %184 = add nsw i32 %183, 1
  %185 = zext i32 %184 to i64
  %186 = call i8* @llvm.stacksave()
  store i8* %186, i8** %18, align 8
  %187 = alloca i8, i64 %185, align 16
  store i64 %185, i64* %19, align 8
  %188 = load i32, i32* @FILENAME_MAX, align 4
  %189 = load i64, i64* %12, align 8
  %190 = load i8*, i8** %6, align 8
  %191 = call i32 @snprintfz(i8* %187, i32 %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 %189, i8* %190)
  %192 = call i8* @strdupz(i8* %187)
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 7
  store i8* %192, i8** %194, align 8
  %195 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %195)
  br label %277

196:                                              ; preds = %152
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %198 = icmp ne %struct.TYPE_13__* %197, null
  br i1 %198, label %199, label %271

199:                                              ; preds = %196
  %200 = load i8*, i8** %13, align 8
  %201 = call i64 @strcmp(i8* %200, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %217, label %203

203:                                              ; preds = %199
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load i32, i32* @DICTIONARY_FLAG_SINGLE_THREADED, align 4
  %210 = call i32* @dictionary_create(i32 %209)
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  store i32* %210, i32** %212, align 8
  br label %213

213:                                              ; preds = %208, %203
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  store i32* %216, i32** %9, align 8
  br label %270

217:                                              ; preds = %199
  store i32* null, i32** %9, align 8
  %218 = call i8* @callocz(i32 80, i32 1)
  %219 = bitcast i8* %218 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %219, %struct.TYPE_12__** %8, align 8
  %220 = load i8*, i8** %13, align 8
  %221 = call i32 @netdata_fix_chart_id(i8* %220)
  %222 = load i8*, i8** %13, align 8
  %223 = call i8* @strdupz(i8* %222)
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  store i8* %223, i8** %225, align 8
  %226 = load i8*, i8** %13, align 8
  %227 = call i8* @strdupz(i8* %226)
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 7
  store i8* %227, i8** %229, align 8
  %230 = call i8* @strdupz(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 6
  store i8* %230, i8** %232, align 8
  %233 = load i8*, i8** %13, align 8
  %234 = call i8* @strdupz(i8* %233)
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 4
  store i8* %234, i8** %236, align 8
  %237 = call i8* @strdupz(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 5
  store i8* %237, i8** %239, align 8
  %240 = call i8* @strdupz(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 3
  store i8* %240, i8** %242, align 8
  %243 = load i8*, i8** @NETDATA_CHART_PRIO_STATSD_PRIVATE, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 2
  store i8* %243, i8** %245, align 8
  %246 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 8
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 6
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 9
  store %struct.TYPE_12__* %251, %struct.TYPE_12__** %253, align 8
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 6
  store %struct.TYPE_12__* %254, %struct.TYPE_12__** %256, align 8
  %257 = load i32, i32* @FILENAME_MAX, align 4
  %258 = add nsw i32 %257, 1
  %259 = zext i32 %258 to i64
  %260 = call i8* @llvm.stacksave()
  store i8* %260, i8** %20, align 8
  %261 = alloca i8, i64 %259, align 16
  store i64 %259, i64* %21, align 8
  %262 = load i32, i32* @FILENAME_MAX, align 4
  %263 = load i64, i64* %12, align 8
  %264 = load i8*, i8** %6, align 8
  %265 = call i32 @snprintfz(i8* %261, i32 %262, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 %263, i8* %264)
  %266 = call i8* @strdupz(i8* %261)
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 8
  store i8* %266, i8** %268, align 8
  %269 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %269)
  br label %270

270:                                              ; preds = %217, %213
  br label %276

271:                                              ; preds = %196
  %272 = load i64, i64* %12, align 8
  %273 = load i8*, i8** %13, align 8
  %274 = load i8*, i8** %6, align 8
  %275 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.14, i64 0, i64 0), i64 %272, i8* %273, i8* %274)
  br label %276

276:                                              ; preds = %271, %270
  br label %277

277:                                              ; preds = %276, %163
  br label %52

278:                                              ; preds = %143, %135
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %280 = icmp ne %struct.TYPE_13__* %279, null
  br i1 %280, label %286, label %281

281:                                              ; preds = %278
  %282 = load i64, i64* %12, align 8
  %283 = load i8*, i8** %13, align 8
  %284 = load i8*, i8** %6, align 8
  %285 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i64 %282, i8* %283, i8* %284)
  br label %52

286:                                              ; preds = %278
  %287 = load i8*, i8** %13, align 8
  store i8* %287, i8** %22, align 8
  %288 = load i8*, i8** %13, align 8
  %289 = call i8* @strchr(i8* %288, i8 signext 61)
  store i8* %289, i8** %23, align 8
  %290 = load i8*, i8** %23, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %297, label %292

292:                                              ; preds = %286
  %293 = load i64, i64* %12, align 8
  %294 = load i8*, i8** %13, align 8
  %295 = load i8*, i8** %6, align 8
  %296 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i64 0, i64 0), i64 %293, i8* %294, i8* %295)
  br label %52

297:                                              ; preds = %286
  %298 = load i8*, i8** %23, align 8
  store i8 0, i8* %298, align 1
  %299 = load i8*, i8** %23, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %23, align 8
  %301 = load i8*, i8** %22, align 8
  %302 = call i8* @trim(i8* %301)
  store i8* %302, i8** %22, align 8
  %303 = load i8*, i8** %23, align 8
  %304 = call i8* @trim(i8* %303)
  store i8* %304, i8** %23, align 8
  %305 = load i8*, i8** %22, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %307, label %312

307:                                              ; preds = %297
  %308 = load i8*, i8** %22, align 8
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %310, 35
  br i1 %311, label %312, label %316

312:                                              ; preds = %307, %297
  %313 = load i64, i64* %12, align 8
  %314 = load i8*, i8** %6, align 8
  %315 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0), i64 %313, i8* %314)
  br label %52

316:                                              ; preds = %307
  %317 = load i8*, i8** %23, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %324, label %319

319:                                              ; preds = %316
  %320 = load i32, i32* @D_CONFIG, align 4
  %321 = load i64, i64* %12, align 8
  %322 = load i8*, i8** %6, align 8
  %323 = call i32 (i32, i8*, ...) @debug(i32 %320, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i64 %321, i8* %322)
  br label %52

324:                                              ; preds = %316
  %325 = load i32*, i32** %9, align 8
  %326 = call i64 @unlikely(i32* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %324
  %329 = load i32*, i32** %9, align 8
  %330 = load i8*, i8** %22, align 8
  %331 = load i8*, i8** %23, align 8
  %332 = load i8*, i8** %23, align 8
  %333 = call i64 @strlen(i8* %332)
  %334 = add nsw i64 %333, 1
  %335 = call i32 @dictionary_set(i32* %329, i8* %330, i8* %331, i64 %334)
  br label %721

336:                                              ; preds = %324
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %338 = icmp ne %struct.TYPE_12__* %337, null
  br i1 %338, label %451, label %339

339:                                              ; preds = %336
  %340 = load i8*, i8** %22, align 8
  %341 = call i64 @strcmp(i8* %340, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %354, label %343

343:                                              ; preds = %339
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 5
  %346 = load i8*, i8** %345, align 8
  %347 = call i32 @freez(i8* %346)
  %348 = load i8*, i8** %23, align 8
  %349 = call i32 @netdata_fix_chart_name(i8* %348)
  %350 = load i8*, i8** %23, align 8
  %351 = call i8* @strdupz(i8* %350)
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 5
  store i8* %351, i8** %353, align 8
  br label %450

354:                                              ; preds = %339
  %355 = load i8*, i8** %22, align 8
  %356 = call i64 @strcmp(i8* %355, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %368, label %358

358:                                              ; preds = %354
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 4
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 @simple_pattern_free(i8* %361)
  %363 = load i8*, i8** %23, align 8
  %364 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %365 = call i8* @simple_pattern_create(i8* %363, i32* null, i32 %364)
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 4
  store i8* %365, i8** %367, align 8
  br label %449

368:                                              ; preds = %354
  %369 = load i8*, i8** %22, align 8
  %370 = call i64 @strcmp(i8* %369, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %394, label %372

372:                                              ; preds = %368
  %373 = load i8*, i8** %23, align 8
  %374 = call i64 @strcmp(i8* %373, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %372
  %377 = load i8*, i8** %23, align 8
  %378 = call i64 @strcmp(i8* %377, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %386, label %380

380:                                              ; preds = %376, %372
  %381 = load i32, i32* @STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED, align 4
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 4
  %385 = or i32 %384, %381
  store i32 %385, i32* %383, align 4
  br label %393

386:                                              ; preds = %376
  %387 = load i32, i32* @STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED, align 4
  %388 = xor i32 %387, -1
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 4
  %392 = and i32 %391, %388
  store i32 %392, i32* %390, align 4
  br label %393

393:                                              ; preds = %386, %380
  br label %448

394:                                              ; preds = %368
  %395 = load i8*, i8** %22, align 8
  %396 = call i64 @strcmp(i8* %395, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %413, label %398

398:                                              ; preds = %394
  %399 = load i8*, i8** %23, align 8
  %400 = call i64 @strcmp(i8* %399, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %398
  %403 = load i8*, i8** %23, align 8
  %404 = call i64 @strcmp(i8* %403, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %412, label %406

406:                                              ; preds = %402, %398
  %407 = load i32, i32* @STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED, align 4
  %408 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 4
  %411 = or i32 %410, %407
  store i32 %411, i32* %409, align 4
  br label %412

412:                                              ; preds = %406, %402
  br label %447

413:                                              ; preds = %394
  %414 = load i8*, i8** %22, align 8
  %415 = call i64 @strcmp(i8* %414, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %422, label %417

417:                                              ; preds = %413
  %418 = load i8*, i8** %23, align 8
  %419 = call i32 @rrd_memory_mode_id(i8* %418)
  %420 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 2
  store i32 %419, i32* %421, align 8
  br label %446

422:                                              ; preds = %413
  %423 = load i8*, i8** %22, align 8
  %424 = call i64 @strcmp(i8* %423, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %440, label %426

426:                                              ; preds = %422
  %427 = load i8*, i8** %23, align 8
  %428 = call i8* @atol(i8* %427)
  %429 = ptrtoint i8* %428 to i32
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 0
  store i32 %429, i32* %431, align 8
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = icmp slt i32 %434, 5
  br i1 %435, label %436, label %439

436:                                              ; preds = %426
  %437 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %438 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %437, i32 0, i32 0
  store i32 5, i32* %438, align 8
  br label %439

439:                                              ; preds = %436, %426
  br label %445

440:                                              ; preds = %422
  %441 = load i64, i64* %12, align 8
  %442 = load i8*, i8** %22, align 8
  %443 = load i8*, i8** %6, align 8
  %444 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.27, i64 0, i64 0), i64 %441, i8* %442, i8* %443)
  br label %52

445:                                              ; preds = %439
  br label %446

446:                                              ; preds = %445, %417
  br label %447

447:                                              ; preds = %446, %412
  br label %448

448:                                              ; preds = %447, %393
  br label %449

449:                                              ; preds = %448, %358
  br label %450

450:                                              ; preds = %449, %343
  br label %720

451:                                              ; preds = %336
  %452 = load i8*, i8** %22, align 8
  %453 = call i64 @strcmp(i8* %452, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %466, label %455

455:                                              ; preds = %451
  %456 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %456, i32 0, i32 7
  %458 = load i8*, i8** %457, align 8
  %459 = call i32 @freez(i8* %458)
  %460 = load i8*, i8** %23, align 8
  %461 = call i32 @netdata_fix_chart_id(i8* %460)
  %462 = load i8*, i8** %23, align 8
  %463 = call i8* @strdupz(i8* %462)
  %464 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 7
  store i8* %463, i8** %465, align 8
  br label %719

466:                                              ; preds = %451
  %467 = load i8*, i8** %22, align 8
  %468 = call i64 @strcmp(i8* %467, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %479, label %470

470:                                              ; preds = %466
  %471 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %472 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %471, i32 0, i32 6
  %473 = load i8*, i8** %472, align 8
  %474 = call i32 @freez(i8* %473)
  %475 = load i8*, i8** %23, align 8
  %476 = call i8* @strdupz(i8* %475)
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 6
  store i8* %476, i8** %478, align 8
  br label %718

479:                                              ; preds = %466
  %480 = load i8*, i8** %22, align 8
  %481 = call i64 @strcmp(i8* %480, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %492, label %483

483:                                              ; preds = %479
  %484 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 5
  %486 = load i8*, i8** %485, align 8
  %487 = call i32 @freez(i8* %486)
  %488 = load i8*, i8** %23, align 8
  %489 = call i8* @strdupz(i8* %488)
  %490 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i32 0, i32 5
  store i8* %489, i8** %491, align 8
  br label %717

492:                                              ; preds = %479
  %493 = load i8*, i8** %22, align 8
  %494 = call i64 @strcmp(i8* %493, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %507, label %496

496:                                              ; preds = %492
  %497 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %498 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %497, i32 0, i32 4
  %499 = load i8*, i8** %498, align 8
  %500 = call i32 @freez(i8* %499)
  %501 = load i8*, i8** %23, align 8
  %502 = call i32 @netdata_fix_chart_id(i8* %501)
  %503 = load i8*, i8** %23, align 8
  %504 = call i8* @strdupz(i8* %503)
  %505 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i32 0, i32 4
  store i8* %504, i8** %506, align 8
  br label %716

507:                                              ; preds = %492
  %508 = load i8*, i8** %22, align 8
  %509 = call i64 @strcmp(i8* %508, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %520, label %511

511:                                              ; preds = %507
  %512 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %513 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %512, i32 0, i32 3
  %514 = load i8*, i8** %513, align 8
  %515 = call i32 @freez(i8* %514)
  %516 = load i8*, i8** %23, align 8
  %517 = call i8* @strdupz(i8* %516)
  %518 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i32 0, i32 3
  store i8* %517, i8** %519, align 8
  br label %715

520:                                              ; preds = %507
  %521 = load i8*, i8** %22, align 8
  %522 = call i64 @strcmp(i8* %521, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %529, label %524

524:                                              ; preds = %520
  %525 = load i8*, i8** %23, align 8
  %526 = call i8* @atol(i8* %525)
  %527 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 2
  store i8* %526, i8** %528, align 8
  br label %714

529:                                              ; preds = %520
  %530 = load i8*, i8** %22, align 8
  %531 = call i64 @strcmp(i8* %530, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %538, label %533

533:                                              ; preds = %529
  %534 = load i8*, i8** %23, align 8
  %535 = call i32 @rrdset_type_id(i8* %534)
  %536 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %537 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %536, i32 0, i32 1
  store i32 %535, i32* %537, align 8
  br label %713

538:                                              ; preds = %529
  %539 = load i8*, i8** %22, align 8
  %540 = call i64 @strcmp(i8* %539, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0))
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %704, label %542

542:                                              ; preds = %538
  %543 = load i8*, i8** %23, align 8
  %544 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 0
  %545 = call i32 @pluginsd_split_words(i8* %543, i8** %544, i32 10)
  store i32 0, i32* %25, align 4
  store i64 0, i64* %26, align 8
  %546 = load i64, i64* %26, align 8
  %547 = add i64 %546, 1
  store i64 %547, i64* %26, align 8
  %548 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 %546
  %549 = load i8*, i8** %548, align 8
  store i8* %549, i8** %27, align 8
  %550 = load i8*, i8** %27, align 8
  %551 = call i64 @strcmp(i8* %550, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0))
  %552 = icmp eq i64 %551, 0
  br i1 %552, label %553, label %558

553:                                              ; preds = %542
  %554 = load i64, i64* %26, align 8
  %555 = add i64 %554, 1
  store i64 %555, i64* %26, align 8
  %556 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 %554
  %557 = load i8*, i8** %556, align 8
  store i8* %557, i8** %27, align 8
  store i32 1, i32* %25, align 4
  br label %558

558:                                              ; preds = %553, %542
  %559 = load i64, i64* %26, align 8
  %560 = add i64 %559, 1
  store i64 %560, i64* %26, align 8
  %561 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 %559
  %562 = load i8*, i8** %561, align 8
  store i8* %562, i8** %28, align 8
  %563 = load i64, i64* %26, align 8
  %564 = add i64 %563, 1
  store i64 %564, i64* %26, align 8
  %565 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 %563
  %566 = load i8*, i8** %565, align 8
  store i8* %566, i8** %29, align 8
  %567 = load i64, i64* %26, align 8
  %568 = add i64 %567, 1
  store i64 %568, i64* %26, align 8
  %569 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 %567
  %570 = load i8*, i8** %569, align 8
  store i8* %570, i8** %30, align 8
  %571 = load i64, i64* %26, align 8
  %572 = add i64 %571, 1
  store i64 %572, i64* %26, align 8
  %573 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 %571
  %574 = load i8*, i8** %573, align 8
  store i8* %574, i8** %31, align 8
  %575 = load i64, i64* %26, align 8
  %576 = add i64 %575, 1
  store i64 %576, i64* %26, align 8
  %577 = getelementptr inbounds [10 x i8*], [10 x i8*]* %24, i64 0, i64 %575
  %578 = load i8*, i8** %577, align 8
  store i8* %578, i8** %32, align 8
  %579 = load i32, i32* @RRDDIM_FLAG_NONE, align 4
  store i32 %579, i32* %33, align 4
  %580 = load i8*, i8** %32, align 8
  %581 = icmp ne i8* %580, null
  br i1 %581, label %582, label %612

582:                                              ; preds = %558
  %583 = load i8*, i8** %32, align 8
  %584 = load i8, i8* %583, align 1
  %585 = sext i8 %584 to i32
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %612

587:                                              ; preds = %582
  %588 = load i8*, i8** %32, align 8
  %589 = call i32* @strstr(i8* %588, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0))
  %590 = icmp ne i32* %589, null
  br i1 %590, label %591, label %595

591:                                              ; preds = %587
  %592 = load i32, i32* @RRDDIM_FLAG_HIDDEN, align 4
  %593 = load i32, i32* %33, align 4
  %594 = or i32 %593, %592
  store i32 %594, i32* %33, align 4
  br label %595

595:                                              ; preds = %591, %587
  %596 = load i8*, i8** %32, align 8
  %597 = call i32* @strstr(i8* %596, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0))
  %598 = icmp ne i32* %597, null
  br i1 %598, label %599, label %603

599:                                              ; preds = %595
  %600 = load i32, i32* @RRDDIM_FLAG_DONT_DETECT_RESETS_OR_OVERFLOWS, align 4
  %601 = load i32, i32* %33, align 4
  %602 = or i32 %601, %600
  store i32 %602, i32* %33, align 4
  br label %603

603:                                              ; preds = %599, %595
  %604 = load i8*, i8** %32, align 8
  %605 = call i32* @strstr(i8* %604, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  %606 = icmp ne i32* %605, null
  br i1 %606, label %607, label %611

607:                                              ; preds = %603
  %608 = load i32, i32* @RRDDIM_FLAG_DONT_DETECT_RESETS_OR_OVERFLOWS, align 4
  %609 = load i32, i32* %33, align 4
  %610 = or i32 %609, %608
  store i32 %610, i32* %33, align 4
  br label %611

611:                                              ; preds = %607, %603
  br label %612

612:                                              ; preds = %611, %582, %558
  %613 = load i32, i32* %25, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %656, label %615

615:                                              ; preds = %612
  %616 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %617 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %616, i32 0, i32 1
  %618 = load i32*, i32** %617, align 8
  %619 = icmp ne i32* %618, null
  br i1 %619, label %620, label %646

620:                                              ; preds = %615
  %621 = load i8*, i8** %28, align 8
  %622 = icmp ne i8* %621, null
  br i1 %622, label %623, label %639

623:                                              ; preds = %620
  %624 = load i8*, i8** %28, align 8
  %625 = load i8, i8* %624, align 1
  %626 = sext i8 %625 to i32
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %639

628:                                              ; preds = %623
  %629 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %630 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %629, i32 0, i32 1
  %631 = load i32*, i32** %630, align 8
  %632 = load i8*, i8** %28, align 8
  %633 = call i8* @dictionary_get(i32* %631, i8* %632)
  store i8* %633, i8** %34, align 8
  %634 = load i8*, i8** %34, align 8
  %635 = icmp ne i8* %634, null
  br i1 %635, label %636, label %638

636:                                              ; preds = %628
  %637 = load i8*, i8** %34, align 8
  store i8* %637, i8** %28, align 8
  br label %638

638:                                              ; preds = %636, %628
  br label %645

639:                                              ; preds = %623, %620
  %640 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %641 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %640, i32 0, i32 1
  %642 = load i32*, i32** %641, align 8
  %643 = load i8*, i8** %27, align 8
  %644 = call i8* @dictionary_get(i32* %642, i8* %643)
  store i8* %644, i8** %28, align 8
  br label %645

645:                                              ; preds = %639, %638
  br label %646

646:                                              ; preds = %645, %615
  %647 = load i8*, i8** %28, align 8
  %648 = icmp ne i8* %647, null
  br i1 %648, label %649, label %653

649:                                              ; preds = %646
  %650 = load i8*, i8** %28, align 8
  %651 = load i8, i8* %650, align 1
  %652 = icmp ne i8 %651, 0
  br i1 %652, label %655, label %653

653:                                              ; preds = %649, %646
  %654 = load i8*, i8** %27, align 8
  store i8* %654, i8** %28, align 8
  br label %655

655:                                              ; preds = %653, %649
  br label %656

656:                                              ; preds = %655, %612
  %657 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %658 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %659 = load i8*, i8** %27, align 8
  %660 = load i8*, i8** %28, align 8
  %661 = load i8*, i8** %30, align 8
  %662 = icmp ne i8* %661, null
  br i1 %662, label %663, label %671

663:                                              ; preds = %656
  %664 = load i8*, i8** %30, align 8
  %665 = load i8, i8* %664, align 1
  %666 = sext i8 %665 to i32
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %671

668:                                              ; preds = %663
  %669 = load i8*, i8** %30, align 8
  %670 = call i32 @str2l(i8* %669)
  br label %672

671:                                              ; preds = %663, %656
  br label %672

672:                                              ; preds = %671, %668
  %673 = phi i32 [ %670, %668 ], [ 1, %671 ]
  %674 = load i8*, i8** %31, align 8
  %675 = icmp ne i8* %674, null
  br i1 %675, label %676, label %684

676:                                              ; preds = %672
  %677 = load i8*, i8** %31, align 8
  %678 = load i8, i8* %677, align 1
  %679 = sext i8 %678 to i32
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %684

681:                                              ; preds = %676
  %682 = load i8*, i8** %31, align 8
  %683 = call i32 @str2l(i8* %682)
  br label %685

684:                                              ; preds = %676, %672
  br label %685

685:                                              ; preds = %684, %681
  %686 = phi i32 [ %683, %681 ], [ 1, %684 ]
  %687 = load i32, i32* %33, align 4
  %688 = load i8*, i8** %29, align 8
  %689 = load i64, i64* %12, align 8
  %690 = load i8*, i8** %6, align 8
  %691 = call i32 @string2valuetype(i8* %688, i64 %689, i8* %690)
  %692 = call %struct.TYPE_11__* @add_dimension_to_app_chart(%struct.TYPE_13__* %657, %struct.TYPE_12__* %658, i8* %659, i8* %660, i32 %673, i32 %686, i32 %687, i32 %691)
  store %struct.TYPE_11__* %692, %struct.TYPE_11__** %35, align 8
  %693 = load i32, i32* %25, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %703

695:                                              ; preds = %685
  %696 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %697 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %696, i32 0, i32 0
  %698 = load i8*, i8** %697, align 8
  %699 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %700 = call i8* @simple_pattern_create(i8* %698, i32* null, i32 %699)
  %701 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %702 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %701, i32 0, i32 1
  store i8* %700, i8** %702, align 8
  br label %703

703:                                              ; preds = %695, %685
  br label %712

704:                                              ; preds = %538
  %705 = load i64, i64* %12, align 8
  %706 = load i8*, i8** %22, align 8
  %707 = load i8*, i8** %6, align 8
  %708 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %709 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %708, i32 0, i32 0
  %710 = load i8*, i8** %709, align 8
  %711 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.39, i64 0, i64 0), i64 %705, i8* %706, i8* %707, i8* %710)
  br label %52

712:                                              ; preds = %703
  br label %713

713:                                              ; preds = %712, %533
  br label %714

714:                                              ; preds = %713, %524
  br label %715

715:                                              ; preds = %714, %511
  br label %716

716:                                              ; preds = %715, %496
  br label %717

717:                                              ; preds = %716, %483
  br label %718

718:                                              ; preds = %717, %470
  br label %719

719:                                              ; preds = %718, %455
  br label %720

720:                                              ; preds = %719, %450
  br label %721

721:                                              ; preds = %720, %328
  br label %52

722:                                              ; preds = %52
  %723 = load i8*, i8** %10, align 8
  %724 = call i32 @freez(i8* %723)
  %725 = load i32*, i32** %11, align 8
  %726 = call i32 @fclose(i32* %725)
  store i32 0, i32* %5, align 4
  br label %727

727:                                              ; preds = %722, %46
  %728 = load i32, i32* %5, align 4
  ret i32 %728
}

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i8* @mallocz(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @trim(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i8* @strdupz_path_subpath(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @callocz(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i64, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @dictionary_create(i32) #1

declare dso_local i32 @netdata_fix_chart_id(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @unlikely(i32*) #1

declare dso_local i32 @dictionary_set(i32*, i8*, i8*, i64) #1

declare dso_local i32 @netdata_fix_chart_name(i8*) #1

declare dso_local i32 @simple_pattern_free(i8*) #1

declare dso_local i8* @simple_pattern_create(i8*, i32*, i32) #1

declare dso_local i32 @rrd_memory_mode_id(i8*) #1

declare dso_local i8* @atol(i8*) #1

declare dso_local i32 @rrdset_type_id(i8*) #1

declare dso_local i32 @pluginsd_split_words(i8*, i8**, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i8* @dictionary_get(i32*, i8*) #1

declare dso_local %struct.TYPE_11__* @add_dimension_to_app_chart(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @str2l(i8*) #1

declare dso_local i32 @string2valuetype(i8*, i64, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
