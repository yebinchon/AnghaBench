; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"apps.plugin %s\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"test-permissions\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Tried to read /proc/1/io and it failed\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"apps.plugin has been compiled without debugging\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"fds-cache-secs\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"Parameter 'fds-cache-secs' requires a number as argument.\0A\00", align 1
@max_fds_cache_seconds = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"no-childs\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"without-childs\00", align 1
@include_exited_childs = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"with-childs\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"with-guest\00", align 1
@enable_guest_charts = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"no-guest\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"without-guest\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"with-files\00", align 1
@enable_file_charts = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"no-files\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"without-files\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"no-users\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"without-users\00", align 1
@enable_users_charts = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [10 x i8] c"no-groups\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"without-groups\00", align 1
@enable_groups_charts = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.29 = private unnamed_addr constant [1243 x i8] c"\0A netdata apps.plugin %s\0A Copyright (C) 2016-2017 Costa Tsaousis <costa@tsaousis.gr>\0A Released under GNU General Public License v3 or later.\0A All rights reserved.\0A\0A This program is a data collector plugin for netdata.\0A\0A Available command line options:\0A\0A SECONDS           set the data collection frequency\0A\0A debug             enable debugging (lot of output)\0A\0A with-childs\0A without-childs    enable / disable aggregating exited\0A                   children resources into parents\0A                   (default is enabled)\0A\0A with-guest\0A without-guest     enable / disable reporting guest charts\0A                   (default is disabled)\0A\0A with-files\0A without-files     enable / disable reporting files, sockets, pipes\0A                   (default is enabled)\0A\0A without-users     disable reporting per user charts\0A\0A without-groups    disable reporting per user group charts\0A\0A fds-cache-secs N  cache the files of processed for N seconds\0A                   caching is adaptive per file (when a file\0A                   is found, it starts at 0 and while the file\0A                   remains open, it is incremented up to the\0A                   max given)\0A                   (default is %d seconds)\0A\0A version or -v or -V print program version and exit\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Cannot understand option %s\00", align 1
@update_every = common dso_local global i32 0, align 4
@user_config_dir = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.32 = private unnamed_addr constant [100 x i8] c"Cannot read process groups configuration file '%s/apps_groups.conf'. Will try '%s/apps_groups.conf'\00", align 1
@stock_config_dir = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [91 x i8] c"Cannot read process groups '%s/apps_groups.conf'. There are no internal defaults. Failing.\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Loaded config file '%s/apps_groups.conf'\00", align 1
@debug_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %280, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %283

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = load i8**, i8*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @str2l(i8* %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %6, align 4
  br label %280

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %12
  %29 = load i8**, i8*** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %28
  %37 = load i8**, i8*** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %68, label %44

44:                                               ; preds = %36
  %45 = load i8**, i8*** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %44
  %53 = load i8**, i8*** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load i8**, i8*** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60, %52, %44, %36, %28
  %69 = load i8*, i8** @VERSION, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  %71 = call i32 @exit(i32 0) #3
  unreachable

72:                                               ; preds = %60
  %73 = load i8**, i8*** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load i8**, i8*** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %80, %72
  %89 = call i32 (...) @check_proc_1_io()
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = call i32 @perror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %93 = call i32 @exit(i32 1) #3
  unreachable

94:                                               ; preds = %88
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %96 = call i32 @exit(i32 0) #3
  unreachable

97:                                               ; preds = %80
  %98 = load i8**, i8*** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %280

108:                                              ; preds = %97
  %109 = load i8**, i8*** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %138

116:                                              ; preds = %108
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  %120 = icmp sle i32 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0))
  %124 = call i32 @exit(i32 1) #3
  unreachable

125:                                              ; preds = %116
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  %128 = load i8**, i8*** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @str2i(i8* %132)
  store i64 %133, i64* @max_fds_cache_seconds, align 8
  %134 = load i64, i64* @max_fds_cache_seconds, align 8
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  store i64 0, i64* @max_fds_cache_seconds, align 8
  br label %137

137:                                              ; preds = %136, %125
  br label %280

138:                                              ; preds = %108
  %139 = load i8**, i8*** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %138
  %147 = load i8**, i8*** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146, %138
  store i32 0, i32* @include_exited_childs, align 4
  br label %280

155:                                              ; preds = %146
  %156 = load i8**, i8*** %4, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %160)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  store i32 1, i32* @include_exited_childs, align 4
  br label %280

164:                                              ; preds = %155
  %165 = load i8**, i8*** %4, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %169)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store i32 1, i32* @enable_guest_charts, align 4
  br label %280

173:                                              ; preds = %164
  %174 = load i8**, i8*** %4, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %173
  %182 = load i8**, i8*** %4, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %186)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181, %173
  store i32 0, i32* @enable_guest_charts, align 4
  br label %280

190:                                              ; preds = %181
  %191 = load i8**, i8*** %4, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* %195)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  store i32 1, i32* @enable_file_charts, align 4
  br label %280

199:                                              ; preds = %190
  %200 = load i8**, i8*** %4, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* %204)
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %199
  %208 = load i8**, i8*** %4, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = call i64 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %212)
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %207, %199
  store i32 0, i32* @enable_file_charts, align 4
  br label %280

216:                                              ; preds = %207
  %217 = load i8**, i8*** %4, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* %221)
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %216
  %225 = load i8**, i8*** %4, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %225, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = call i64 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* %229)
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %224, %216
  store i64 0, i64* @enable_users_charts, align 8
  br label %280

233:                                              ; preds = %224
  %234 = load i8**, i8*** %4, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* %238)
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %249, label %241

241:                                              ; preds = %233
  %242 = load i8**, i8*** %4, align 8
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %242, i64 %244
  %246 = load i8*, i8** %245, align 8
  %247 = call i64 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* %246)
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %241, %233
  store i64 0, i64* @enable_groups_charts, align 8
  br label %280

250:                                              ; preds = %241
  %251 = load i8**, i8*** %4, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %255)
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %266, label %258

258:                                              ; preds = %250
  %259 = load i8**, i8*** %4, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  %263 = load i8*, i8** %262, align 8
  %264 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* %263)
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %258, %250
  %267 = load i32, i32* @stderr, align 4
  %268 = load i8*, i8** @VERSION, align 8
  %269 = load i64, i64* @max_fds_cache_seconds, align 8
  %270 = call i32 (i32, i8*, ...) @fprintf(i32 %267, i8* getelementptr inbounds ([1243 x i8], [1243 x i8]* @.str.29, i64 0, i64 0), i8* %268, i64 %269)
  %271 = call i32 @exit(i32 1) #3
  unreachable

272:                                              ; preds = %258
  %273 = load i8**, i8*** %4, align 8
  %274 = load i32, i32* %5, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* %277)
  %279 = call i32 @exit(i32 1) #3
  unreachable

280:                                              ; preds = %249, %232, %215, %198, %189, %172, %163, %154, %137, %105, %25
  %281 = load i32, i32* %5, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %5, align 4
  br label %8

283:                                              ; preds = %8
  %284 = load i32, i32* %6, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = load i32, i32* %6, align 4
  store i32 %287, i32* @update_every, align 4
  br label %288

288:                                              ; preds = %286, %283
  %289 = load i8*, i8** @user_config_dir, align 8
  %290 = call i64 @read_apps_groups_conf(i8* %289, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %307

292:                                              ; preds = %288
  %293 = load i8*, i8** @user_config_dir, align 8
  %294 = load i8*, i8** @stock_config_dir, align 8
  %295 = call i32 (i8*, i8*, ...) @info(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.32, i64 0, i64 0), i8* %293, i8* %294)
  %296 = load i8*, i8** @stock_config_dir, align 8
  %297 = call i64 @read_apps_groups_conf(i8* %296, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %292
  %300 = load i8*, i8** @stock_config_dir, align 8
  %301 = call i32 @error(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.33, i64 0, i64 0), i8* %300)
  %302 = call i32 @exit(i32 1) #3
  unreachable

303:                                              ; preds = %292
  %304 = load i8*, i8** @stock_config_dir, align 8
  %305 = call i32 (i8*, i8*, ...) @info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i8* %304)
  br label %306

306:                                              ; preds = %303
  br label %310

307:                                              ; preds = %288
  %308 = load i8*, i8** @user_config_dir, align 8
  %309 = call i32 (i8*, i8*, ...) @info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i8* %308)
  br label %310

310:                                              ; preds = %307, %306
  ret void
}

declare dso_local i64 @str2l(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @check_proc_1_io(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @str2i(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @read_apps_groups_conf(i8*, i8*) #1

declare dso_local i32 @info(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
