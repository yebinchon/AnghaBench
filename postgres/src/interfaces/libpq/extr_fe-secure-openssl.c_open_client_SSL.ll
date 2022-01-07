; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_open_client_SSL.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_open_client_SSL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }

@PGRES_POLLING_READING = common dso_local global i32 0, align 4
@PGRES_POLLING_WRITING = common dso_local global i32 0, align 4
@PG_STRERROR_R_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SSL SYSCALL error: %s\0A\00", align 1
@SOCK_ERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SSL SYSCALL error: EOF detected\0A\00", align 1
@PGRES_POLLING_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"SSL error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"unrecognized SSL error code: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"certificate could not be obtained: %s\0A\00", align 1
@PGRES_POLLING_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @open_client_SSL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_client_SSL(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %11 = call i32 (...) @ERR_clear_error()
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @SSL_connect(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %77

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @SSL_get_error(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = call i64 (...) @ERR_get_error()
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %68 [
    i32 129, label %26
    i32 128, label %28
    i32 130, label %30
    i32 131, label %55
  ]

26:                                               ; preds = %18
  %27 = load i32, i32* @PGRES_POLLING_READING, align 4
  store i32 %27, i32* %2, align 4
  br label %111

28:                                               ; preds = %18
  %29 = load i32, i32* @PGRES_POLLING_WRITING, align 4
  store i32 %29, i32* %2, align 4
  br label %111

30:                                               ; preds = %18
  %31 = load i32, i32* @PG_STRERROR_R_BUFLEN, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %7, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %8, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @libpq_gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @SOCK_ERRNO, align 4
  %42 = trunc i64 %32 to i32
  %43 = call i8* @SOCK_STRERROR(i32 %41, i8* %34, i32 %42)
  %44 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %39, i32 %40, i8* %43)
  br label %50

45:                                               ; preds = %30
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @libpq_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = call i32 @pgtls_close(%struct.TYPE_5__* %51)
  %53 = load i32, i32* @PGRES_POLLING_FAILED, align 4
  store i32 %53, i32* %2, align 4
  %54 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %54)
  br label %111

55:                                               ; preds = %18
  %56 = load i64, i64* %6, align 8
  %57 = call i8* @SSLerrmessage(i64 %56)
  store i8* %57, i8** %9, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %59, i32 %60, i8* %61)
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @SSLerrfree(i8* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = call i32 @pgtls_close(%struct.TYPE_5__* %65)
  %67 = load i32, i32* @PGRES_POLLING_FAILED, align 4
  store i32 %67, i32* %2, align 4
  br label %111

68:                                               ; preds = %18
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i32 @libpq_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %70, i32 %71, i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = call i32 @pgtls_close(%struct.TYPE_5__* %74)
  %76 = load i32, i32* @PGRES_POLLING_FAILED, align 4
  store i32 %76, i32* %2, align 4
  br label %111

77:                                               ; preds = %1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32* @SSL_get_peer_certificate(i32 %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %77
  %89 = call i64 (...) @ERR_get_error()
  %90 = call i8* @SSLerrmessage(i64 %89)
  store i8* %90, i8** %10, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = call i32 @libpq_gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %92, i32 %93, i8* %94)
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @SSLerrfree(i8* %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = call i32 @pgtls_close(%struct.TYPE_5__* %98)
  %100 = load i32, i32* @PGRES_POLLING_FAILED, align 4
  store i32 %100, i32* %2, align 4
  br label %111

101:                                              ; preds = %77
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = call i32 @pq_verify_peer_name_matches_certificate(%struct.TYPE_5__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = call i32 @pgtls_close(%struct.TYPE_5__* %106)
  %108 = load i32, i32* @PGRES_POLLING_FAILED, align 4
  store i32 %108, i32* %2, align 4
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @PGRES_POLLING_OK, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %105, %88, %68, %55, %50, %28, %26
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_connect(i32) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i64 @ERR_get_error(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i8* @SOCK_STRERROR(i32, i8*, i32) #1

declare dso_local i32 @pgtls_close(%struct.TYPE_5__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @SSLerrmessage(i64) #1

declare dso_local i32 @SSLerrfree(i8*) #1

declare dso_local i32* @SSL_get_peer_certificate(i32) #1

declare dso_local i32 @pq_verify_peer_name_matches_certificate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
