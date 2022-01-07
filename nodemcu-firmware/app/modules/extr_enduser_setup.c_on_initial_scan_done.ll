; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_on_initial_scan_done.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_on_initial_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bss_info = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bss_info* }

@.str = private unnamed_addr constant [21 x i8] c"on_initial_scan_done\00", align 1
@state = common dso_local global %struct.TYPE_4__* null, align 8
@OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @on_initial_scan_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_initial_scan_done(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bss_info*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %46

11:                                               ; preds = %2
  store i64 -100, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.bss_info*
  store %struct.bss_info* %17, %struct.bss_info** %6, align 8
  br label %18

18:                                               ; preds = %37, %15
  %19 = load %struct.bss_info*, %struct.bss_info** %6, align 8
  %20 = icmp ne %struct.bss_info* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load %struct.bss_info*, %struct.bss_info** %6, align 8
  %23 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.bss_info*, %struct.bss_info** %6, align 8
  %29 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.bss_info*, %struct.bss_info** %6, align 8
  %34 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %27, %21
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.bss_info*, %struct.bss_info** %6, align 8
  %39 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.bss_info*, %struct.bss_info** %40, align 8
  store %struct.bss_info* %41, %struct.bss_info** %6, align 8
  br label %18

42:                                               ; preds = %18
  br label %43

43:                                               ; preds = %42, %11
  %44 = call i32 (...) @enduser_setup_ap_start()
  %45 = call i32 (...) @enduser_setup_check_station_start()
  br label %46

46:                                               ; preds = %43, %10
  ret void
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i32 @enduser_setup_ap_start(...) #1

declare dso_local i32 @enduser_setup_check_station_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
