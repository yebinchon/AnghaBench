; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_setup_from_config.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_setup_from_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.lwan = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i16, i16, i64, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.config_line = type { i32, i32, i32 }
%struct.config = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Loading configuration file: %s\00", align 1
@destroy_urlmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"keep_alive_timeout\00", align 1
@default_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"reuse_port\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"proxy_protocol\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"allow_cors\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"expires\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"error_template\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Invalid number of threads: %ld\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"max_post_data_size\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Negative maximum post data size\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Maximum post data can't be over 128MiB\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"allow_temp_files\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Unknown config key: %s\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"listener\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Only one listener supported\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"straitjacket\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Unknown section type: %s\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Unexpected section end\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Error on config file \22%s\22, line %d: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan*, i8*)* @setup_from_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_from_config(%struct.lwan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_line*, align 8
  %7 = alloca %struct.config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.lwan* %0, %struct.lwan** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = trunc i64 %15 to i32
  %22 = call i8* @lwan_get_config_path(i8* %17, i32 %21)
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @lwan_status_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call %struct.config* @config_open(i8* %26)
  store %struct.config* %27, %struct.config** %7, align 8
  %28 = load %struct.config*, %struct.config** %7, align 8
  %29 = icmp ne %struct.config* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %297

31:                                               ; preds = %23
  %32 = load %struct.lwan*, %struct.lwan** %4, align 8
  %33 = getelementptr inbounds %struct.lwan, %struct.lwan* %32, i32 0, i32 1
  %34 = load i32, i32* @destroy_urlmap, align 4
  %35 = call i32 @lwan_trie_init(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %297

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %282, %38
  %40 = load %struct.config*, %struct.config** %7, align 8
  %41 = call %struct.config_line* @config_read_line(%struct.config* %40)
  store %struct.config_line* %41, %struct.config_line** %6, align 8
  %42 = icmp ne %struct.config_line* %41, null
  br i1 %42, label %43, label %283

43:                                               ; preds = %39
  %44 = load %struct.config_line*, %struct.config_line** %6, align 8
  %45 = getelementptr inbounds %struct.config_line, %struct.config_line* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %282 [
    i32 130, label %47
    i32 129, label %244
    i32 128, label %279
  ]

47:                                               ; preds = %43
  %48 = load %struct.config_line*, %struct.config_line** %6, align 8
  %49 = getelementptr inbounds %struct.config_line, %struct.config_line* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @streq(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.config_line*, %struct.config_line** %6, align 8
  %55 = getelementptr inbounds %struct.config_line, %struct.config_line* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_config, i32 0, i32 0), align 8
  %58 = call i64 @parse_long(i32 %56, i64 %57)
  %59 = trunc i64 %58 to i16
  %60 = load %struct.lwan*, %struct.lwan** %4, align 8
  %61 = getelementptr inbounds %struct.lwan, %struct.lwan* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i16 %59, i16* %62, align 8
  br label %243

63:                                               ; preds = %47
  %64 = load %struct.config_line*, %struct.config_line** %6, align 8
  %65 = getelementptr inbounds %struct.config_line, %struct.config_line* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @streq(i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.config_line*, %struct.config_line** %6, align 8
  %71 = getelementptr inbounds %struct.config_line, %struct.config_line* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_config, i32 0, i32 7), align 8
  %74 = call i8* @parse_bool(i32 %72, i32 %73)
  %75 = load %struct.lwan*, %struct.lwan** %4, align 8
  %76 = getelementptr inbounds %struct.lwan, %struct.lwan* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 9
  store i8* %74, i8** %77, align 8
  br label %242

78:                                               ; preds = %63
  %79 = load %struct.config_line*, %struct.config_line** %6, align 8
  %80 = getelementptr inbounds %struct.config_line, %struct.config_line* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @streq(i32 %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.config_line*, %struct.config_line** %6, align 8
  %86 = getelementptr inbounds %struct.config_line, %struct.config_line* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_config, i32 0, i32 6), align 4
  %89 = call i8* @parse_bool(i32 %87, i32 %88)
  %90 = load %struct.lwan*, %struct.lwan** %4, align 8
  %91 = getelementptr inbounds %struct.lwan, %struct.lwan* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 8
  store i8* %89, i8** %92, align 8
  br label %241

93:                                               ; preds = %78
  %94 = load %struct.config_line*, %struct.config_line** %6, align 8
  %95 = getelementptr inbounds %struct.config_line, %struct.config_line* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @streq(i32 %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.config_line*, %struct.config_line** %6, align 8
  %101 = getelementptr inbounds %struct.config_line, %struct.config_line* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_config, i32 0, i32 5), align 8
  %104 = call i8* @parse_bool(i32 %102, i32 %103)
  %105 = load %struct.lwan*, %struct.lwan** %4, align 8
  %106 = getelementptr inbounds %struct.lwan, %struct.lwan* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 7
  store i8* %104, i8** %107, align 8
  br label %240

108:                                              ; preds = %93
  %109 = load %struct.config_line*, %struct.config_line** %6, align 8
  %110 = getelementptr inbounds %struct.config_line, %struct.config_line* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @streq(i32 %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load %struct.config_line*, %struct.config_line** %6, align 8
  %116 = getelementptr inbounds %struct.config_line, %struct.config_line* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_config, i32 0, i32 4), align 4
  %119 = call i8* @parse_bool(i32 %117, i32 %118)
  %120 = load %struct.lwan*, %struct.lwan** %4, align 8
  %121 = getelementptr inbounds %struct.lwan, %struct.lwan* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 6
  store i8* %119, i8** %122, align 8
  br label %239

123:                                              ; preds = %108
  %124 = load %struct.config_line*, %struct.config_line** %6, align 8
  %125 = getelementptr inbounds %struct.config_line, %struct.config_line* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @streq(i32 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.config_line*, %struct.config_line** %6, align 8
  %131 = getelementptr inbounds %struct.config_line, %struct.config_line* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_config, i32 0, i32 3), align 8
  %134 = call i32 @parse_time_period(i32 %132, i32 %133)
  %135 = load %struct.lwan*, %struct.lwan** %4, align 8
  %136 = getelementptr inbounds %struct.lwan, %struct.lwan* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 5
  store i32 %134, i32* %137, align 8
  br label %238

138:                                              ; preds = %123
  %139 = load %struct.config_line*, %struct.config_line** %6, align 8
  %140 = getelementptr inbounds %struct.config_line, %struct.config_line* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @streq(i32 %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %138
  %145 = load %struct.lwan*, %struct.lwan** %4, align 8
  %146 = getelementptr inbounds %struct.lwan, %struct.lwan* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @free(i32 %148)
  %150 = load %struct.config_line*, %struct.config_line** %6, align 8
  %151 = getelementptr inbounds %struct.config_line, %struct.config_line* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @strdup(i32 %152)
  %154 = load %struct.lwan*, %struct.lwan** %4, align 8
  %155 = getelementptr inbounds %struct.lwan, %struct.lwan* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  store i32 %153, i32* %156, align 4
  br label %237

157:                                              ; preds = %138
  %158 = load %struct.config_line*, %struct.config_line** %6, align 8
  %159 = getelementptr inbounds %struct.config_line, %struct.config_line* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @streq(i32 %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %157
  %164 = load %struct.config_line*, %struct.config_line** %6, align 8
  %165 = getelementptr inbounds %struct.config_line, %struct.config_line* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_config, i32 0, i32 1), align 8
  %168 = call i64 @parse_long(i32 %166, i64 %167)
  store i64 %168, i64* %12, align 8
  %169 = load i64, i64* %12, align 8
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %163
  %172 = load %struct.config*, %struct.config** %7, align 8
  %173 = load i64, i64* %12, align 8
  %174 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %172, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i64 %173)
  br label %175

175:                                              ; preds = %171, %163
  %176 = load i64, i64* %12, align 8
  %177 = trunc i64 %176 to i16
  %178 = load %struct.lwan*, %struct.lwan** %4, align 8
  %179 = getelementptr inbounds %struct.lwan, %struct.lwan* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  store i16 %177, i16* %180, align 2
  br label %236

181:                                              ; preds = %157
  %182 = load %struct.config_line*, %struct.config_line** %6, align 8
  %183 = getelementptr inbounds %struct.config_line, %struct.config_line* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @streq(i32 %184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %210

187:                                              ; preds = %181
  %188 = load %struct.config_line*, %struct.config_line** %6, align 8
  %189 = getelementptr inbounds %struct.config_line, %struct.config_line* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_config, i32 0, i32 2), align 8
  %192 = call i64 @parse_long(i32 %190, i64 %191)
  store i64 %192, i64* %13, align 8
  %193 = load i64, i64* %13, align 8
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %187
  %196 = load %struct.config*, %struct.config** %7, align 8
  %197 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %196, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %205

198:                                              ; preds = %187
  %199 = load i64, i64* %13, align 8
  %200 = icmp sgt i64 %199, 134217728
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load %struct.config*, %struct.config** %7, align 8
  %203 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %202, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %198
  br label %205

205:                                              ; preds = %204, %195
  %206 = load i64, i64* %13, align 8
  %207 = load %struct.lwan*, %struct.lwan** %4, align 8
  %208 = getelementptr inbounds %struct.lwan, %struct.lwan* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  store i64 %206, i64* %209, align 8
  br label %235

210:                                              ; preds = %181
  %211 = load %struct.config_line*, %struct.config_line** %6, align 8
  %212 = getelementptr inbounds %struct.config_line, %struct.config_line* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @streq(i32 %213, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %210
  %217 = load %struct.config_line*, %struct.config_line** %6, align 8
  %218 = getelementptr inbounds %struct.config_line, %struct.config_line* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @strstr(i32 %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  %225 = load %struct.lwan*, %struct.lwan** %4, align 8
  %226 = getelementptr inbounds %struct.lwan, %struct.lwan* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 3
  store i32 %224, i32* %227, align 8
  br label %234

228:                                              ; preds = %210
  %229 = load %struct.config*, %struct.config** %7, align 8
  %230 = load %struct.config_line*, %struct.config_line** %6, align 8
  %231 = getelementptr inbounds %struct.config_line, %struct.config_line* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %229, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %228, %216
  br label %235

235:                                              ; preds = %234, %205
  br label %236

236:                                              ; preds = %235, %175
  br label %237

237:                                              ; preds = %236, %144
  br label %238

238:                                              ; preds = %237, %129
  br label %239

239:                                              ; preds = %238, %114
  br label %240

240:                                              ; preds = %239, %99
  br label %241

241:                                              ; preds = %240, %84
  br label %242

242:                                              ; preds = %241, %69
  br label %243

243:                                              ; preds = %242, %53
  br label %282

244:                                              ; preds = %43
  %245 = load %struct.config_line*, %struct.config_line** %6, align 8
  %246 = getelementptr inbounds %struct.config_line, %struct.config_line* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @streq(i32 %247, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %244
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %250
  %254 = load %struct.config*, %struct.config** %7, align 8
  %255 = load %struct.config_line*, %struct.config_line** %6, align 8
  %256 = load %struct.lwan*, %struct.lwan** %4, align 8
  %257 = call i32 @parse_listener(%struct.config* %254, %struct.config_line* %255, %struct.lwan* %256)
  store i32 1, i32* %8, align 4
  br label %261

258:                                              ; preds = %250
  %259 = load %struct.config*, %struct.config** %7, align 8
  %260 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %259, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  br label %261

261:                                              ; preds = %258, %253
  br label %278

262:                                              ; preds = %244
  %263 = load %struct.config_line*, %struct.config_line** %6, align 8
  %264 = getelementptr inbounds %struct.config_line, %struct.config_line* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @streq(i32 %265, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %262
  %269 = load %struct.config*, %struct.config** %7, align 8
  %270 = call i32 @lwan_straitjacket_enforce_from_config(%struct.config* %269)
  br label %277

271:                                              ; preds = %262
  %272 = load %struct.config*, %struct.config** %7, align 8
  %273 = load %struct.config_line*, %struct.config_line** %6, align 8
  %274 = getelementptr inbounds %struct.config_line, %struct.config_line* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %272, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %271, %268
  br label %278

278:                                              ; preds = %277, %261
  br label %282

279:                                              ; preds = %43
  %280 = load %struct.config*, %struct.config** %7, align 8
  %281 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %280, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %282

282:                                              ; preds = %279, %43, %278, %243
  br label %39

283:                                              ; preds = %39
  %284 = load %struct.config*, %struct.config** %7, align 8
  %285 = call i64 @config_last_error(%struct.config* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %283
  %288 = load i8*, i8** %5, align 8
  %289 = load %struct.config*, %struct.config** %7, align 8
  %290 = call i32 @config_cur_line(%struct.config* %289)
  %291 = load %struct.config*, %struct.config** %7, align 8
  %292 = call i64 @config_last_error(%struct.config* %291)
  %293 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i8* %288, i32 %290, i64 %292)
  br label %294

294:                                              ; preds = %287, %283
  %295 = load %struct.config*, %struct.config** %7, align 8
  %296 = call i32 @config_close(%struct.config* %295)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %297

297:                                              ; preds = %294, %37, %30
  %298 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %298)
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @lwan_get_config_path(i8*, i32) #2

declare dso_local i32 @lwan_status_info(i8*, i8*) #2

declare dso_local %struct.config* @config_open(i8*) #2

declare dso_local i32 @lwan_trie_init(i32*, i32) #2

declare dso_local %struct.config_line* @config_read_line(%struct.config*) #2

declare dso_local i32 @streq(i32, i8*) #2

declare dso_local i64 @parse_long(i32, i64) #2

declare dso_local i8* @parse_bool(i32, i32) #2

declare dso_local i32 @parse_time_period(i32, i32) #2

declare dso_local i32 @free(i32) #2

declare dso_local i32 @strdup(i32) #2

declare dso_local i32 @config_error(%struct.config*, i8*, ...) #2

declare dso_local i32 @strstr(i32, i8*) #2

declare dso_local i32 @parse_listener(%struct.config*, %struct.config_line*, %struct.lwan*) #2

declare dso_local i32 @lwan_straitjacket_enforce_from_config(%struct.config*) #2

declare dso_local i64 @config_last_error(%struct.config*) #2

declare dso_local i32 @lwan_status_critical(i8*, i8*, i32, i64) #2

declare dso_local i32 @config_cur_line(%struct.config*) #2

declare dso_local i32 @config_close(%struct.config*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
