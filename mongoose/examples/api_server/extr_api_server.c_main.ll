; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_api_server.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_api_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.mg_mgr = type { i8* }
%struct.mg_connection = type { i32 }

@s_http_port = common dso_local global i8* null, align 8
@ev_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"web_root\00", align 1
@s_http_server_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@s_db_path = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@s_db_handle = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Cannot open DB [%s]\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Starting RESTful server on port %s\0A\00", align 1
@s_sig_num = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"Exiting on signal %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mg_mgr, align 8
  %7 = alloca %struct.mg_connection*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 @mg_mgr_init(%struct.mg_mgr* %6, i32* null)
  %10 = load i8*, i8** @s_http_port, align 8
  %11 = load i32, i32* @ev_handler, align 4
  %12 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %6, i8* %10, i32 %11)
  store %struct.mg_connection* %12, %struct.mg_connection** %7, align 8
  %13 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %14 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %13)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %68, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %28, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %6, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  br label %67

35:                                               ; preds = %19
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** @s_db_path, align 8
  br label %66

50:                                               ; preds = %35
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %59, i64 %62
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  br label %65

65:                                               ; preds = %58, %50
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %27
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %15

71:                                               ; preds = %15
  %72 = load i32, i32* @SIGINT, align 4
  %73 = load i32, i32* @signal_handler, align 4
  %74 = call i32 @signal(i32 %72, i32 %73)
  %75 = load i32, i32* @SIGTERM, align 4
  %76 = load i32, i32* @signal_handler, align 4
  %77 = call i32 @signal(i32 %75, i32 %76)
  %78 = load i8*, i8** @s_db_path, align 8
  %79 = call i32* @db_open(i8* %78)
  store i32* %79, i32** @s_db_handle, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8*, i8** @s_db_path, align 8
  %84 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @EXIT_FAILURE, align 4
  %86 = call i32 @exit(i32 %85) #3
  unreachable

87:                                               ; preds = %71
  %88 = load i8*, i8** @s_http_port, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %89)
  br label %91

91:                                               ; preds = %94, %87
  %92 = load i64, i64* @s_sig_num, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 @mg_mgr_poll(%struct.mg_mgr* %6, i32 1000)
  br label %91

96:                                               ; preds = %91
  %97 = call i32 @mg_mgr_free(%struct.mg_mgr* %6)
  %98 = call i32 @db_close(i32** @s_db_handle)
  %99 = load i64, i64* @s_sig_num, align 8
  %100 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %99)
  ret i32 0
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32* @db_open(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

declare dso_local i32 @db_close(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
