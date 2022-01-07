; ModuleID = '/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_load_stream_conf.c'
source_filename = "/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_load_stream_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@netdata_configured_user_config_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"stream.conf\00", align 1
@stream_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"CONFIG: cannot load user config '%s'. Will try stock config.\00", align 1
@netdata_configured_stock_config_dir = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"CONFIG: cannot load stock config '%s'. Running with internal defaults.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_stream_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_stream_conf() #0 {
  %1 = alloca i8*, align 8
  store i64 0, i64* @errno, align 8
  %2 = load i32, i32* @netdata_configured_user_config_dir, align 4
  %3 = call i8* @strdupz_path_subpath(i32 %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @appconfig_load(i32* @stream_config, i8* %4, i32 0)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 @info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @freez(i8* %10)
  %12 = load i32, i32* @netdata_configured_stock_config_dir, align 4
  %13 = call i8* @strdupz_path_subpath(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @appconfig_load(i32* @stream_config, i8* %14, i32 0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 @info(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %7
  br label %21

21:                                               ; preds = %20, %0
  %22 = load i8*, i8** %1, align 8
  %23 = call i32 @freez(i8* %22)
  ret void
}

declare dso_local i8* @strdupz_path_subpath(i32, i8*) #1

declare dso_local i32 @appconfig_load(i32*, i8*, i32) #1

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32 @freez(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
