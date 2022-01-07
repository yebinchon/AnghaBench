; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_mail.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_mail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_14__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32*, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@ngx_mail_smtp_module = common dso_local global i32 0, align 4
@NGX_MAIL_AUTH_NONE_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"client was rejected: \22%V\22\00", align 1
@smtp_auth_required = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@smtp_bad_sequence = common dso_local global i32 0, align 4
@smtp_invalid_argument = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"smtp mail from:\22%V\22\00", align 1
@smtp_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)* @ngx_mail_smtp_mail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_mail_smtp_mail(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = load i32, i32* @ngx_mail_smtp_module, align 4
  %11 = call %struct.TYPE_18__* @ngx_mail_get_module_srv_conf(%struct.TYPE_19__* %9, i32 %10)
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %8, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NGX_MAIL_AUTH_NONE_ENABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %21 = call i32 @ngx_mail_smtp_log_rejected_command(%struct.TYPE_19__* %19, %struct.TYPE_20__* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* @smtp_auth_required, align 4
  %25 = call i32 @ngx_str_set(i32* %23, i32 %24)
  %26 = load i32, i32* @NGX_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %125

27:                                               ; preds = %2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* @smtp_bad_sequence, align 4
  %37 = call i32 @ngx_str_set(i32* %35, i32 %36)
  %38 = load i32, i32* @NGX_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %125

39:                                               ; preds = %27
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* @smtp_invalid_argument, align 4
  %49 = call i32 @ngx_str_set(i32* %47, i32 %48)
  %50 = load i32, i32* @NGX_OK, align 4
  store i32 %50, i32* %3, align 4
  br label %125

51:                                               ; preds = %39
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %6, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i64 %62
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %6, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %70, %74
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  store i64 %80, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i64 %83, i64* %86, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32* @ngx_pnalloc(i32 %89, i64 %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  store i32* %92, i32** %95, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %51
  %102 = load i32, i32* @NGX_ERROR, align 4
  store i32 %102, i32* %3, align 4
  br label %125

103:                                              ; preds = %51
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @ngx_memcpy(i32* %107, i64 %109, i64 %111)
  %113 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = call i32 @ngx_log_debug1(i32 %113, i32 %116, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %118)
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i32, i32* @smtp_ok, align 4
  %123 = call i32 @ngx_str_set(i32* %121, i32 %122)
  %124 = load i32, i32* @NGX_OK, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %103, %101, %45, %33, %18
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_18__* @ngx_mail_get_module_srv_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_mail_smtp_log_rejected_command(%struct.TYPE_19__*, %struct.TYPE_20__*, i8*) #1

declare dso_local i32 @ngx_str_set(i32*, i32) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i64, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
