; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqSocketCheck.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqSocketCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }

@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"invalid socket\0A\00", align 1
@SOCK_ERRNO = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@PG_STRERROR_R_BUFLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"select() failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @pqSocketCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqSocketCheck(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %63

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PGINVALID_SOCKET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = call i32 @libpq_gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %24, i32 %25)
  store i32 -1, i32* %5, align 4
  br label %63

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %43, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @pqSocketPoll(i64 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* @SOCK_ERRNO, align 8
  %41 = load i64, i64* @EINTR, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %28, label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32, i32* @PG_STRERROR_R_BUFLEN, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %11, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %12, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call i32 @libpq_gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i64, i64* @SOCK_ERRNO, align 8
  %57 = trunc i64 %50 to i32
  %58 = call i32 @SOCK_STRERROR(i64 %56, i8* %52, i32 %57)
  %59 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %54, i32 %55, i32 %58)
  %60 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %60)
  br label %61

61:                                               ; preds = %48, %45
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %22, %15
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @pqSocketPoll(i64, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SOCK_STRERROR(i64, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
