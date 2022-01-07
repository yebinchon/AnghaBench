; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banner1.c_banner1_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banner1.c_banner1_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (...)* }
%struct.TYPE_8__ = type { i32 (...)* }
%struct.TYPE_10__ = type { i32 (...)* }
%struct.TYPE_6__ = type { i32 (...)* }
%struct.TYPE_9__ = type { i32 (...)* }
%struct.Banner1 = type { i32 }
%struct.ProtocolState = type { i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type { i32, i32 }

@banner1_selftest.http_header = internal global i8* getelementptr inbounds ([342 x i8], [342 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [342 x i8] c"HTTP/1.0 302 Redirect\0D\0ADate: Tue, 03 Sep 2013 06:50:01 GMT\0D\0AConnection: close\0D\0AVia: HTTP/1.1 ir14.fp.bf1.yahoo.com (YahooTrafficServer/1.2.0.13 [c s f ])\0D\0AServer: YTS/1.20.13\0D\0ACache-Control: no-store\0D\0AContent-Type: text/html\0D\0AContent-Language: en\0D\0ALocation: http://failsafe.fp.yahoo.com/404.html\0D\0AContent-Length: 227\0D\0A\0D\0A<title>hello</title>\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"banout: failed\0A\00", align 1
@PROTO_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"HTTP/1.0 302\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"banner1: test failed\0A\00", align 1
@banner_ssl = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"SSL banner: selftest failed\0A\00", align 1
@banner_smb1 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"SMB banner: selftest failed\0A\00", align 1
@banner_http = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"HTTP banner: selftest failed\0A\00", align 1
@banner_telnet = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"Telnet banner: selftest failed\0A\00", align 1
@banner_rdp = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"RDP banner: selftest failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @banner1_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.Banner1*, align 8
  %4 = alloca [1 x %struct.ProtocolState], align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.BannerOutput], align 4
  %8 = alloca %struct.InteractiveData, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = load i8*, i8** @banner1_selftest.http_header, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** @banner1_selftest.http_header, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = call i64 (...) @banout_selftest()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %109

20:                                               ; preds = %0
  %21 = call %struct.Banner1* (...) @banner1_create()
  store %struct.Banner1* %21, %struct.Banner1** %3, align 8
  %22 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %7, i64 0, i64 0
  %23 = call i32 @banout_init(%struct.BannerOutput* %22)
  %24 = getelementptr inbounds [1 x %struct.ProtocolState], [1 x %struct.ProtocolState]* %4, i64 0, i64 0
  %25 = call i32 @memset(%struct.ProtocolState* %24, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %40, %20
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = bitcast %struct.InteractiveData* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 8, i1 false)
  %32 = load %struct.Banner1*, %struct.Banner1** %3, align 8
  %33 = getelementptr inbounds [1 x %struct.ProtocolState], [1 x %struct.ProtocolState]* %4, i64 0, i64 0
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %2, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %7, i64 0, i64 0
  %39 = call i32 @banner1_parse(%struct.Banner1* %32, %struct.ProtocolState* %33, i8* %37, i32 1, %struct.BannerOutput* %38, %struct.InteractiveData* %8)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %2, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %26

43:                                               ; preds = %26
  %44 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %7, i64 0, i64 0
  %45 = load i32, i32* @PROTO_HTTP, align 4
  %46 = call i8* @banout_string(%struct.BannerOutput* %44, i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @memcmp(i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 11)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %109

52:                                               ; preds = %43
  %53 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %7, i64 0, i64 0
  %54 = call i32 @banout_release(%struct.BannerOutput* %53)
  %55 = load %struct.Banner1*, %struct.Banner1** %3, align 8
  %56 = call i32 @banner1_destroy(%struct.Banner1* %55)
  %57 = call %struct.Banner1* (...) @banner1_create()
  store %struct.Banner1* %57, %struct.Banner1** %3, align 8
  %58 = getelementptr inbounds [1 x %struct.ProtocolState], [1 x %struct.ProtocolState]* %4, i64 0, i64 0
  %59 = call i32 @memset(%struct.ProtocolState* %58, i32 0, i32 4)
  %60 = load %struct.Banner1*, %struct.Banner1** %3, align 8
  %61 = getelementptr inbounds [1 x %struct.ProtocolState], [1 x %struct.ProtocolState]* %4, i64 0, i64 0
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %7, i64 0, i64 0
  %65 = call i32 @banner1_parse(%struct.Banner1* %60, %struct.ProtocolState* %61, i8* %62, i32 %63, %struct.BannerOutput* %64, %struct.InteractiveData* null)
  %66 = load %struct.Banner1*, %struct.Banner1** %3, align 8
  %67 = call i32 @banner1_destroy(%struct.Banner1* %66)
  store i32 0, i32* %10, align 4
  %68 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @banner_ssl, i32 0, i32 0), align 8
  %69 = call i32 (...) %68()
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %52
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %109

75:                                               ; preds = %52
  %76 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @banner_smb1, i32 0, i32 0), align 8
  %77 = call i32 (...) %76()
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %109

83:                                               ; preds = %75
  %84 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @banner_http, i32 0, i32 0), align 8
  %85 = call i32 (...) %84()
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %109

91:                                               ; preds = %83
  %92 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @banner_telnet, i32 0, i32 0), align 8
  %93 = call i32 (...) %92()
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %109

99:                                               ; preds = %91
  %100 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @banner_rdp, i32 0, i32 0), align 8
  %101 = call i32 (...) %100()
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 @fprintf(i32 %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %1, align 4
  br label %109

109:                                              ; preds = %107, %104, %96, %88, %80, %72, %50, %17
  %110 = load i32, i32* %1, align 4
  ret i32 %110
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @banout_selftest(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.Banner1* @banner1_create(...) #1

declare dso_local i32 @banout_init(%struct.BannerOutput*) #1

declare dso_local i32 @memset(%struct.ProtocolState*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @banner1_parse(%struct.Banner1*, %struct.ProtocolState*, i8*, i32, %struct.BannerOutput*, %struct.InteractiveData*) #1

declare dso_local i8* @banout_string(%struct.BannerOutput*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @banout_release(%struct.BannerOutput*) #1

declare dso_local i32 @banner1_destroy(%struct.Banner1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
