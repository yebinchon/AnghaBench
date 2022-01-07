; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_msg.c_ssl3_send_alert.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_msg.c_ssl3_send_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i32, %struct.TYPE_9__, i32*, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32)* }
%struct.TYPE_9__ = type { i32, i32* }

@SSL3_VERSION = common dso_local global i64 0, align 8
@SSL_AD_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL3_AL_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_send_alert(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = call i64 @SSL_TREAT_AS_TLS13(%struct.TYPE_11__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @tls13_alert_code(i32 %12)
  store i32 %13, i32* %7, align 4
  br label %24

14:                                               ; preds = %3
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 %21(i32 %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %14, %11
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SSL3_VERSION, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SSL_AD_PROTOCOL_VERSION, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %30, %24
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %86

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @SSL3_AL_FATAL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @SSL_CTX_remove_session(i32 %52, i32* %55)
  br label %57

57:                                               ; preds = %49, %44, %40
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %67, i32* %72, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = call i32 @RECORD_LAYER_write_pending(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %57
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = call i32 %82(%struct.TYPE_11__* %83)
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %77, %39
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @SSL_TREAT_AS_TLS13(%struct.TYPE_11__*) #1

declare dso_local i32 @tls13_alert_code(i32) #1

declare dso_local i32 @SSL_CTX_remove_session(i32, i32*) #1

declare dso_local i32 @RECORD_LAYER_write_pending(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
