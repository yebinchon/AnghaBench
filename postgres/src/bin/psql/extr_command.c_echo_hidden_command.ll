; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_echo_hidden_command.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_echo_hidden_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PSQL_ECHO_HIDDEN_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"********* QUERY **********\0A%s\0A**************************\0A\0A\00", align 1
@stdout = common dso_local global i64 0, align 8
@PSQL_ECHO_HIDDEN_NOEXEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @echo_hidden_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @echo_hidden_command(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %5 = load i64, i64* @PSQL_ECHO_HIDDEN_OFF, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @printf(i8* %8, i8* %9)
  %11 = load i64, i64* @stdout, align 8
  %12 = call i32 @fflush(i64 %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  %17 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @fprintf(i64 %16, i8* %17, i8* %18)
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  %21 = call i32 @fflush(i64 %20)
  br label %22

22:                                               ; preds = %15, %7
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %24 = load i64, i64* @PSQL_ECHO_HIDDEN_NOEXEC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %29

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %1
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
