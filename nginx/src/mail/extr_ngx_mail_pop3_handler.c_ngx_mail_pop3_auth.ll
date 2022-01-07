; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_pop3_handler.c_ngx_mail_pop3_auth.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_pop3_handler.c_ngx_mail_pop3_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }

@ngx_mail_pop3_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@pop3_username = common dso_local global i32 0, align 4
@ngx_pop3_auth_login_username = common dso_local global i32 0, align 4
@pop3_password = common dso_local global i32 0, align 4
@ngx_pop3_auth_login_password = common dso_local global i32 0, align 4
@pop3_next = common dso_local global i32 0, align 4
@ngx_pop3_auth_plain = common dso_local global i32 0, align 4
@NGX_MAIL_AUTH_CRAM_MD5_ENABLED = common dso_local global i32 0, align 4
@NGX_MAIL_PARSE_INVALID_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@ngx_pop3_auth_cram_md5 = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_MAIL_AUTH_EXTERNAL_ENABLED = common dso_local global i32 0, align 4
@ngx_pop3_auth_external = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @ngx_mail_pop3_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_mail_pop3_auth(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = load i32, i32* @ngx_mail_pop3_module, align 4
  %10 = call %struct.TYPE_13__* @ngx_mail_get_module_srv_conf(%struct.TYPE_12__* %8, i32 %9)
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @NGX_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %101

25:                                               ; preds = %2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ngx_mail_auth_parse(%struct.TYPE_12__* %26, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %99 [
    i32 130, label %30
    i32 129, label %39
    i32 128, label %50
    i32 132, label %59
    i32 131, label %81
  ]

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* @pop3_username, align 4
  %34 = call i32 @ngx_str_set(i32* %32, i32 %33)
  %35 = load i32, i32* @ngx_pop3_auth_login_username, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @NGX_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %101

39:                                               ; preds = %25
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* @pop3_password, align 4
  %43 = call i32 @ngx_str_set(i32* %41, i32 %42)
  %44 = load i32, i32* @ngx_pop3_auth_login_password, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @ngx_mail_auth_login_username(%struct.TYPE_12__* %47, i32* %48, i32 1)
  store i32 %49, i32* %3, align 4
  br label %101

50:                                               ; preds = %25
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* @pop3_next, align 4
  %54 = call i32 @ngx_str_set(i32* %52, i32 %53)
  %55 = load i32, i32* @ngx_pop3_auth_plain, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @NGX_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %101

59:                                               ; preds = %25
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NGX_MAIL_AUTH_CRAM_MD5_ENABLED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %67, i32* %3, align 4
  br label %101

68:                                               ; preds = %59
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @ngx_mail_auth_cram_md5_salt(%struct.TYPE_12__* %69, i32* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %72 = load i32, i32* @NGX_OK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i32, i32* @ngx_pop3_auth_cram_md5, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @NGX_OK, align 4
  store i32 %78, i32* %3, align 4
  br label %101

79:                                               ; preds = %68
  %80 = load i32, i32* @NGX_ERROR, align 4
  store i32 %80, i32* %3, align 4
  br label %101

81:                                               ; preds = %25
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NGX_MAIL_AUTH_EXTERNAL_ENABLED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %89, i32* %3, align 4
  br label %101

90:                                               ; preds = %81
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* @pop3_username, align 4
  %94 = call i32 @ngx_str_set(i32* %92, i32 %93)
  %95 = load i32, i32* @ngx_pop3_auth_external, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @NGX_OK, align 4
  store i32 %98, i32* %3, align 4
  br label %101

99:                                               ; preds = %25
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %90, %88, %79, %74, %66, %50, %39, %30, %16
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_13__* @ngx_mail_get_module_srv_conf(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_mail_auth_parse(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ngx_str_set(i32*, i32) #1

declare dso_local i32 @ngx_mail_auth_login_username(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ngx_mail_auth_cram_md5_salt(%struct.TYPE_12__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
