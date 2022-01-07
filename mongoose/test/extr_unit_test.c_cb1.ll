; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb1.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.mg_connection = type { i32 }
%struct.http_message = type { %struct.TYPE_9__, %struct.TYPE_15__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.mg_ssi_call_ctx = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }

@MG_EV_HTTP_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"/foo\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"HTTP/1.0 200 OK\0D\0A\0D\0A[%.*s %d]\00", align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@s_http_server_opts = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"passwords.txt\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"foo.com\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"./data/dav\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"hidden_file.*$\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c".txt=text/plain; charset=windows-1251,.c=text/plain; charset=utf-8\00", align 1
@MG_EV_SSI_CALL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"[ssi call: %s]\00", align 1
@MG_EV_SSI_CALL_CTX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"[ssi call w/ ctx: %.*s %.*s %.*s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @cb1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb1(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca %struct.mg_ssi_call_ctx*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MG_EV_HTTP_REQUEST, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.http_message*
  store %struct.http_message* %14, %struct.http_message** %7, align 8
  %15 = load %struct.http_message*, %struct.http_message** %7, align 8
  %16 = getelementptr inbounds %struct.http_message, %struct.http_message* %15, i32 0, i32 1
  %17 = call i64 @mg_vcmp(%struct.TYPE_15__* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %12
  %20 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %21 = load %struct.http_message*, %struct.http_message** %7, align 8
  %22 = getelementptr inbounds %struct.http_message, %struct.http_message* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.http_message*, %struct.http_message** %7, align 8
  %27 = getelementptr inbounds %struct.http_message, %struct.http_message* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.http_message*, %struct.http_message** %7, align 8
  %31 = getelementptr inbounds %struct.http_message, %struct.http_message* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @mg_printf(%struct.mg_connection* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %29, i32 %34)
  %36 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %37 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %38 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %45

41:                                               ; preds = %12
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_http_server_opts, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_http_server_opts, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_http_server_opts, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_http_server_opts, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_http_server_opts, i32 0, i32 4), align 8
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_http_server_opts, i32 0, i32 5), align 8
  %42 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %43 = load %struct.http_message*, %struct.http_message** %7, align 8
  %44 = call i32 @mg_serve_http(%struct.mg_connection* %42, %struct.http_message* %43, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 @s_http_server_opts)
  br label %45

45:                                               ; preds = %41, %19
  br label %96

46:                                               ; preds = %3
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MG_EV_SSI_CALL, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf_html_escape(%struct.mg_connection* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %52)
  br label %95

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MG_EV_SSI_CALL_CTX, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = bitcast i8* %59 to %struct.mg_ssi_call_ctx*
  store %struct.mg_ssi_call_ctx* %60, %struct.mg_ssi_call_ctx** %8, align 8
  %61 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %62 = load %struct.mg_ssi_call_ctx*, %struct.mg_ssi_call_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.mg_ssi_call_ctx, %struct.mg_ssi_call_ctx* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.mg_ssi_call_ctx*, %struct.mg_ssi_call_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.mg_ssi_call_ctx, %struct.mg_ssi_call_ctx* %69, i32 0, i32 2
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mg_ssi_call_ctx*, %struct.mg_ssi_call_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.mg_ssi_call_ctx, %struct.mg_ssi_call_ctx* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.mg_ssi_call_ctx*, %struct.mg_ssi_call_ctx** %8, align 8
  %81 = getelementptr inbounds %struct.mg_ssi_call_ctx, %struct.mg_ssi_call_ctx* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mg_ssi_call_ctx*, %struct.mg_ssi_call_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.mg_ssi_call_ctx, %struct.mg_ssi_call_ctx* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.mg_ssi_call_ctx*, %struct.mg_ssi_call_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.mg_ssi_call_ctx, %struct.mg_ssi_call_ctx* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf_html_escape(%struct.mg_connection* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %68, i32 %74, i32 %79, i32 %83, i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %58, %54
  br label %95

95:                                               ; preds = %94, %50
  br label %96

96:                                               ; preds = %95, %45
  ret void
}

declare dso_local i64 @mg_vcmp(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i32, i32, i32) #1

declare dso_local i32 @mg_serve_http(%struct.mg_connection*, %struct.http_message*, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @mg_printf_html_escape(%struct.mg_connection*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
