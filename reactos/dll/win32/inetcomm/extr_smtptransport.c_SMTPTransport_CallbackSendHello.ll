; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_smtptransport.c_SMTPTransport_CallbackSendHello.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_smtptransport.c_SMTPTransport_CallbackSendHello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@SMTPTransport_CallbackSendHello.szHostName = internal constant [10 x i8] c"localhost\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SMTP_BANNER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"server error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ESMTP\00", align 1
@ISF_SSLONSAMEPORT = common dso_local global i32 0, align 4
@ISF_QUERYDSNSUPPORT = common dso_local global i32 0, align 4
@ISF_QUERYAUTHSUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"EHLO \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"HELO \00", align 1
@SMTPTransport_CallbackRecvHelloResp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @SMTPTransport_CallbackSendHello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SMTPTransport_CallbackSendHello(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %7, align 8
  %14 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @SMTPTransport_ParseResponse(%struct.TYPE_11__* %16, i8* %17, %struct.TYPE_12__* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %103

23:                                               ; preds = %3
  %24 = load i32, i32* @SMTP_BANNER, align 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @ISMTPCallback_OnResponse(i32* %30, %struct.TYPE_12__* %8)
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @FAILED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @debugstr_a(i8* %38)
  %40 = call i32 @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %103

41:                                               ; preds = %23
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strstr(i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ISF_SSLONSAMEPORT, align 4
  %56 = load i32, i32* @ISF_QUERYDSNSUPPORT, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ISF_QUERYAUTHSUPPORT, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %54, %59
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %49, %41
  %63 = phi i1 [ false, %41 ], [ %61, %49 ]
  %64 = zext i1 %63 to i32
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %73

72:                                               ; preds = %62
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %73

73:                                               ; preds = %72, %71
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load i8*, i8** %10, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @SMTPTransport_CallbackSendHello.szHostName, i64 0, i64 0))
  %78 = add i64 %76, %77
  %79 = add i64 %78, 2
  %80 = call i8* @HeapAlloc(i32 %74, i32 0, i64 %79)
  store i8* %80, i8** %11, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @strcpy(i8* %81, i8* %82)
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @strcat(i8* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @SMTPTransport_CallbackSendHello.szHostName, i64 0, i64 0))
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i64 @strlen(i8* %87)
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = call i64 @strlen(i8* %92)
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 10, i8* %94, align 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* @SMTPTransport_CallbackRecvHelloResp, align 4
  %99 = call i32 @InternetTransport_DoCommand(%struct.TYPE_13__* %96, i8* %97, i32 %98)
  %100 = call i32 (...) @GetProcessHeap()
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @HeapFree(i32 %100, i32 0, i8* %101)
  br label %103

103:                                              ; preds = %73, %37, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @SMTPTransport_ParseResponse(%struct.TYPE_11__*, i8*, %struct.TYPE_12__*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @ISMTPCallback_OnResponse(i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @ERR(i8*, i32) #2

declare dso_local i32 @debugstr_a(i8*) #2

declare dso_local i64 @strstr(i32, i8*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @InternetTransport_DoCommand(%struct.TYPE_13__*, i8*, i32) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
