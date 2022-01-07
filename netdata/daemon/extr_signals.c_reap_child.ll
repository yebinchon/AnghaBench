; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_signals.c_reap_child.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_signals.c_reap_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@errno = common dso_local global i64 0, align 8
@D_CHILDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"SIGNAL: Reaping pid: %d...\00", align 1
@P_PID = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"SIGNAL: Failed to wait for: %d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SIGNAL: Already reaped: %d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SIGNAL: Child %d exited: %d\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"SIGNAL: Child %d killed by signal: %d\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"SIGNAL: Child %d dumped core by signal: %d\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"SIGNAL: Child %d stopped by signal: %d\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"SIGNAL: Child %d trapped by signal: %d\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"SIGNAL: Child %d continued by signal: %d\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"SIGNAL: Child %d gave us a SIGCHLD with code %d and status %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @reap_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reap_child(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* @errno, align 8
  %4 = load i32, i32* @D_CHILDS, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 (i32, i8*, i64, ...) @debug(i32 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load i32, i32* @P_PID, align 4
  %8 = load i64, i64* %2, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @WEXITED, align 4
  %11 = load i32, i32* @WNOHANG, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @waitid(i32 %7, i32 %9, %struct.TYPE_3__* %3, i32 %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ECHILD, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  br label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @D_CHILDS, align 4
  %24 = load i64, i64* %2, align 8
  %25 = call i32 (i32, i8*, i64, ...) @debug(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %22, %19
  br label %80

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %80

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %72 [
    i32 131, label %36
    i32 130, label %42
    i32 132, label %48
    i32 129, label %54
    i32 128, label %60
    i32 133, label %66
  ]

36:                                               ; preds = %33
  %37 = load i32, i32* @D_CHILDS, align 4
  %38 = load i64, i64* %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, i64, ...) @debug(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %38, i32 %40)
  br label %80

42:                                               ; preds = %33
  %43 = load i32, i32* @D_CHILDS, align 4
  %44 = load i64, i64* %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, i64, ...) @debug(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %44, i32 %46)
  br label %80

48:                                               ; preds = %33
  %49 = load i32, i32* @D_CHILDS, align 4
  %50 = load i64, i64* %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, i64, ...) @debug(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 %50, i32 %52)
  br label %80

54:                                               ; preds = %33
  %55 = load i32, i32* @D_CHILDS, align 4
  %56 = load i64, i64* %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i64, ...) @debug(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %56, i32 %58)
  br label %80

60:                                               ; preds = %33
  %61 = load i32, i32* @D_CHILDS, align 4
  %62 = load i64, i64* %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, i64, ...) @debug(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %62, i32 %64)
  br label %80

66:                                               ; preds = %33
  %67 = load i32, i32* @D_CHILDS, align 4
  %68 = load i64, i64* %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, i64, ...) @debug(i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i64 %68, i32 %70)
  br label %80

72:                                               ; preds = %33
  %73 = load i32, i32* @D_CHILDS, align 4
  %74 = load i64, i64* %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, i64, ...) @debug(i32 %73, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i64 %74, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %26, %31, %72, %66, %60, %54, %48, %42, %36
  ret void
}

declare dso_local i32 @debug(i32, i8*, i64, ...) #1

declare dso_local i32 @waitid(i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
