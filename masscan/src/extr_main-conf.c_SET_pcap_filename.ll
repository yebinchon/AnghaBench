; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_pcap_filename.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_pcap_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { i8*, i64 }

@.str = private unnamed_addr constant [20 x i8] c"pcap-filename = %s\0A\00", align 1
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_pcap_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_pcap_filename(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
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
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %16 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %23 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %26 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @fprintf(i64 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %21, %14
  store i32 0, i32* %4, align 4
  br label %41

30:                                               ; preds = %3
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %35 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strcpy_s(i8* %36, i32 8, i8* %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* @CONF_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %29
  %42 = load i32, i32* %4, align 4
  ret i32 %42
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
