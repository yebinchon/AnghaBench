; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_swlib_scan.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_swlib_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i64, i64, i64, i32 }
%struct.attrlist_arg = type { i64*, i32*, i32, i32, %struct.switch_dev* }

@SWLIB_ATTR_GROUP_GLOBAL = common dso_local global i32 0, align 4
@SWITCH_CMD_LIST_GLOBAL = common dso_local global i32 0, align 4
@add_attr = common dso_local global i32 0, align 4
@add_id = common dso_local global i32 0, align 4
@SWLIB_ATTR_GROUP_PORT = common dso_local global i32 0, align 4
@SWITCH_CMD_LIST_PORT = common dso_local global i32 0, align 4
@SWLIB_ATTR_GROUP_VLAN = common dso_local global i32 0, align 4
@SWITCH_CMD_LIST_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swlib_scan(%struct.switch_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.attrlist_arg, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  %5 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %6 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %11 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %16 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9, %1
  store i32 0, i32* %2, align 4
  br label %57

20:                                               ; preds = %14
  %21 = load i32, i32* @SWLIB_ATTR_GROUP_GLOBAL, align 4
  %22 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %4, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %24 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %4, i32 0, i32 4
  store %struct.switch_dev* %23, %struct.switch_dev** %24, align 8
  %25 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %26 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %4, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %4, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %31 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %4, i32 0, i32 0
  store i64* %31, i64** %32, align 8
  %33 = load i32, i32* @SWITCH_CMD_LIST_GLOBAL, align 4
  %34 = load i32, i32* @add_attr, align 4
  %35 = load i32, i32* @add_id, align 4
  %36 = call i32 @swlib_call(i32 %33, i32 %34, i32 %35, %struct.attrlist_arg* %4)
  %37 = load i32, i32* @SWLIB_ATTR_GROUP_PORT, align 4
  %38 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %4, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %4, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %41 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %4, i32 0, i32 0
  store i64* %41, i64** %42, align 8
  %43 = load i32, i32* @SWITCH_CMD_LIST_PORT, align 4
  %44 = load i32, i32* @add_attr, align 4
  %45 = load i32, i32* @add_id, align 4
  %46 = call i32 @swlib_call(i32 %43, i32 %44, i32 %45, %struct.attrlist_arg* %4)
  %47 = load i32, i32* @SWLIB_ATTR_GROUP_VLAN, align 4
  %48 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %4, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %4, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %51 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %4, i32 0, i32 0
  store i64* %51, i64** %52, align 8
  %53 = load i32, i32* @SWITCH_CMD_LIST_VLAN, align 4
  %54 = load i32, i32* @add_attr, align 4
  %55 = load i32, i32* @add_id, align 4
  %56 = call i32 @swlib_call(i32 %53, i32 %54, i32 %55, %struct.attrlist_arg* %4)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %20, %19
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @swlib_call(i32, i32, i32, %struct.attrlist_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
