; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/button-hotplug/src/extr_button-hotplug.c_button_hotplug_create_event.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/button-hotplug/src/extr_button-hotplug.c_button_hotplug_create_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh_event = type { i8*, i64, i8*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"create event, name=%s, seen=%lu, pressed=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@button_hotplug_work = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @button_hotplug_create_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @button_hotplug_create_event(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bh_event*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @BH_DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %9, i64 %10, i32 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.bh_event* @kzalloc(i32 32, i32 %13)
  store %struct.bh_event* %14, %struct.bh_event** %8, align 8
  %15 = load %struct.bh_event*, %struct.bh_event** %8, align 8
  %16 = icmp ne %struct.bh_event* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.bh_event*, %struct.bh_event** %8, align 8
  %23 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.bh_event*, %struct.bh_event** %8, align 8
  %26 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %31 = load %struct.bh_event*, %struct.bh_event** %8, align 8
  %32 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.bh_event*, %struct.bh_event** %8, align 8
  %34 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %33, i32 0, i32 3
  %35 = load i64, i64* @button_hotplug_work, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @INIT_WORK(i32* %34, i8* %36)
  %38 = load %struct.bh_event*, %struct.bh_event** %8, align 8
  %39 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %38, i32 0, i32 3
  %40 = call i32 @schedule_work(i32* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %20, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @BH_DBG(i8*, i8*, i64, i32) #1

declare dso_local %struct.bh_event* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
