; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_request.c_fpm_request_info.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_request.c_fpm_request_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_scoreboard_proc_s = type { i64, i32, i32, i32, i32, i32, %struct.timeval, i32 }
%struct.timeval = type { i32 }

@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to acquire proc scoreboard\00", align 1
@FPM_REQUEST_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_request_info() #0 {
  %1 = alloca %struct.fpm_scoreboard_proc_s*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = call i8* (...) @fpm_php_request_uri()
  store i8* %9, i8** %2, align 8
  %10 = call i8* (...) @fpm_php_request_method()
  store i8* %10, i8** %3, align 8
  %11 = call i8* (...) @fpm_php_script_filename()
  store i8* %11, i8** %4, align 8
  %12 = call i8* (...) @fpm_php_query_string()
  store i8* %12, i8** %5, align 8
  %13 = call i8* (...) @fpm_php_auth_user()
  store i8* %13, i8** %6, align 8
  %14 = call i64 (...) @fpm_php_content_length()
  store i64 %14, i64* %7, align 8
  %15 = call i32 @fpm_clock_get(%struct.timeval* %8)
  %16 = call %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_acquire(i32* null, i32 -1, i32 0)
  store %struct.fpm_scoreboard_proc_s* %16, %struct.fpm_scoreboard_proc_s** %1, align 8
  %17 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %18 = icmp eq %struct.fpm_scoreboard_proc_s* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* @ZLOG_WARNING, align 4
  %21 = call i32 @zlog(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %80

22:                                               ; preds = %0
  %23 = load i32, i32* @FPM_REQUEST_INFO, align 4
  %24 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %25 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %27 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %26, i32 0, i32 6
  %28 = bitcast %struct.timeval* %27 to i8*
  %29 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load i8*, i8** %2, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %34 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @strlcpy(i32 %35, i8* %36, i32 4)
  br label %38

38:                                               ; preds = %32, %22
  %39 = load i8*, i8** %3, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %43 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strlcpy(i32 %44, i8* %45, i32 4)
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %52 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strlcpy(i32 %53, i8* %54, i32 4)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %61 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strlcpy(i32 %62, i8* %63, i32 4)
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %68 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %73 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @strlcpy(i32 %74, i8* %75, i32 4)
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %79 = call i32 @fpm_scoreboard_proc_release(%struct.fpm_scoreboard_proc_s* %78)
  br label %80

80:                                               ; preds = %77, %19
  ret void
}

declare dso_local i8* @fpm_php_request_uri(...) #1

declare dso_local i8* @fpm_php_request_method(...) #1

declare dso_local i8* @fpm_php_script_filename(...) #1

declare dso_local i8* @fpm_php_query_string(...) #1

declare dso_local i8* @fpm_php_auth_user(...) #1

declare dso_local i64 @fpm_php_content_length(...) #1

declare dso_local i32 @fpm_clock_get(%struct.timeval*) #1

declare dso_local %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_acquire(i32*, i32, i32) #1

declare dso_local i32 @zlog(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @fpm_scoreboard_proc_release(%struct.fpm_scoreboard_proc_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
