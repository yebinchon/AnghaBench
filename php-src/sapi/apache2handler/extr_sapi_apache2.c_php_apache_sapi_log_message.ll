; ModuleID = '/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_sapi_apache2.c_php_apache_sapi_log_message.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_sapi_apache2.c_php_apache_sapi_log_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@APLOG_ERR = common dso_local global i32 0, align 4
@server_context = common dso_local global i32 0, align 4
@APLOG_EMERG = common dso_local global i32 0, align 4
@APLOG_ALERT = common dso_local global i32 0, align 4
@APLOG_CRIT = common dso_local global i32 0, align 4
@APLOG_WARNING = common dso_local global i32 0, align 4
@APLOG_NOTICE = common dso_local global i32 0, align 4
@APLOG_INFO = common dso_local global i32 0, align 4
@APLOG_DEBUG = common dso_local global i32 0, align 4
@APLOG_MARK = common dso_local global i32 0, align 4
@APLOG_STARTUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @php_apache_sapi_log_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_apache_sapi_log_message(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @APLOG_ERR, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @server_context, align 4
  %9 = call %struct.TYPE_3__* @SG(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %27 [
    i32 132, label %11
    i32 135, label %13
    i32 134, label %15
    i32 131, label %17
    i32 128, label %19
    i32 129, label %21
    i32 130, label %23
    i32 133, label %25
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @APLOG_EMERG, align 4
  store i32 %12, i32* %6, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load i32, i32* @APLOG_ALERT, align 4
  store i32 %14, i32* %6, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load i32, i32* @APLOG_CRIT, align 4
  store i32 %16, i32* %6, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load i32, i32* @APLOG_ERR, align 4
  store i32 %18, i32* %6, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load i32, i32* @APLOG_WARNING, align 4
  store i32 %20, i32* %6, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @APLOG_NOTICE, align 4
  store i32 %22, i32* %6, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @APLOG_INFO, align 4
  store i32 %24, i32* %6, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @APLOG_DEBUG, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %2, %25, %23, %21, %19, %17, %15, %13, %11
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* @APLOG_MARK, align 4
  %32 = load i32, i32* @APLOG_ERR, align 4
  %33 = load i32, i32* @APLOG_STARTUP, align 4
  %34 = or i32 %32, %33
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @ap_log_error(i32 %31, i32 %34, i32 0, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %45

37:                                               ; preds = %27
  %38 = load i32, i32* @APLOG_MARK, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @ap_log_rerror(i32 %38, i32 %39, i32 0, i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %37, %30
  ret void
}

declare dso_local %struct.TYPE_3__* @SG(i32) #1

declare dso_local i32 @ap_log_error(i32, i32, i32, i32*, i8*, i8*) #1

declare dso_local i32 @ap_log_rerror(i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
