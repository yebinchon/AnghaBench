; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_main.c_load_netdata_conf.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_main.c_load_netdata_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"CONFIG: cannot load config file '%s'.\00", align 1
@netdata_configured_user_config_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"netdata.conf\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"CONFIG: cannot load user config '%s'. Will try the stock version.\00", align 1
@netdata_configured_stock_config_dir = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"CONFIG: cannot load stock config '%s'. Running with internal defaults.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8)* @load_netdata_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_netdata_conf(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  store i64 0, i64* @errno, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %4, align 1
  %16 = call i32 @config_load(i8* %14, i8 signext %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %13
  br label %50

23:                                               ; preds = %8, %2
  %24 = load i32, i32* @netdata_configured_user_config_dir, align 4
  %25 = call i8* @strdupz_path_subpath(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %4, align 1
  %28 = call i32 @config_load(i8* %26, i8 signext %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %23
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @freez(i8* %34)
  %36 = load i32, i32* @netdata_configured_stock_config_dir, align 4
  %37 = call i8* @strdupz_path_subpath(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %4, align 1
  %40 = call i32 @config_load(i8* %38, i8 signext %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @info(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %31
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @freez(i8* %48)
  br label %50

50:                                               ; preds = %47, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @config_load(i8*, i8 signext) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i8* @strdupz_path_subpath(i32, i8*) #1

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32 @freez(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
