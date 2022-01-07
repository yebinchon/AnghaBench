; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-gssapi.c_read_or_wait.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-gssapi.c_read_or_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@PqGSSRecvLength = common dso_local global i64 0, align 8
@PqGSSRecvBuffer = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@MyLatch = common dso_local global i32 0, align 4
@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_GSS_OPEN_SERVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64)* @read_or_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_or_wait(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %7

7:                                                ; preds = %73, %71, %2
  %8 = load i64, i64* @PqGSSRecvLength, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %77

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = load i64, i64* @PqGSSRecvBuffer, align 8
  %14 = load i64, i64* @PqGSSRecvLength, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @PqGSSRecvLength, align 8
  %18 = sub nsw i64 %16, %17
  %19 = call i64 @secure_raw_read(%struct.TYPE_4__* %12, i64 %15, i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %11
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @EWOULDBLOCK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EAGAIN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i64 -1, i64* %3, align 8
  br label %79

31:                                               ; preds = %26, %22, %11
  %32 = load i64, i64* %6, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %73

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EWOULDBLOCK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EAGAIN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i64 -1, i64* %3, align 8
  br label %79

46:                                               ; preds = %41, %37, %34
  %47 = load i32, i32* @MyLatch, align 4
  %48 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %49 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @WAIT_EVENT_GSS_OPEN_SERVER, align 4
  %55 = call i32 @WaitLatchOrSocket(i32 %47, i32 %50, i32 %53, i32 0, i32 %54)
  %56 = load i64, i64* %6, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %46
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = load i64, i64* @PqGSSRecvBuffer, align 8
  %61 = load i64, i64* @PqGSSRecvLength, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @PqGSSRecvLength, align 8
  %65 = sub nsw i64 %63, %64
  %66 = call i64 @secure_raw_read(%struct.TYPE_4__* %59, i64 %62, i64 %65)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i64 -1, i64* %3, align 8
  br label %79

70:                                               ; preds = %58
  br label %72

71:                                               ; preds = %46
  br label %7

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72, %31
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @PqGSSRecvLength, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* @PqGSSRecvLength, align 8
  br label %7

77:                                               ; preds = %7
  %78 = load i64, i64* %5, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %77, %69, %45, %30
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i64 @secure_raw_read(%struct.TYPE_4__*, i64, i64) #1

declare dso_local i32 @WaitLatchOrSocket(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
