; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_try_setup_from_config.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_try_setup_from_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.lwan_config = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Could not read config file: %s\00", align 1
@REQUEST_ALLOW_PROXY_REQS = common dso_local global i32 0, align 4
@REQUEST_ALLOW_CORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan*, %struct.lwan_config*)* @try_setup_from_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_setup_from_config(%struct.lwan* %0, %struct.lwan_config* %1) #0 {
  %3 = alloca %struct.lwan*, align 8
  %4 = alloca %struct.lwan_config*, align 8
  store %struct.lwan* %0, %struct.lwan** %3, align 8
  store %struct.lwan_config* %1, %struct.lwan_config** %4, align 8
  %5 = load %struct.lwan*, %struct.lwan** %3, align 8
  %6 = load %struct.lwan_config*, %struct.lwan_config** %4, align 8
  %7 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @setup_from_config(%struct.lwan* %5, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = load %struct.lwan_config*, %struct.lwan_config** %4, align 8
  %13 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.lwan_config*, %struct.lwan_config** %4, align 8
  %18 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %11
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.lwan*, %struct.lwan** %3, align 8
  %24 = call i32 @lwan_status_init(%struct.lwan* %23)
  %25 = load %struct.lwan*, %struct.lwan** %3, align 8
  %26 = getelementptr inbounds %struct.lwan, %struct.lwan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @REQUEST_ALLOW_PROXY_REQS, align 4
  br label %33

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = load %struct.lwan*, %struct.lwan** %3, align 8
  %36 = getelementptr inbounds %struct.lwan, %struct.lwan* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @REQUEST_ALLOW_CORS, align 4
  br label %43

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %34, %44
  %46 = load %struct.lwan*, %struct.lwan** %3, align 8
  %47 = getelementptr inbounds %struct.lwan, %struct.lwan* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  ret void
}

declare dso_local i32 @setup_from_config(%struct.lwan*, i32) #1

declare dso_local i32 @lwan_status_critical(i8*, i32) #1

declare dso_local i32 @lwan_status_init(%struct.lwan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
