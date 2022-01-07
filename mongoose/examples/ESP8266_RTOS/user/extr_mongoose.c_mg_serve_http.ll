; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_serve_http.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_serve_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.http_message = type { %struct.mg_str, i32 }
%struct.mg_str = type { i32 }
%struct.mg_serve_http_opts = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".htpasswd\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"**.cgi$|**.php$\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"**.shtml$|**.shtm$\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"index.html,index.htm,index.shtml,index.cgi,index.php\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_serve_http(%struct.mg_connection* %0, %struct.http_message* %1, %struct.mg_serve_http_opts* byval(%struct.mg_serve_http_opts) align 8 %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca %struct.http_message*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mg_str*, align 8
  %8 = alloca %struct.mg_str, align 4
  %9 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store %struct.http_message* %1, %struct.http_message** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %11 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohl(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @mg_check_ip_acl(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %23 = call i32 @mg_http_send_error(%struct.mg_connection* %22, i32 403, i32* null)
  %24 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %25 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %26 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %102

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %40, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %52, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %58, align 8
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 5
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %2, i32 0, i32 5
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8** %64, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = load %struct.http_message*, %struct.http_message** %5, align 8
  %67 = getelementptr inbounds %struct.http_message, %struct.http_message* %66, i32 0, i32 1
  %68 = load %struct.http_message*, %struct.http_message** %5, align 8
  %69 = getelementptr inbounds %struct.http_message, %struct.http_message* %68, i32 0, i32 1
  %70 = call i32 @mg_normalize_uri_path(i32* %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %74 = call i32 @mg_http_send_error(%struct.mg_connection* %73, i32 400, i32* null)
  br label %102

75:                                               ; preds = %65
  %76 = load %struct.http_message*, %struct.http_message** %5, align 8
  %77 = call i64 @mg_uri_to_local_path(%struct.http_message* %76, %struct.mg_serve_http_opts* %2, i8** %6, %struct.mg_str* %8)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %81 = call i32 @mg_http_send_error(%struct.mg_connection* %80, i32 404, i32* null)
  br label %102

82:                                               ; preds = %75
  %83 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.http_message*, %struct.http_message** %5, align 8
  %86 = call i32 @mg_send_http_file(%struct.mg_connection* %83, i8* %84, %struct.mg_str* %8, %struct.http_message* %85, %struct.mg_serve_http_opts* %2)
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @MG_FREE(i8* %87)
  store i8* null, i8** %6, align 8
  %89 = load %struct.http_message*, %struct.http_message** %5, align 8
  %90 = getelementptr inbounds %struct.http_message, %struct.http_message* %89, i32 0, i32 0
  %91 = call i64 @mg_vcmp(%struct.mg_str* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %82
  %94 = load %struct.http_message*, %struct.http_message** %5, align 8
  %95 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store %struct.mg_str* %95, %struct.mg_str** %7, align 8
  %96 = icmp ne %struct.mg_str* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %99 = call i64 @mg_vcmp(%struct.mg_str* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %82
  br label %102

102:                                              ; preds = %21, %72, %79, %101, %97, %93
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @mg_check_ip_acl(i32, i32) #1

declare dso_local i32 @mg_http_send_error(%struct.mg_connection*, i32, i32*) #1

declare dso_local i32 @mg_normalize_uri_path(i32*, i32*) #1

declare dso_local i64 @mg_uri_to_local_path(%struct.http_message*, %struct.mg_serve_http_opts*, i8**, %struct.mg_str*) #1

declare dso_local i32 @mg_send_http_file(%struct.mg_connection*, i8*, %struct.mg_str*, %struct.http_message*, %struct.mg_serve_http_opts*) #1

declare dso_local i32 @MG_FREE(i8*) #1

declare dso_local i64 @mg_vcmp(%struct.mg_str*, i8*) #1

declare dso_local %struct.mg_str* @mg_get_http_header(%struct.http_message*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
