; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_gmtsub.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_gmtsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i32 }
%struct.pg_tm = type { i32 }

@gmtsub.gmtptr = internal global %struct.state* null, align 8
@wildabbr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pg_tm* (i32*, i64, %struct.pg_tm*)* @gmtsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pg_tm* @gmtsub(i32* %0, i64 %1, %struct.pg_tm* %2) #0 {
  %4 = alloca %struct.pg_tm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pg_tm*, align 8
  %8 = alloca %struct.pg_tm*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pg_tm* %2, %struct.pg_tm** %7, align 8
  %9 = load %struct.state*, %struct.state** @gmtsub.gmtptr, align 8
  %10 = icmp eq %struct.state* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = call i64 @malloc(i32 4)
  %13 = inttoptr i64 %12 to %struct.state*
  store %struct.state* %13, %struct.state** @gmtsub.gmtptr, align 8
  %14 = load %struct.state*, %struct.state** @gmtsub.gmtptr, align 8
  %15 = icmp eq %struct.state* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store %struct.pg_tm* null, %struct.pg_tm** %4, align 8
  br label %40

17:                                               ; preds = %11
  %18 = load %struct.state*, %struct.state** @gmtsub.gmtptr, align 8
  %19 = call i32 @gmtload(%struct.state* %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.state*, %struct.state** @gmtsub.gmtptr, align 8
  %24 = load %struct.pg_tm*, %struct.pg_tm** %7, align 8
  %25 = call %struct.pg_tm* @timesub(i32* %21, i64 %22, %struct.state* %23, %struct.pg_tm* %24)
  store %struct.pg_tm* %25, %struct.pg_tm** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @wildabbr, align 4
  %30 = load %struct.pg_tm*, %struct.pg_tm** %7, align 8
  %31 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %38

32:                                               ; preds = %20
  %33 = load %struct.state*, %struct.state** @gmtsub.gmtptr, align 8
  %34 = getelementptr inbounds %struct.state, %struct.state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pg_tm*, %struct.pg_tm** %7, align 8
  %37 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %28
  %39 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  store %struct.pg_tm* %39, %struct.pg_tm** %4, align 8
  br label %40

40:                                               ; preds = %38, %16
  %41 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  ret %struct.pg_tm* %41
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @gmtload(%struct.state*) #1

declare dso_local %struct.pg_tm* @timesub(i32*, i64, %struct.state*, %struct.pg_tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
