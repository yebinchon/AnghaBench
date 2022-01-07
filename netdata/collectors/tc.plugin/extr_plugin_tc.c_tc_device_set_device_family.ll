; ModuleID = '/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_device_set_device_family.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_device_set_device_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_device = type { i32, i32*, i32 }

@D_TC_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"TC: Setting device '%s' family to '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc_device*, i8*)* @tc_device_set_device_family to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_device_set_device_family(%struct.tc_device* %0, i8* %1) #0 {
  %3 = alloca %struct.tc_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.tc_device* %0, %struct.tc_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %6 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @freez(i32* %7)
  %9 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %10 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %20 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %18, %13, %2
  %26 = phi i1 [ false, %13 ], [ false, %2 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i32, i32* @D_TC_LOOP, align 4
  %32 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %33 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @debug(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35)
  %37 = load i8*, i8** %4, align 8
  %38 = call i32* @strdupz(i8* %37)
  %39 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %40 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %42 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @freez(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @debug(i32, i8*, i32, i8*) #1

declare dso_local i32* @strdupz(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
