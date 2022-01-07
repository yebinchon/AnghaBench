; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_msg.c_ssl3_do_change_cipher_spec.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_msg.c_ssl3_do_change_cipher_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_10__*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, i32)*, {}* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64, i32 }

@SSL3_CHANGE_CIPHER_SERVER_READ = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_CLIENT_READ = common dso_local global i32 0, align 4
@SSL_F_SSL3_DO_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL_R_CCS_RECEIVED_EARLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_do_change_cipher_spec(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @SSL3_CHANGE_CIPHER_SERVER_READ, align 4
  store i32 %10, i32* %4, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_READ, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %13
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25, %20
  %33 = load i32, i32* @SSL_F_SSL3_DO_CHANGE_CIPHER_SPEC, align 4
  %34 = load i32, i32* @SSL_R_CCS_RECEIVED_EARLY, align 4
  %35 = call i32 @SSLerr(i32 %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %73

36:                                               ; preds = %25
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = bitcast {}** %51 to i32 (%struct.TYPE_15__*)**
  %53 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = call i32 %53(%struct.TYPE_15__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %73

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58, %13
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 %66(%struct.TYPE_15__* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %73

72:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %71, %57, %32
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @SSLerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
