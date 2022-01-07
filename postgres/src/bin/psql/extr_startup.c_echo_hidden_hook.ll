; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_startup.c_echo_hidden_hook.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_startup.c_echo_hidden_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"noexec\00", align 1
@PSQL_ECHO_HIDDEN_NOEXEC = common dso_local global i32 0, align 4
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PSQL_ECHO_HIDDEN_ON = common dso_local global i32 0, align 4
@PSQL_ECHO_HIDDEN_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ECHO_HIDDEN\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"on, off, noexec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @echo_hidden_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @echo_hidden_hook(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @pg_strcasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @PSQL_ECHO_HIDDEN_NOEXEC, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  br label %31

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @ParseVariableBool(i8* %15, i32* null, i32* %4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @PSQL_ECHO_HIDDEN_ON, align 4
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @PSQL_ECHO_HIDDEN_OFF, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  br label %30

27:                                               ; preds = %14
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @PsqlVarEnumError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %12
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i64 @ParseVariableBool(i8*, i32*, i32*) #1

declare dso_local i32 @PsqlVarEnumError(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
