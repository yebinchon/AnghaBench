; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_rotate_offset.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_rotate_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"rotate-offset = %u\0A\00", align 1
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_rotate_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_rotate_offset(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @UNUSEDPARM(i8* %8)
  %10 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %11 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %16 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %23 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21, %14
  %27 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %28 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %31 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @fprintf(i64 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %26, %21
  store i32 0, i32* %4, align 4
  br label %46

37:                                               ; preds = %3
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @parseTime(i8* %38)
  %40 = trunc i64 %39 to i32
  %41 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %42 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load i32, i32* @CONF_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %37, %36
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, i32) #1

declare dso_local i64 @parseTime(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
