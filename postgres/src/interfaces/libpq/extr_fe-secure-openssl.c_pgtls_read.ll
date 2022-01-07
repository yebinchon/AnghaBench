; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_pgtls_read.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_pgtls_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PG_STRERROR_R_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"SSL_read failed but did not provide error information\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@SOCK_ERRNO = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [138 x i8] c"server closed the connection unexpectedly\0A\09This probably means the server terminated abnormally\0A\09before or while processing the request.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"SSL SYSCALL error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"SSL SYSCALL error: EOF detected\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SSL error: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"SSL connection has been closed unexpectedly\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"unrecognized SSL error code: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pgtls_read(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @PG_STRERROR_R_BUFLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  br label %18

18:                                               ; preds = %53, %3
  %19 = call i32 @SOCK_ERRNO_SET(i32 0)
  %20 = call i32 (...) @ERR_clear_error()
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @SSL_read(i32 %23, i8* %24, i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @SSL_get_error(i32 %29, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 133
  br i1 %33, label %37, label %34

34:                                               ; preds = %18
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %18
  %38 = call i64 (...) @ERR_get_error()
  br label %40

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i64 [ %38, %37 ], [ 0, %39 ]
  store i64 %41, i64* %12, align 8
  %42 = load i32, i32* %11, align 4
  switch i32 %42, label %114 [
    i32 133, label %43
    i32 130, label %52
    i32 129, label %53
    i32 131, label %54
    i32 132, label %93
    i32 128, label %106
  ]

43:                                               ; preds = %40
  %44 = load i64, i64* %7, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %48, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ECONNRESET, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %43
  br label %123

52:                                               ; preds = %40
  store i64 0, i64* %7, align 8
  br label %123

53:                                               ; preds = %40
  br label %18

54:                                               ; preds = %40
  %55 = load i64, i64* %7, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = load i32, i32* @SOCK_ERRNO, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EPIPE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ECONNRESET, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62, %57
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i32 @libpq_gettext(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.1, i64 0, i64 0))
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %68, i8* %71)
  br label %83

73:                                               ; preds = %62
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @libpq_gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load i32, i32* %8, align 4
  %80 = trunc i64 %15 to i32
  %81 = call i32 @SOCK_STRERROR(i32 %79, i8* %17, i32 %80)
  %82 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %75, i8* %78, i32 %81)
  br label %83

83:                                               ; preds = %73, %66
  br label %92

84:                                               ; preds = %54
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @libpq_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %86, i8* %89)
  %91 = load i32, i32* @ECONNRESET, align 4
  store i32 %91, i32* %8, align 4
  store i64 -1, i64* %7, align 8
  br label %92

92:                                               ; preds = %84, %83
  br label %123

93:                                               ; preds = %40
  %94 = load i64, i64* %12, align 8
  %95 = call i8* @SSLerrmessage(i64 %94)
  store i8* %95, i8** %13, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %97, i8* %100, i8* %101)
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @SSLerrfree(i8* %103)
  %105 = load i32, i32* @ECONNRESET, align 4
  store i32 %105, i32* %8, align 4
  store i64 -1, i64* %7, align 8
  br label %123

106:                                              ; preds = %40
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = call i32 @libpq_gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %108, i8* %111)
  %113 = load i32, i32* @ECONNRESET, align 4
  store i32 %113, i32* %8, align 4
  store i64 -1, i64* %7, align 8
  br label %123

114:                                              ; preds = %40
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = call i32 @libpq_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = load i32, i32* %11, align 4
  %121 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %116, i8* %119, i32 %120)
  %122 = load i32, i32* @ECONNRESET, align 4
  store i32 %122, i32* %8, align 4
  store i64 -1, i64* %7, align 8
  br label %123

123:                                              ; preds = %114, %106, %93, %92, %52, %51
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @SOCK_ERRNO_SET(i32 %124)
  %126 = load i64, i64* %7, align 8
  %127 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %127)
  ret i64 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SOCK_ERRNO_SET(i32) #2

declare dso_local i32 @ERR_clear_error(...) #2

declare dso_local i64 @SSL_read(i32, i8*, i64) #2

declare dso_local i32 @SSL_get_error(i32, i64) #2

declare dso_local i64 @ERR_get_error(...) #2

declare dso_local i32 @printfPQExpBuffer(i32*, i8*, ...) #2

declare dso_local i32 @libpq_gettext(i8*) #2

declare dso_local i32 @SOCK_STRERROR(i32, i8*, i32) #2

declare dso_local i8* @SSLerrmessage(i64) #2

declare dso_local i32 @SSLerrfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
