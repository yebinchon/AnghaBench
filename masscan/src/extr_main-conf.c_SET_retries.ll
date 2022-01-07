; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_retries.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_retries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { i32, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"retries = %u\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"FAIL: retries=<n>: expected number less than 1000\0A\00", align 1
@CONF_ERR = common dso_local global i32 0, align 4
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_retries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_retries(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @UNUSEDPARM(i8* %9)
  %11 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %12 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %3
  %16 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %17 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %22 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20, %15
  %26 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %27 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %31 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %25, %20
  store i32 0, i32* %4, align 4
  br label %49

35:                                               ; preds = %3
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strtoul(i8* %36, i32 0, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %38, 1000
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @CONF_ERR, align 4
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %47 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @CONF_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %40, %34
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strtoul(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
