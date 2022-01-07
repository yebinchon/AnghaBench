; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/clocks/extr_clocks.c_read_proc_uptime.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/clocks/extr_clocks.c_read_proc_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_proc_uptime_ff = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"/proc/uptime has no lines.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"/proc/uptime has less than 1 word in it.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_proc_uptime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_proc_uptime(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i64, i64* @read_proc_uptime_ff, align 8
  %5 = icmp ne i64 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %13 = call i64 @procfile_open(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i64 %13, i64* @read_proc_uptime_ff, align 8
  %14 = load i64, i64* @read_proc_uptime_ff, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %56

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i64, i64* @read_proc_uptime_ff, align 8
  %24 = call i64 @procfile_readall(i64 %23)
  store i64 %24, i64* @read_proc_uptime_ff, align 8
  %25 = load i64, i64* @read_proc_uptime_ff, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %56

32:                                               ; preds = %22
  %33 = load i64, i64* @read_proc_uptime_ff, align 8
  %34 = call i32 @procfile_lines(i64 %33)
  %35 = icmp slt i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

41:                                               ; preds = %32
  %42 = load i64, i64* @read_proc_uptime_ff, align 8
  %43 = call i32 @procfile_linewords(i64 %42, i32 0)
  %44 = icmp slt i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

50:                                               ; preds = %41
  %51 = load i64, i64* @read_proc_uptime_ff, align 8
  %52 = call i32 @procfile_lineword(i64 %51, i32 0, i32 0)
  %53 = call double @strtold(i32 %52, i32* null)
  %54 = fmul double %53, 1.000000e+03
  %55 = fptosi double %54 to i32
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %48, %39, %31, %20
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @procfile_open(i8*, i8*, i32) #1

declare dso_local i64 @procfile_readall(i64) #1

declare dso_local i32 @procfile_lines(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @procfile_linewords(i64, i32) #1

declare dso_local double @strtold(i32, i32*) #1

declare dso_local i32 @procfile_lineword(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
