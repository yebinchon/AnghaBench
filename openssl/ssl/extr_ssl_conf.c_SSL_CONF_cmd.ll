; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_conf.c_SSL_CONF_cmd.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_conf.c_SSL_CONF_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 (%struct.TYPE_11__*, i8*)* }

@SSL_F_SSL_CONF_CMD = common dso_local global i32 0, align 4
@SSL_R_INVALID_NULL_CMD_NAME = common dso_local global i32 0, align 4
@SSL_CONF_TYPE_NONE = common dso_local global i64 0, align 8
@SSL_CONF_FLAG_SHOW_ERRORS = common dso_local global i32 0, align 4
@SSL_R_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cmd=\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c", value=\00", align 1
@SSL_R_UNKNOWN_CMD_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_CONF_cmd(%struct.TYPE_11__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @SSL_F_SSL_CONF_CMD, align 4
  %14 = load i32, i32* @SSL_R_INVALID_NULL_CMD_NAME, align 4
  %15 = call i32 @SSLerr(i32 %13, i32 %14)
  store i32 0, i32* %4, align 4
  br label %84

16:                                               ; preds = %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = call i32 @ssl_conf_cmd_skip_prefix(%struct.TYPE_11__* %17, i8** %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 -2, i32* %4, align 4
  br label %84

21:                                               ; preds = %16
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.TYPE_10__* @ssl_conf_cmd_lookup(%struct.TYPE_11__* %22, i8* %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %8, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %70

27:                                               ; preds = %21
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SSL_CONF_TYPE_NONE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = call i32 @ctrl_switch_option(%struct.TYPE_11__* %34, %struct.TYPE_10__* %35)
  store i32 %36, i32* %4, align 4
  br label %84

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -3, i32* %4, align 4
  br label %84

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_11__*, i8*)*, i32 (%struct.TYPE_11__*, i8*)** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 %44(%struct.TYPE_11__* %45, i8* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 2, i32* %4, align 4
  br label %84

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, -2
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 -2, i32* %4, align 4
  br label %84

55:                                               ; preds = %51
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SSL_CONF_FLAG_SHOW_ERRORS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i32, i32* @SSL_F_SSL_CONF_CMD, align 4
  %64 = load i32, i32* @SSL_R_BAD_VALUE, align 4
  %65 = call i32 @SSLerr(i32 %63, i32 %64)
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 (i32, i8*, i8*, ...) @ERR_add_error_data(i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %62, %55
  store i32 0, i32* %4, align 4
  br label %84

70:                                               ; preds = %21
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SSL_CONF_FLAG_SHOW_ERRORS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @SSL_F_SSL_CONF_CMD, align 4
  %79 = load i32, i32* @SSL_R_UNKNOWN_CMD_NAME, align 4
  %80 = call i32 @SSLerr(i32 %78, i32 %79)
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 (i32, i8*, i8*, ...) @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %77, %70
  store i32 -2, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %69, %54, %50, %40, %33, %20, %12
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @ssl_conf_cmd_skip_prefix(%struct.TYPE_11__*, i8**) #1

declare dso_local %struct.TYPE_10__* @ssl_conf_cmd_lookup(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @ctrl_switch_option(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
