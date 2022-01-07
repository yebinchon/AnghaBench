; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_init_main.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_init_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64*, i64* }
%struct.TYPE_4__ = type { i8* }

@fpm_globals = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"the global prefix '%s' does not exist or is not a directory\00", align 1
@fpm_global_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%s/php-fpm.conf\00", align 1
@PHP_SYSCONFDIR = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"%s/etc/php-fpm.conf\00", align 1
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"spprintf() failed (tmp for fpm_globals.config)\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"spprintf() failed (fpm_globals.config)\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to load configuration file '%s'\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"failed to post process the configuration\00", align 1
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"configuration file %s test is successful\0A\00", align 1
@FPM_CLEANUP_ALL = common dso_local global i32 0, align 4
@fpm_conf_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_conf_init_main(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 3), align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 3), align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 3), align 8
  %16 = call i32 @fpm_conf_is_dir(i64* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ZLOG_ERROR, align 4
  %20 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 3), align 8
  %21 = call i32 (i32, i8*, ...) @zlog(i32 %19, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64* %20)
  store i32 -1, i32* %3, align 4
  br label %99

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %10, %2
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 0), align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 0), align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 0), align 8
  %33 = call i8* @strdup(i8* %32)
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  br label %34

34:                                               ; preds = %31, %26, %23
  %35 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 2), align 8
  %36 = icmp eq i64* %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 3), align 8
  %39 = icmp eq i64* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64*, i64** @PHP_SYSCONFDIR, align 8
  %42 = call i32 @spprintf(i8** %7, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %41)
  br label %46

43:                                               ; preds = %37
  %44 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 3), align 8
  %45 = call i32 @spprintf(i8** %7, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @ZLOG_SYSERROR, align 4
  %51 = call i32 (i32, i8*, ...) @zlog(i32 %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %99

52:                                               ; preds = %46
  %53 = load i8*, i8** %7, align 8
  %54 = call i8* @strdup(i8* %53)
  %55 = bitcast i8* %54 to i64*
  store i64* %55, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 2), align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @efree(i8* %56)
  %58 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 2), align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @ZLOG_SYSERROR, align 4
  %62 = call i32 (i32, i8*, ...) @zlog(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %99

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %34
  %65 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 2), align 8
  %66 = call i32 @fpm_conf_load_ini_file(i64* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 0, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @ZLOG_ERROR, align 4
  %71 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 2), align 8
  %72 = call i32 (i32, i8*, ...) @zlog(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64* %71)
  store i32 -1, i32* %3, align 4
  br label %99

73:                                               ; preds = %64
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @fpm_conf_post_process(i32 %74)
  %76 = icmp sgt i64 0, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @ZLOG_ERROR, align 4
  %79 = call i32 (i32, i8*, ...) @zlog(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %99

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (...) @fpm_conf_dump()
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32, i32* @ZLOG_NOTICE, align 4
  %90 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 2), align 8
  %91 = call i32 (i32, i8*, ...) @zlog(i32 %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64* %90)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 1), align 8
  store i32 -1, i32* %3, align 4
  br label %99

92:                                               ; preds = %80
  %93 = load i32, i32* @FPM_CLEANUP_ALL, align 4
  %94 = load i32, i32* @fpm_conf_cleanup, align 4
  %95 = call i64 @fpm_cleanup_add(i32 %93, i32 %94, i32 0)
  %96 = icmp sgt i64 0, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 -1, i32* %3, align 4
  br label %99

98:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %97, %88, %77, %69, %60, %49, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @fpm_conf_is_dir(i64*) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i64*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @fpm_conf_load_ini_file(i64*) #1

declare dso_local i64 @fpm_conf_post_process(i32) #1

declare dso_local i32 @fpm_conf_dump(...) #1

declare dso_local i64 @fpm_cleanup_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
