; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_switch_host.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_switch_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i8*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@web_client_switch_host.hash_localhost = internal global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@localhost = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Nesting of hosts is not allowed.\00", align 1
@HTTP_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"%llu: Searching for host with name '%s'.\00", align 1
@NETDATA_WEB_REQUEST_URL_SIZE = common dso_local global i64 0, align 8
@CT_TEXT_HTML = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"This netdata does not maintain a database for host: \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HTTP_RESP_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.web_client*, i8*)* @web_client_switch_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @web_client_switch_host(i32* %0, %struct.web_client* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.web_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.web_client* %1, %struct.web_client** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64, i64* @web_client_switch_host.hash_localhost, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i64 @simple_hash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %17, i64* @web_client_switch_host.hash_localhost, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** @localhost, align 8
  %21 = icmp ne i32* %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.web_client*, %struct.web_client** %6, align 8
  %24 = getelementptr inbounds %struct.web_client, %struct.web_client* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i32 @buffer_flush(%struct.TYPE_6__* %26)
  %28 = load %struct.web_client*, %struct.web_client** %6, align 8
  %29 = getelementptr inbounds %struct.web_client, %struct.web_client* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @buffer_strcat(%struct.TYPE_6__* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @HTTP_RESP_BAD_REQUEST, align 4
  store i32 %33, i32* %4, align 4
  br label %126

34:                                               ; preds = %18
  %35 = call i8* @mystrsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %96

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %96

43:                                               ; preds = %38
  %44 = load i32, i32* @D_WEB_CLIENT, align 4
  %45 = load %struct.web_client*, %struct.web_client** %6, align 8
  %46 = getelementptr inbounds %struct.web_client, %struct.web_client* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @debug(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %47, i8* %48)
  %50 = load %struct.web_client*, %struct.web_client** %6, align 8
  %51 = getelementptr inbounds %struct.web_client, %struct.web_client* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 47, i8* %53, align 1
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %43
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.web_client*, %struct.web_client** %6, align 8
  %63 = getelementptr inbounds %struct.web_client, %struct.web_client* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* @NETDATA_WEB_REQUEST_URL_SIZE, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call i32 @strncpyz(i8* %65, i8* %66, i64 %68)
  br label %75

70:                                               ; preds = %56, %43
  %71 = load %struct.web_client*, %struct.web_client** %6, align 8
  %72 = getelementptr inbounds %struct.web_client, %struct.web_client* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %70, %61
  %76 = load i8*, i8** %8, align 8
  %77 = call i64 @simple_hash(i8* %76)
  store i64 %77, i64* %9, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32* @rrdhost_find_by_hostname(i8* %78, i64 %79)
  store i32* %80, i32** %5, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32* @rrdhost_find_by_guid(i8* %84, i64 %85)
  store i32* %86, i32** %5, align 8
  br label %87

87:                                               ; preds = %83, %75
  %88 = load i32*, i32** %5, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.web_client*, %struct.web_client** %6, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @web_client_process_url(i32* %91, %struct.web_client* %92, i8* %93)
  store i32 %94, i32* %4, align 4
  br label %126

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %38, %34
  %97 = load %struct.web_client*, %struct.web_client** %6, align 8
  %98 = getelementptr inbounds %struct.web_client, %struct.web_client* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call i32 @buffer_flush(%struct.TYPE_6__* %100)
  %102 = load i32, i32* @CT_TEXT_HTML, align 4
  %103 = load %struct.web_client*, %struct.web_client** %6, align 8
  %104 = getelementptr inbounds %struct.web_client, %struct.web_client* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 4
  %108 = load %struct.web_client*, %struct.web_client** %6, align 8
  %109 = getelementptr inbounds %struct.web_client, %struct.web_client* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = call i32 @buffer_strcat(%struct.TYPE_6__* %111, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %113 = load %struct.web_client*, %struct.web_client** %6, align 8
  %114 = getelementptr inbounds %struct.web_client, %struct.web_client* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %96
  %120 = load i8*, i8** %8, align 8
  br label %122

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %121 ]
  %124 = call i32 @buffer_strcat_htmlescape(%struct.TYPE_6__* %116, i8* %123)
  %125 = load i32, i32* @HTTP_RESP_NOT_FOUND, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %122, %90, %22
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i32 @buffer_flush(%struct.TYPE_6__*) #1

declare dso_local i32 @buffer_strcat(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @mystrsep(i8**, i8*) #1

declare dso_local i32 @debug(i32, i8*, i32, i8*) #1

declare dso_local i32 @strncpyz(i8*, i8*, i64) #1

declare dso_local i32* @rrdhost_find_by_hostname(i8*, i64) #1

declare dso_local i32* @rrdhost_find_by_guid(i8*, i64) #1

declare dso_local i32 @web_client_process_url(i32*, %struct.web_client*, i8*) #1

declare dso_local i32 @buffer_strcat_htmlescape(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
