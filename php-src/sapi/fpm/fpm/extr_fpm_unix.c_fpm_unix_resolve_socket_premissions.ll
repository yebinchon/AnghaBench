; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_unix.c_fpm_unix_resolve_socket_premissions.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_unix.c_fpm_unix_resolve_socket_premissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i32, i32, i32, %struct.fpm_worker_pool_config_s*, i32* }
%struct.fpm_worker_pool_config_s = type { i8*, i8*, i8*, i8*, i32, i64* }
%struct.passwd = type { i32, i32 }
%struct.group = type { i32 }

@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[pool %s] cannot get uid for user '%s'\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"[pool %s] cannot get gid for group '%s'\00", align 1
@ACL_GROUP = common dso_local global i32 0, align 4
@ACL_READ = common dso_local global i32 0, align 4
@ACL_USER = common dso_local global i32 0, align 4
@ACL_WRITE = common dso_local global i32 0, align 4
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@ZLOG_WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_unix_resolve_socket_premissions(%struct.fpm_worker_pool_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  %4 = alloca %struct.fpm_worker_pool_config_s*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca %struct.group*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %3, align 8
  %7 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %8 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %7, i32 0, i32 3
  %9 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %8, align 8
  store %struct.fpm_worker_pool_config_s* %9, %struct.fpm_worker_pool_config_s** %4, align 8
  %10 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %11 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 8
  %12 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %13 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %12, i32 0, i32 1
  store i32 -1, i32* %13, align 4
  %14 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %15 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %14, i32 0, i32 2
  store i32 432, i32* %15, align 8
  %16 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %17 = icmp ne %struct.fpm_worker_pool_config_s* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %115

19:                                               ; preds = %1
  %20 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %21 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %20, i32 0, i32 5
  %22 = load i64*, i64** %21, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %26 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %25, i32 0, i32 5
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %32 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %31, i32 0, i32 5
  %33 = load i64*, i64** %32, align 8
  %34 = call i32 @strtoul(i64* %33, i32 0, i32 8)
  %35 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %36 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %30, %24, %19
  %38 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %39 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %78

42:                                               ; preds = %37
  %43 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %44 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %42
  %50 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %51 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call %struct.passwd* @getpwnam(i8* %52)
  store %struct.passwd* %53, %struct.passwd** %5, align 8
  %54 = load %struct.passwd*, %struct.passwd** %5, align 8
  %55 = icmp ne %struct.passwd* %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @ZLOG_SYSERROR, align 4
  %58 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %59 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %58, i32 0, i32 3
  %60 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %59, align 8
  %61 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %64 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32, i8*, i32, ...) @zlog(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %62, i8* %65)
  store i32 -1, i32* %2, align 4
  br label %115

67:                                               ; preds = %49
  %68 = load %struct.passwd*, %struct.passwd** %5, align 8
  %69 = getelementptr inbounds %struct.passwd, %struct.passwd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %72 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.passwd*, %struct.passwd** %5, align 8
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %77 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %67, %42, %37
  %79 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %80 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %114

83:                                               ; preds = %78
  %84 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %85 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %83
  %91 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %92 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = call %struct.group* @getgrnam(i8* %93)
  store %struct.group* %94, %struct.group** %6, align 8
  %95 = load %struct.group*, %struct.group** %6, align 8
  %96 = icmp ne %struct.group* %95, null
  br i1 %96, label %108, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @ZLOG_SYSERROR, align 4
  %99 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %100 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %99, i32 0, i32 3
  %101 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %100, align 8
  %102 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %4, align 8
  %105 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (i32, i8*, i32, ...) @zlog(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %103, i8* %106)
  store i32 -1, i32* %2, align 4
  br label %115

108:                                              ; preds = %90
  %109 = load %struct.group*, %struct.group** %6, align 8
  %110 = getelementptr inbounds %struct.group, %struct.group* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %113 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %83, %78
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %97, %56, %18
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @strtoul(i64*, i32, i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @zlog(i32, i8*, i32, ...) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
