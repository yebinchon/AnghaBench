; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_unix.c_fpm_unix_conf_wp.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_unix.c_fpm_unix_conf_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fpm_worker_pool_s = type { i64, i64, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64*, i64*, i64* }
%struct.passwd = type { i64, i64, i32, i32 }
%struct.group = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"[pool %s] cannot get uid for user '%s'\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"[pool %s] cannot get gid for group '%s'\00", align 1
@fpm_globals = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"[pool %s] please specify user and group other than root\00", align 1
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [70 x i8] c"[pool %s] 'user' directive is ignored when FPM is not running as root\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"[pool %s] 'group' directive is ignored when FPM is not running as root\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"[pool %s] 'chroot' directive is ignored when FPM is not running as root\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"[pool %s] 'process.priority' directive is ignored when FPM is not running as root\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpm_worker_pool_s*)* @fpm_unix_conf_wp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_unix_conf_wp(%struct.fpm_worker_pool_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.group*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %3, align 8
  %8 = call i32 (...) @geteuid()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %190

14:                                               ; preds = %1
  %15 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %16 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i64*, i64** %18, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %99

21:                                               ; preds = %14
  %22 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %23 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %99

29:                                               ; preds = %21
  %30 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %31 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i64*, i64** %33, align 8
  %35 = call i64 @strlen(i64* %34)
  %36 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %37 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i64*, i64** %39, align 8
  %41 = call i64 @strspn(i64* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %35, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %29
  %44 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %45 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %44, i32 0, i32 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i64*, i64** %47, align 8
  %49 = call i8* @strtoul(i64* %48, i32 0, i32 10)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %52 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %98

53:                                               ; preds = %29
  %54 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %55 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load i64*, i64** %57, align 8
  %59 = call %struct.passwd* @getpwnam(i64* %58)
  store %struct.passwd* %59, %struct.passwd** %6, align 8
  %60 = load %struct.passwd*, %struct.passwd** %6, align 8
  %61 = icmp ne %struct.passwd* %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @ZLOG_ERROR, align 4
  %64 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %65 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %64, i32 0, i32 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %70 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %69, i32 0, i32 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load i64*, i64** %72, align 8
  %74 = call i32 (i32, i8*, i32, ...) @zlog(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %68, i64* %73)
  store i32 -1, i32* %2, align 4
  br label %294

75:                                               ; preds = %53
  %76 = load %struct.passwd*, %struct.passwd** %6, align 8
  %77 = getelementptr inbounds %struct.passwd, %struct.passwd* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %80 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.passwd*, %struct.passwd** %6, align 8
  %82 = getelementptr inbounds %struct.passwd, %struct.passwd* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %85 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.passwd*, %struct.passwd** %6, align 8
  %87 = getelementptr inbounds %struct.passwd, %struct.passwd* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @strdup(i32 %88)
  %90 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %91 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.passwd*, %struct.passwd** %6, align 8
  %93 = getelementptr inbounds %struct.passwd, %struct.passwd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @strdup(i32 %94)
  %96 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %97 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %75, %43
  br label %99

99:                                               ; preds = %98, %21, %14
  %100 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %101 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %100, i32 0, i32 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i64*, i64** %103, align 8
  %105 = icmp ne i64* %104, null
  br i1 %105, label %106, label %167

106:                                              ; preds = %99
  %107 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %108 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %107, i32 0, i32 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %167

114:                                              ; preds = %106
  %115 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %116 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %115, i32 0, i32 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = call i64 @strlen(i64* %119)
  %121 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %122 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %121, i32 0, i32 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i64*, i64** %124, align 8
  %126 = call i64 @strspn(i64* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %127 = icmp eq i64 %120, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %114
  %129 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %130 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %129, i32 0, i32 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 3
  %133 = load i64*, i64** %132, align 8
  %134 = call i8* @strtoul(i64* %133, i32 0, i32 10)
  %135 = ptrtoint i8* %134 to i64
  %136 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %137 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  br label %166

138:                                              ; preds = %114
  %139 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %140 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %139, i32 0, i32 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  %143 = load i64*, i64** %142, align 8
  %144 = call %struct.group* @getgrnam(i64* %143)
  store %struct.group* %144, %struct.group** %7, align 8
  %145 = load %struct.group*, %struct.group** %7, align 8
  %146 = icmp ne %struct.group* %145, null
  br i1 %146, label %160, label %147

147:                                              ; preds = %138
  %148 = load i32, i32* @ZLOG_ERROR, align 4
  %149 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %150 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %149, i32 0, i32 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %155 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %154, i32 0, i32 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 3
  %158 = load i64*, i64** %157, align 8
  %159 = call i32 (i32, i8*, i32, ...) @zlog(i32 %148, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %153, i64* %158)
  store i32 -1, i32* %2, align 4
  br label %294

160:                                              ; preds = %138
  %161 = load %struct.group*, %struct.group** %7, align 8
  %162 = getelementptr inbounds %struct.group, %struct.group* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %165 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %160, %128
  br label %167

167:                                              ; preds = %166, %106, %99
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_globals, i32 0, i32 0), align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %189, label %170

170:                                              ; preds = %167
  %171 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %172 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %177 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %175, %170
  %181 = load i32, i32* @ZLOG_ERROR, align 4
  %182 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %183 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %182, i32 0, i32 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, i8*, i32, ...) @zlog(i32 %181, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %186)
  store i32 -1, i32* %2, align 4
  br label %294

188:                                              ; preds = %175
  br label %189

189:                                              ; preds = %188, %167
  br label %293

190:                                              ; preds = %1
  %191 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %192 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %191, i32 0, i32 4
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 4
  %195 = load i64*, i64** %194, align 8
  %196 = icmp ne i64* %195, null
  br i1 %196, label %197, label %213

197:                                              ; preds = %190
  %198 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %199 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %198, i32 0, i32 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 4
  %202 = load i64*, i64** %201, align 8
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %197
  %206 = load i32, i32* @ZLOG_NOTICE, align 4
  %207 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %208 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %207, i32 0, i32 4
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i32, i8*, i32, ...) @zlog(i32 %206, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %205, %197, %190
  %214 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %215 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %214, i32 0, i32 4
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 3
  %218 = load i64*, i64** %217, align 8
  %219 = icmp ne i64* %218, null
  br i1 %219, label %220, label %236

220:                                              ; preds = %213
  %221 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %222 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %221, i32 0, i32 4
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 3
  %225 = load i64*, i64** %224, align 8
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %220
  %229 = load i32, i32* @ZLOG_NOTICE, align 4
  %230 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %231 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %230, i32 0, i32 4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i32, i8*, i32, ...) @zlog(i32 %229, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %228, %220, %213
  %237 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %238 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %237, i32 0, i32 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 2
  %241 = load i64*, i64** %240, align 8
  %242 = icmp ne i64* %241, null
  br i1 %242, label %243, label %259

243:                                              ; preds = %236
  %244 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %245 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %244, i32 0, i32 4
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 2
  %248 = load i64*, i64** %247, align 8
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %243
  %252 = load i32, i32* @ZLOG_NOTICE, align 4
  %253 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %254 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %253, i32 0, i32 4
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i32, i8*, i32, ...) @zlog(i32 %252, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %251, %243, %236
  %260 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %261 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %260, i32 0, i32 4
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 64
  br i1 %265, label %266, label %274

266:                                              ; preds = %259
  %267 = load i32, i32* @ZLOG_NOTICE, align 4
  %268 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %269 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %268, i32 0, i32 4
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (i32, i8*, i32, ...) @zlog(i32 %267, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0), i32 %272)
  br label %274

274:                                              ; preds = %266, %259
  %275 = call i32 (...) @getuid()
  %276 = call %struct.passwd* @getpwuid(i32 %275)
  store %struct.passwd* %276, %struct.passwd** %4, align 8
  %277 = load %struct.passwd*, %struct.passwd** %4, align 8
  %278 = icmp ne %struct.passwd* %277, null
  br i1 %278, label %279, label %292

279:                                              ; preds = %274
  %280 = load %struct.passwd*, %struct.passwd** %4, align 8
  %281 = getelementptr inbounds %struct.passwd, %struct.passwd* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = call i8* @strdup(i32 %282)
  %284 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %285 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %284, i32 0, i32 3
  store i8* %283, i8** %285, align 8
  %286 = load %struct.passwd*, %struct.passwd** %4, align 8
  %287 = getelementptr inbounds %struct.passwd, %struct.passwd* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = call i8* @strdup(i32 %288)
  %290 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %291 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %290, i32 0, i32 2
  store i8* %289, i8** %291, align 8
  br label %292

292:                                              ; preds = %279, %274
  br label %293

293:                                              ; preds = %292, %189
  store i32 0, i32* %2, align 4
  br label %294

294:                                              ; preds = %293, %180, %147, %62
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i32 @geteuid(...) #1

declare dso_local i64 @strlen(i64*) #1

declare dso_local i64 @strspn(i64*, i8*) #1

declare dso_local i8* @strtoul(i64*, i32, i32) #1

declare dso_local %struct.passwd* @getpwnam(i64*) #1

declare dso_local i32 @zlog(i32, i8*, i32, ...) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local %struct.group* @getgrnam(i64*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
