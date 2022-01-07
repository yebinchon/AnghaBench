; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_connection_warnings.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_connection_warnings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i32, i32 }

@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PG_VERSION_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"server_version\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s (%s, server %s)\0A\00", align 1
@PG_VERSION = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%s (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [100 x i8] c"WARNING: %s major version %s, server major version %s.\0A         Some psql features might not work.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @connection_warnings(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 4), align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %60, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 3), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %60, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @PG_VERSION_NUM, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 2), align 8
  %19 = call i8* @PQparameterStatus(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %25 = call i8* @formatPGVersionNumber(i32 %23, i32 1, i8* %24, i32 32)
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  %30 = load i8*, i8** @PG_VERSION, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (i8*, i8*, i8*, ...) @printf(i8* %28, i8* %29, i8* %30, i8* %31)
  br label %41

33:                                               ; preds = %12
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  %38 = load i8*, i8** @PG_VERSION, align 8
  %39 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %36, %33
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %43 = sdiv i32 %42, 100
  %44 = load i32, i32* %3, align 4
  %45 = sdiv i32 %44, 100
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = call i8* @_(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  %50 = load i32, i32* %3, align 4
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %52 = call i8* @formatPGVersionNumber(i32 %50, i32 0, i8* %51, i32 32)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %55 = call i8* @formatPGVersionNumber(i32 %53, i32 0, i8* %54, i32 32)
  %56 = call i32 (i8*, i8*, i8*, ...) @printf(i8* %48, i8* %49, i8* %52, i8* %55)
  br label %57

57:                                               ; preds = %47, %41
  %58 = call i32 (...) @printSSLInfo()
  %59 = call i32 (...) @printGSSInfo()
  br label %60

60:                                               ; preds = %57, %9, %1
  ret void
}

declare dso_local i8* @PQparameterStatus(i32, i8*) #1

declare dso_local i8* @formatPGVersionNumber(i32, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @printSSLInfo(...) #1

declare dso_local i32 @printGSSInfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
