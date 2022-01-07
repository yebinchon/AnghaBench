; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_rbcfg_env_find.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_rbcfg_env_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_value = type { i32 }
%struct.rbcfg_env = type { i32, %struct.rbcfg_value* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rbcfg_value* (%struct.rbcfg_env*, i8*)* @rbcfg_env_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rbcfg_value* @rbcfg_env_find(%struct.rbcfg_env* %0, i8* %1) #0 {
  %3 = alloca %struct.rbcfg_value*, align 8
  %4 = alloca %struct.rbcfg_env*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rbcfg_value*, align 8
  store %struct.rbcfg_env* %0, %struct.rbcfg_env** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.rbcfg_env*, %struct.rbcfg_env** %4, align 8
  %11 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.rbcfg_env*, %struct.rbcfg_env** %4, align 8
  %16 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %15, i32 0, i32 1
  %17 = load %struct.rbcfg_value*, %struct.rbcfg_value** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %17, i64 %19
  store %struct.rbcfg_value* %20, %struct.rbcfg_value** %7, align 8
  %21 = load %struct.rbcfg_value*, %struct.rbcfg_value** %7, align 8
  %22 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strcmp(i32 %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load %struct.rbcfg_value*, %struct.rbcfg_value** %7, align 8
  store %struct.rbcfg_value* %28, %struct.rbcfg_value** %3, align 8
  br label %34

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %8

33:                                               ; preds = %8
  store %struct.rbcfg_value* null, %struct.rbcfg_value** %3, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.rbcfg_value*, %struct.rbcfg_value** %3, align 8
  ret %struct.rbcfg_value* %35
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
