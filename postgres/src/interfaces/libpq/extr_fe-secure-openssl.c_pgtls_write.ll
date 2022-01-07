; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_pgtls_write.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_pgtls_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PG_STRERROR_R_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"SSL_write failed but did not provide error information\0A\00", align 1
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
define dso_local i64 @pgtls_write(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
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
  %18 = call i32 @SOCK_ERRNO_SET(i32 0)
  %19 = call i32 (...) @ERR_clear_error()
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @SSL_write(i32 %22, i8* %23, i64 %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @SSL_get_error(i32 %28, i64 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 133
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %3
  %37 = call i64 (...) @ERR_get_error()
  br label %39

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i64 [ %37, %36 ], [ 0, %38 ]
  store i64 %40, i64* %12, align 8
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %113 [
    i32 133, label %42
    i32 130, label %51
    i32 129, label %52
    i32 131, label %53
    i32 132, label %92
    i32 128, label %105
  ]

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %47, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ECONNRESET, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %42
  br label %122

51:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  br label %122

52:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  br label %122

53:                                               ; preds = %39
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load i32, i32* @SOCK_ERRNO, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @EPIPE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ECONNRESET, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61, %56
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @libpq_gettext(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.1, i64 0, i64 0))
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %67, i8* %70)
  br label %82

72:                                               ; preds = %61
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call i32 @libpq_gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load i32, i32* %8, align 4
  %79 = trunc i64 %15 to i32
  %80 = call i32 @SOCK_STRERROR(i32 %78, i8* %17, i32 %79)
  %81 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %74, i8* %77, i32 %80)
  br label %82

82:                                               ; preds = %72, %65
  br label %91

83:                                               ; preds = %53
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i32 @libpq_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %85, i8* %88)
  %90 = load i32, i32* @ECONNRESET, align 4
  store i32 %90, i32* %8, align 4
  store i64 -1, i64* %7, align 8
  br label %91

91:                                               ; preds = %83, %82
  br label %122

92:                                               ; preds = %39
  %93 = load i64, i64* %12, align 8
  %94 = call i8* @SSLerrmessage(i64 %93)
  store i8* %94, i8** %13, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load i8*, i8** %13, align 8
  %101 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %96, i8* %99, i8* %100)
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @SSLerrfree(i8* %102)
  %104 = load i32, i32* @ECONNRESET, align 4
  store i32 %104, i32* %8, align 4
  store i64 -1, i64* %7, align 8
  br label %122

105:                                              ; preds = %39
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = call i32 @libpq_gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %107, i8* %110)
  %112 = load i32, i32* @ECONNRESET, align 4
  store i32 %112, i32* %8, align 4
  store i64 -1, i64* %7, align 8
  br label %122

113:                                              ; preds = %39
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = call i32 @libpq_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = load i32, i32* %11, align 4
  %120 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %115, i8* %118, i32 %119)
  %121 = load i32, i32* @ECONNRESET, align 4
  store i32 %121, i32* %8, align 4
  store i64 -1, i64* %7, align 8
  br label %122

122:                                              ; preds = %113, %105, %92, %91, %52, %51, %50
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @SOCK_ERRNO_SET(i32 %123)
  %125 = load i64, i64* %7, align 8
  %126 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %126)
  ret i64 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SOCK_ERRNO_SET(i32) #2

declare dso_local i32 @ERR_clear_error(...) #2

declare dso_local i64 @SSL_write(i32, i8*, i64) #2

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
