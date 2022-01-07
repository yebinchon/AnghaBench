; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_CheckConnection.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_CheckConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"connection to server was lost\00", align 1
@EXIT_BADCONN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"The connection to the server was lost. Attempting reset: \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Succeeded.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckConnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckConnection() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @ConnectionUp()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %36, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = call i32 @pg_log_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @EXIT_BADCONN, align 4
  %11 = call i32 @exit(i32 %10) #3
  unreachable

12:                                               ; preds = %5
  %13 = load i32, i32* @stderr, align 4
  %14 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @fprintf(i32 %13, i8* %14)
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %17 = call i32 @PQreset(i32* %16)
  %18 = call i32 (...) @ConnectionUp()
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @stderr, align 4
  %23 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @fprintf(i32 %22, i8* %23)
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %26 = call i32 @PQfinish(i32* %25)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %27 = call i32 (...) @ResetCancelConn()
  %28 = call i32 (...) @UnsyncVariables()
  br label %35

29:                                               ; preds = %12
  %30 = load i32, i32* @stderr, align 4
  %31 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @fprintf(i32 %30, i8* %31)
  %33 = call i32 (...) @SyncVariables()
  %34 = call i32 @connection_warnings(i32 0)
  br label %35

35:                                               ; preds = %29, %21
  br label %36

36:                                               ; preds = %35, %0
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @ConnectionUp(...) #1

declare dso_local i32 @pg_log_fatal(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @PQreset(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @ResetCancelConn(...) #1

declare dso_local i32 @UnsyncVariables(...) #1

declare dso_local i32 @SyncVariables(...) #1

declare dso_local i32 @connection_warnings(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
