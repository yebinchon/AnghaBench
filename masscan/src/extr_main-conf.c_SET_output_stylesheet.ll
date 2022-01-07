; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_output_stylesheet.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_output_stylesheet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i8*, i64 }

@.str = private unnamed_addr constant [17 x i8] c"stylesheet = %s\0A\00", align 1
@Output_XML = common dso_local global i64 0, align 8
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_output_stylesheet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_output_stylesheet(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
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
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %16 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %25 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23, %14
  %29 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %30 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %33 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @fprintf(i64 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %28, %23
  store i32 0, i32* %4, align 4
  br label %57

38:                                               ; preds = %3
  %39 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %40 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i64, i64* @Output_XML, align 8
  %46 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %47 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i64 %45, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %51 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strcpy_s(i8* %53, i32 8, i8* %54)
  %56 = load i32, i32* @CONF_OK, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %49, %37
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i32 @strcpy_s(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
