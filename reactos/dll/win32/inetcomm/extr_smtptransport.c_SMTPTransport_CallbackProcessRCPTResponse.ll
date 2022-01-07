; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_smtptransport.c_SMTPTransport_CallbackProcessRCPTResponse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_smtptransport.c_SMTPTransport_CallbackProcessRCPTResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SMTP_RCPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"server error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @SMTPTransport_CallbackProcessRCPTResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SMTPTransport_CallbackProcessRCPTResponse(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @GetProcessHeap()
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @HeapFree(i32 %14, i32 0, i32* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @SMTPTransport_ParseResponse(%struct.TYPE_10__* %21, i8* %22, %struct.TYPE_11__* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %46

28:                                               ; preds = %3
  %29 = load i32, i32* @SMTP_RCPT, align 4
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = call i32 @ISMTPCallback_OnResponse(i32* %35, %struct.TYPE_11__* %8)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @debugstr_a(i8* %43)
  %45 = call i32 @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %27, %42, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @SMTPTransport_ParseResponse(%struct.TYPE_10__*, i8*, %struct.TYPE_11__*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @ISMTPCallback_OnResponse(i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @ERR(i8*, i32) #2

declare dso_local i32 @debugstr_a(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
