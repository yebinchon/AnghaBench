; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_signalfuncs.c_pg_signal_backend.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_signalfuncs.c_pg_signal_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"PID %d is not a PostgreSQL server process\00", align 1
@SIGNAL_BACKEND_ERROR = common dso_local global i32 0, align 4
@SIGNAL_BACKEND_NOSUPERUSER = common dso_local global i32 0, align 4
@DEFAULT_ROLE_SIGNAL_BACKENDID = common dso_local global i32 0, align 4
@SIGNAL_BACKEND_NOPERMISSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not send signal to process %d: %m\00", align 1
@SIGNAL_BACKEND_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pg_signal_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_signal_backend(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_3__* @BackendPidGetProc(i32 %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @WARNING, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @ereport(i32 %12, i32 %14)
  %16 = load i32, i32* @SIGNAL_BACKEND_ERROR, align 4
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @superuser_arg(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = call i32 (...) @superuser()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @SIGNAL_BACKEND_NOSUPERUSER, align 4
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %23, %17
  %29 = call i32 (...) @GetUserId()
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @has_privs_of_role(i32 %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = call i32 (...) @GetUserId()
  %37 = load i32, i32* @DEFAULT_ROLE_SIGNAL_BACKENDID, align 4
  %38 = call i32 @has_privs_of_role(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @SIGNAL_BACKEND_NOPERMISSION, align 4
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %35, %28
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @kill(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @WARNING, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = call i32 @ereport(i32 %48, i32 %50)
  %52 = load i32, i32* @SIGNAL_BACKEND_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @SIGNAL_BACKEND_SUCCESS, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %47, %40, %26, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_3__* @BackendPidGetProc(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @superuser_arg(i32) #1

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @has_privs_of_role(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i64 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
