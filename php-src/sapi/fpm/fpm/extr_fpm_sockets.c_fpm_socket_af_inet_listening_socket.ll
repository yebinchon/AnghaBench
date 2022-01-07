; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_socket_af_inet_listening_socket.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_socket_af_inet_listening_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid port value '%s'\00", align 1
@ZLOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed implicitly binding to ::, retrying with 0.0.0.0\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpm_worker_pool_s*)* @fpm_socket_af_inet_listening_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_socket_af_inet_listening_socket(%struct.fpm_worker_pool_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %3, align 8
  %11 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %12 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @strdup(i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 58)
  store i8* %18, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %52

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  store i8 0, i8* %22, align 1
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @atoi(i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 91
  br i1 %33, label %34, label %51

34:                                               ; preds = %21
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 93
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %43, %34, %21
  br label %63

52:                                               ; preds = %1
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @strspn(i8* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @atoi(i8* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i8*, i8** %4, align 8
  store i8* %61, i8** %5, align 8
  br label %62

62:                                               ; preds = %58, %52
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* @ZLOG_ERROR, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 (i32, i8*, ...) @zlog(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  store i32 -1, i32* %2, align 4
  br label %99

70:                                               ; preds = %63
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @fpm_socket_af_inet_socket_by_addr(%struct.fpm_worker_pool_s* %74, i8* %75, i8* %76)
  store i32 %77, i32* %9, align 4
  br label %95

78:                                               ; preds = %70
  %79 = load i32, i32* @ZLOG_ALERT, align 4
  %80 = call i32 @zlog_set_level(i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @fpm_socket_af_inet_socket_by_addr(%struct.fpm_worker_pool_s* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @zlog_set_level(i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = load i32, i32* @ZLOG_NOTICE, align 4
  %90 = call i32 (i32, i8*, ...) @zlog(i32 %89, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @fpm_socket_af_inet_socket_by_addr(%struct.fpm_worker_pool_s* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %88, %78
  br label %95

95:                                               ; preds = %94, %73
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %66
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i32 @fpm_socket_af_inet_socket_by_addr(%struct.fpm_worker_pool_s*, i8*, i8*) #1

declare dso_local i32 @zlog_set_level(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
