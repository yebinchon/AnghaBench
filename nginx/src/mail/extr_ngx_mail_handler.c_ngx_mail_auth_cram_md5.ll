; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_handler.c_ngx_mail_auth_cram_md5.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_handler.c_ngx_mail_auth_cram_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"mail auth cram-md5: \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"client sent invalid base64 encoding in AUTH CRAM-MD5 command\00", align 1
@NGX_MAIL_PARSE_INVALID_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"client sent invalid CRAM-MD5 hash in AUTH CRAM-MD5 command\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"mail auth cram-md5: \22%V\22 \22%V\22\00", align 1
@NGX_MAIL_AUTH_CRAM_MD5 = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_mail_auth_cram_md5(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %8, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i64 0
  %19 = call i32 @ngx_log_debug1(i32 %13, i32 %16, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ngx_base64_decoded_length(i32 %26)
  %28 = call i32* @ngx_pnalloc(i32 %22, i32 %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  store i32* %28, i32** %31, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @NGX_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %132

39:                                               ; preds = %2
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 0
  %44 = call i64 @ngx_decode_base64(%struct.TYPE_16__* %41, %struct.TYPE_13__* %43)
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32, i32* @NGX_LOG_INFO, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ngx_log_error(i32 %48, i32 %51, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %53, i32* %3, align 4
  br label %132

54:                                               ; preds = %39
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32* %65, i32** %7, align 8
  br label %66

66:                                               ; preds = %104, %54
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ult i32* %67, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %66
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %6, align 8
  %73 = load i32, i32* %71, align 4
  %74 = icmp eq i32 %73, 32
  br i1 %74, label %75, label %104

75:                                               ; preds = %70
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = ptrtoint i32* %76 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = sub nsw i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  store i32* %100, i32** %103, align 8
  br label %105

104:                                              ; preds = %70
  br label %66

105:                                              ; preds = %75, %66
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 32
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load i32, i32* @NGX_LOG_INFO, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ngx_log_error(i32 %112, i32 %115, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %117, i32* %3, align 4
  br label %132

118:                                              ; preds = %105
  %119 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = call i32 @ngx_log_debug2(i32 %119, i32 %122, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_16__* %124, %struct.TYPE_17__* %126)
  %128 = load i32, i32* @NGX_MAIL_AUTH_CRAM_MD5, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @NGX_DONE, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %118, %111, %47, %37
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_13__*) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_base64_decoded_length(i32) #1

declare dso_local i64 @ngx_decode_base64(%struct.TYPE_16__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
