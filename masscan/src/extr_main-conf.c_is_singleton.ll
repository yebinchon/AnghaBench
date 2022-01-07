; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_is_singleton.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_is_singleton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i8** }

@is_singleton.singletons = internal global [48 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"echo-all\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"selftest\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"self-test\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"regress\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"benchmark\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"system-dns\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"traceroute\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"version-light\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"version-all\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"version-trace\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"osscan-limit\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"osscan-guess\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"badsum\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"open-only\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"packet-trace\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"release-memory\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"log-errors\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"append-output\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"webxml\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"no-stylesheet\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"heartbleed\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"ticketbleed\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"send-eth\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"send-ip\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"iflist\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"nmap\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"trace-packet\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"pfring\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"sendq\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"ping-sweep\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"nobacktrace\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"backtrace\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"infinite\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"nointeractive\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"nostatus\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"read-range\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"read-ranges\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"readrange\00", align 1
@config_parameters = common dso_local global %struct.TYPE_2__* null, align 8
@F_BOOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_singleton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_singleton(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds [48 x i8*], [48 x i8*]* @is_singleton.singletons, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds [48 x i8*], [48 x i8*]* @is_singleton.singletons, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @EQUALS(i8* %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %95

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  br label %6

23:                                               ; preds = %6
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %91, %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config_parameters, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %94

31:                                               ; preds = %24
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config_parameters, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @EQUALS(i8* %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config_parameters, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @F_BOOL, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @F_BOOL, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %95

51:                                               ; preds = %31
  store i64 0, i64* %5, align 8
  br label %52

52:                                               ; preds = %86, %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config_parameters, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %89

62:                                               ; preds = %52
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config_parameters, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %3, align 8
  %72 = call i64 @EQUALS(i8* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %62
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config_parameters, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @F_BOOL, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @F_BOOL, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %2, align 4
  br label %95

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %5, align 8
  br label %52

89:                                               ; preds = %52
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %4, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %4, align 8
  br label %24

94:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %74, %40, %18
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @EQUALS(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
