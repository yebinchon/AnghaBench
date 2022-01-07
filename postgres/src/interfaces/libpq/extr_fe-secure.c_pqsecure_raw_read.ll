; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure.c_pqsecure_raw_read.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure.c_pqsecure_raw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PG_STRERROR_R_BUFLEN = common dso_local global i32 0, align 4
@SOCK_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [138 x i8] c"server closed the connection unexpectedly\0A\09This probably means the server terminated abnormally\0A\09before or while processing the request.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"could not receive data from server: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pqsecure_raw_read(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @PG_STRERROR_R_BUFLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @recv(i32 %17, i8* %18, i64 %19, i32 0)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load i32, i32* @SOCK_ERRNO, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %32 [
    i32 131, label %26
    i32 128, label %26
    i32 129, label %26
    i32 130, label %27
  ]

26:                                               ; preds = %23, %23, %23
  br label %40

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @libpq_gettext(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %29, i32 %30)
  br label %40

32:                                               ; preds = %23
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @libpq_gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %8, align 4
  %37 = trunc i64 %12 to i32
  %38 = call i32 @SOCK_STRERROR(i32 %36, i8* %14, i32 %37)
  %39 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %34, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %32, %27, %26
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @SOCK_ERRNO_SET(i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %45)
  ret i64 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #2

declare dso_local i32 @libpq_gettext(i8*) #2

declare dso_local i32 @SOCK_STRERROR(i32, i8*, i32) #2

declare dso_local i32 @SOCK_ERRNO_SET(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
