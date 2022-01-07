; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_create_wrapper_filter.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_create_wrapper_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_user_filter = type { i32, i32, %struct.chain*, %struct.mp_filter* }
%struct.mp_filter = type { %struct.mp_user_filter* }
%struct.chain = type { i32 }

@user_wrapper_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_user_filter* (%struct.chain*)* @create_wrapper_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_user_filter* @create_wrapper_filter(%struct.chain* %0) #0 {
  %2 = alloca %struct.chain*, align 8
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_user_filter*, align 8
  store %struct.chain* %0, %struct.chain** %2, align 8
  %5 = load %struct.chain*, %struct.chain** %2, align 8
  %6 = getelementptr inbounds %struct.chain, %struct.chain* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mp_filter* @mp_filter_create(i32 %7, i32* @user_wrapper_filter)
  store %struct.mp_filter* %8, %struct.mp_filter** %3, align 8
  %9 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %10 = icmp ne %struct.mp_filter* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 (...) @abort() #3
  unreachable

13:                                               ; preds = %1
  %14 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %15 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %14, i32 0, i32 0
  %16 = load %struct.mp_user_filter*, %struct.mp_user_filter** %15, align 8
  store %struct.mp_user_filter* %16, %struct.mp_user_filter** %4, align 8
  %17 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %18 = load %struct.mp_user_filter*, %struct.mp_user_filter** %4, align 8
  %19 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %18, i32 0, i32 3
  store %struct.mp_filter* %17, %struct.mp_filter** %19, align 8
  %20 = load %struct.chain*, %struct.chain** %2, align 8
  %21 = load %struct.mp_user_filter*, %struct.mp_user_filter** %4, align 8
  %22 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %21, i32 0, i32 2
  store %struct.chain* %20, %struct.chain** %22, align 8
  %23 = load %struct.mp_user_filter*, %struct.mp_user_filter** %4, align 8
  %24 = call i32 (...) @mp_aframe_create()
  %25 = call i32 @talloc_steal(%struct.mp_user_filter* %23, i32 %24)
  %26 = load %struct.mp_user_filter*, %struct.mp_user_filter** %4, align 8
  %27 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mp_user_filter*, %struct.mp_user_filter** %4, align 8
  %29 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %31 = load i32, i32* @MP_PIN_IN, align 4
  %32 = call i32 @mp_filter_add_pin(%struct.mp_filter* %30, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %34 = load i32, i32* @MP_PIN_OUT, align 4
  %35 = call i32 @mp_filter_add_pin(%struct.mp_filter* %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.mp_user_filter*, %struct.mp_user_filter** %4, align 8
  ret %struct.mp_user_filter* %36
}

declare dso_local %struct.mp_filter* @mp_filter_create(i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @talloc_steal(%struct.mp_user_filter*, i32) #1

declare dso_local i32 @mp_aframe_create(...) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
