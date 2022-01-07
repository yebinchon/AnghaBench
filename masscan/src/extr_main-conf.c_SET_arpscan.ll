; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_arpscan.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_arpscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.Range = type { i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"arpscan = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@Templ_ARP = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"router-mac\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ff-ff-ff-ff-ff-ff\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"--arpscan\0A\00", align 1
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_arpscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_arpscan(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Range, align 8
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @UNUSEDPARM(i8* %9)
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @UNUSEDPARM(i8* %11)
  %13 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %14 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %3
  %18 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %19 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %25 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23, %17
  %29 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %30 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %33 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %39 = call i32 @fprintf(i64 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %28, %23
  store i32 0, i32* %4, align 4
  br label %63

41:                                               ; preds = %3
  %42 = load i8*, i8** @Templ_ARP, align 8
  %43 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** @Templ_ARP, align 8
  %45 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %47 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @rangelist_add_range(i32* %47, i8* %49, i8* %51)
  %53 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %54 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %53, i32 0, i32 1
  %55 = call i32 @rangelist_sort(i32* %54)
  %56 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %57 = call i32 @masscan_set_parameter(%struct.Masscan* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %59 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = call i32 @LOG(i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %62 = load i32, i32* @CONF_OK, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %41, %40
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i32 @rangelist_add_range(i32*, i8*, i8*) #1

declare dso_local i32 @rangelist_sort(i32*) #1

declare dso_local i32 @masscan_set_parameter(%struct.Masscan*, i8*, i8*) #1

declare dso_local i32 @LOG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
