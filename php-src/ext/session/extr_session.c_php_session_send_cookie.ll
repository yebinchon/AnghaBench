; ModuleID = '/home/carl/AnghaBench/php-src/ext/session/extr_session.c_php_session_send_cookie.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/session/extr_session.c_php_session_send_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.timeval = type { i32 }

@headers_sent = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Cannot send session cookie - headers already sent by (output started at %s:%d)\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Cannot send session cookie - headers already sent\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@session_name = common dso_local global i32 0, align 4
@id = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Set-Cookie: \00", align 1
@cookie_lifetime = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"D, d-M-Y H:i:s T\00", align 1
@COOKIE_EXPIRES = common dso_local global i8* null, align 8
@COOKIE_MAX_AGE = common dso_local global i8* null, align 8
@cookie_path = common dso_local global i32 0, align 4
@COOKIE_PATH = common dso_local global i8* null, align 8
@cookie_domain = common dso_local global i32 0, align 4
@COOKIE_DOMAIN = common dso_local global i8* null, align 8
@cookie_secure = common dso_local global i32 0, align 4
@COOKIE_SECURE = common dso_local global i8* null, align 8
@cookie_httponly = common dso_local global i32 0, align 4
@COOKIE_HTTPONLY = common dso_local global i8* null, align 8
@cookie_samesite = common dso_local global i32 0, align 4
@COOKIE_SAMESITE = common dso_local global i8* null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @php_session_send_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_session_send_cookie() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i64, align 8
  %10 = bitcast %struct.TYPE_8__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  store i8* null, i8** %3, align 8
  %11 = load i32, i32* @headers_sent, align 4
  %12 = call i64 @SG(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %0
  %15 = call i8* (...) @php_output_get_start_filename()
  store i8* %15, i8** %6, align 8
  %16 = call i32 (...) @php_output_get_start_lineno()
  store i32 %16, i32* %7, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @E_WARNING, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %20, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22)
  br label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @E_WARNING, align 4
  %26 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* @FAILURE, align 4
  store i32 %28, i32* %1, align 4
  br label %157

29:                                               ; preds = %0
  %30 = load i32, i32* @session_name, align 4
  %31 = call i8* @PS(i32 %30)
  %32 = load i32, i32* @session_name, align 4
  %33 = call i8* @PS(i32 %32)
  %34 = call i32 @strlen(i8* %33)
  %35 = call i8* @php_url_encode(i8* %31, i32 %34)
  store i8* %35, i8** %4, align 8
  %36 = load i32, i32* @id, align 4
  %37 = call i8* @PS(i32 %36)
  %38 = call i8* @ZSTR_VAL(i8* %37)
  %39 = load i32, i32* @id, align 4
  %40 = call i8* @PS(i32 %39)
  %41 = call i32 @ZSTR_LEN(i8* %40)
  %42 = call i8* @php_url_encode(i8* %38, i32 %41)
  store i8* %42, i8** %5, align 8
  %43 = call i32 @smart_str_appendl(%struct.TYPE_8__* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12)
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @ZSTR_VAL(i8* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @ZSTR_LEN(i8* %46)
  %48 = call i32 @smart_str_appendl(%struct.TYPE_8__* %2, i8* %45, i32 %47)
  %49 = call i32 @smart_str_appendc(%struct.TYPE_8__* %2, i8 signext 61)
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @ZSTR_VAL(i8* %50)
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @ZSTR_LEN(i8* %52)
  %54 = call i32 @smart_str_appendl(%struct.TYPE_8__* %2, i8* %51, i32 %53)
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @zend_string_release_ex(i8* %55, i32 0)
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @zend_string_release_ex(i8* %57, i32 0)
  %59 = load i32, i32* @cookie_lifetime, align 4
  %60 = call i8* @PS(i32 %59)
  %61 = icmp ugt i8* %60, null
  br i1 %61, label %62, label %91

62:                                               ; preds = %29
  %63 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @cookie_lifetime, align 4
  %67 = call i8* @PS(i32 %66)
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = ptrtoint i8* %69 to i64
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %62
  %74 = load i64, i64* %9, align 8
  %75 = call i8* @php_format_date(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 16, i64 %74, i32 0)
  store i8* %75, i8** %3, align 8
  %76 = load i8*, i8** @COOKIE_EXPIRES, align 8
  %77 = call i32 @smart_str_appends(%struct.TYPE_8__* %2, i8* %76)
  %78 = load i8*, i8** %3, align 8
  %79 = call i8* @ZSTR_VAL(i8* %78)
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @ZSTR_LEN(i8* %80)
  %82 = call i32 @smart_str_appendl(%struct.TYPE_8__* %2, i8* %79, i32 %81)
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @zend_string_release_ex(i8* %83, i32 0)
  %85 = load i8*, i8** @COOKIE_MAX_AGE, align 8
  %86 = call i32 @smart_str_appends(%struct.TYPE_8__* %2, i8* %85)
  %87 = load i32, i32* @cookie_lifetime, align 4
  %88 = call i8* @PS(i32 %87)
  %89 = call i32 @smart_str_append_long(%struct.TYPE_8__* %2, i8* %88)
  br label %90

90:                                               ; preds = %73, %62
  br label %91

91:                                               ; preds = %90, %29
  %92 = load i32, i32* @cookie_path, align 4
  %93 = call i8* @PS(i32 %92)
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i8*, i8** @COOKIE_PATH, align 8
  %99 = call i32 @smart_str_appends(%struct.TYPE_8__* %2, i8* %98)
  %100 = load i32, i32* @cookie_path, align 4
  %101 = call i8* @PS(i32 %100)
  %102 = call i32 @smart_str_appends(%struct.TYPE_8__* %2, i8* %101)
  br label %103

103:                                              ; preds = %97, %91
  %104 = load i32, i32* @cookie_domain, align 4
  %105 = call i8* @PS(i32 %104)
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i8*, i8** @COOKIE_DOMAIN, align 8
  %111 = call i32 @smart_str_appends(%struct.TYPE_8__* %2, i8* %110)
  %112 = load i32, i32* @cookie_domain, align 4
  %113 = call i8* @PS(i32 %112)
  %114 = call i32 @smart_str_appends(%struct.TYPE_8__* %2, i8* %113)
  br label %115

115:                                              ; preds = %109, %103
  %116 = load i32, i32* @cookie_secure, align 4
  %117 = call i8* @PS(i32 %116)
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i8*, i8** @COOKIE_SECURE, align 8
  %121 = call i32 @smart_str_appends(%struct.TYPE_8__* %2, i8* %120)
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i32, i32* @cookie_httponly, align 4
  %124 = call i8* @PS(i32 %123)
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i8*, i8** @COOKIE_HTTPONLY, align 8
  %128 = call i32 @smart_str_appends(%struct.TYPE_8__* %2, i8* %127)
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i32, i32* @cookie_samesite, align 4
  %131 = call i8* @PS(i32 %130)
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load i8*, i8** @COOKIE_SAMESITE, align 8
  %137 = call i32 @smart_str_appends(%struct.TYPE_8__* %2, i8* %136)
  %138 = load i32, i32* @cookie_samesite, align 4
  %139 = call i8* @PS(i32 %138)
  %140 = call i32 @smart_str_appends(%struct.TYPE_8__* %2, i8* %139)
  br label %141

141:                                              ; preds = %135, %129
  %142 = call i32 @smart_str_0(%struct.TYPE_8__* %2)
  %143 = call i32 (...) @php_session_remove_cookie()
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @ZSTR_VAL(i8* %145)
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @ZSTR_LEN(i8* %148)
  %150 = call i32 @estrndup(i8* %146, i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @ZSTR_LEN(i8* %152)
  %154 = call i32 @sapi_add_header_ex(i32 %150, i32 %153, i32 0, i32 0)
  %155 = call i32 @smart_str_free(%struct.TYPE_8__* %2)
  %156 = load i32, i32* @SUCCESS, align 4
  store i32 %156, i32* %1, align 4
  br label %157

157:                                              ; preds = %141, %27
  %158 = load i32, i32* %1, align 4
  ret i32 %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @SG(i32) #2

declare dso_local i8* @php_output_get_start_filename(...) #2

declare dso_local i32 @php_output_get_start_lineno(...) #2

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #2

declare dso_local i8* @php_url_encode(i8*, i32) #2

declare dso_local i8* @PS(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @ZSTR_VAL(i8*) #2

declare dso_local i32 @ZSTR_LEN(i8*) #2

declare dso_local i32 @smart_str_appendl(%struct.TYPE_8__*, i8*, i32) #2

declare dso_local i32 @smart_str_appendc(%struct.TYPE_8__*, i8 signext) #2

declare dso_local i32 @zend_string_release_ex(i8*, i32) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i8* @php_format_date(i8*, i32, i64, i32) #2

declare dso_local i32 @smart_str_appends(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @smart_str_append_long(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @smart_str_0(%struct.TYPE_8__*) #2

declare dso_local i32 @php_session_remove_cookie(...) #2

declare dso_local i32 @sapi_add_header_ex(i32, i32, i32, i32) #2

declare dso_local i32 @estrndup(i8*, i32) #2

declare dso_local i32 @smart_str_free(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
