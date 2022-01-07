; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_find_module.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_find_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_module_info = type { %struct.lwan_module*, i32 }
%struct.lwan_module = type { i32 }

@__start_lwan_module = common dso_local global %struct.lwan_module_info* null, align 8
@__stop_lwan_module = common dso_local global %struct.lwan_module_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lwan_module* (i8*)* @find_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lwan_module* @find_module(i8* %0) #0 {
  %2 = alloca %struct.lwan_module*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lwan_module_info*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.lwan_module_info*, %struct.lwan_module_info** @__start_lwan_module, align 8
  store %struct.lwan_module_info* %5, %struct.lwan_module_info** %4, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load %struct.lwan_module_info*, %struct.lwan_module_info** %4, align 8
  %8 = load %struct.lwan_module_info*, %struct.lwan_module_info** @__stop_lwan_module, align 8
  %9 = icmp ult %struct.lwan_module_info* %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.lwan_module_info*, %struct.lwan_module_info** %4, align 8
  %12 = getelementptr inbounds %struct.lwan_module_info, %struct.lwan_module_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @streq(i32 %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.lwan_module_info*, %struct.lwan_module_info** %4, align 8
  %19 = getelementptr inbounds %struct.lwan_module_info, %struct.lwan_module_info* %18, i32 0, i32 0
  %20 = load %struct.lwan_module*, %struct.lwan_module** %19, align 8
  store %struct.lwan_module* %20, %struct.lwan_module** %2, align 8
  br label %26

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.lwan_module_info*, %struct.lwan_module_info** %4, align 8
  %24 = getelementptr inbounds %struct.lwan_module_info, %struct.lwan_module_info* %23, i32 1
  store %struct.lwan_module_info* %24, %struct.lwan_module_info** %4, align 8
  br label %6

25:                                               ; preds = %6
  store %struct.lwan_module* null, %struct.lwan_module** %2, align 8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load %struct.lwan_module*, %struct.lwan_module** %2, align 8
  ret %struct.lwan_module* %27
}

declare dso_local i64 @streq(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
