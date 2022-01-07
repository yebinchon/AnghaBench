; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_resolve_name_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_resolve_name_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_11__*, i32, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"\22%V\22 could not be resolved (%i: %s)\00", align 1
@NGX_RESOLVE_NXDOMAIN = common dso_local global i64 0, align 8
@smtp_unavailable = common dso_local global i8* null, align 8
@smtp_tempunavail = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @ngx_mail_smtp_resolve_name_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_mail_smtp_resolve_name_handler(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %4, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %1
  %17 = load i32, i32* @NGX_LOG_ERR, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ngx_resolver_strerror(i64 %28)
  %30 = call i32 @ngx_log_error(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %22, i64 %25, i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NGX_RESOLVE_NXDOMAIN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %16
  %37 = load i8*, i8** @smtp_unavailable, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %44

40:                                               ; preds = %16
  %41 = load i8*, i8** @smtp_tempunavail, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  br label %85

45:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %78, %45
  %47 = load i64, i64* %3, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %46
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ngx_cmp_sockaddr(i32 %59, i32 %66, i32 %69, i32 %72, i32 0)
  %74 = load i64, i64* @NGX_OK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %52
  br label %86

77:                                               ; preds = %52
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %3, align 8
  br label %46

81:                                               ; preds = %46
  %82 = load i8*, i8** @smtp_unavailable, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %44
  br label %86

86:                                               ; preds = %85, %76
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = call i32 @ngx_resolve_name_done(%struct.TYPE_13__* %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = call i32 @ngx_mail_smtp_greeting(%struct.TYPE_14__* %89, %struct.TYPE_15__* %90)
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i64, i32) #1

declare dso_local i32 @ngx_resolver_strerror(i64) #1

declare dso_local i64 @ngx_cmp_sockaddr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_resolve_name_done(%struct.TYPE_13__*) #1

declare dso_local i32 @ngx_mail_smtp_greeting(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
