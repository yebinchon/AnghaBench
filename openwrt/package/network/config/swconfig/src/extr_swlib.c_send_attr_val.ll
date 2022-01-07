; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_send_attr_val.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_send_attr_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.switch_val = type { %struct.TYPE_2__, %struct.switch_attr* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.switch_attr = type { i32 }

@SWITCH_ATTR_OP_VALUE_INT = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_VALUE_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, i8*)* @send_attr_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_attr_val(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.switch_val*, align 8
  %7 = alloca %struct.switch_attr*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.switch_val*
  store %struct.switch_val* %9, %struct.switch_val** %6, align 8
  %10 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %11 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %10, i32 0, i32 1
  %12 = load %struct.switch_attr*, %struct.switch_attr** %11, align 8
  store %struct.switch_attr* %12, %struct.switch_attr** %7, align 8
  %13 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @send_attr(%struct.nl_msg* %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %62

18:                                               ; preds = %2
  %19 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %20 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %60 [
    i32 130, label %22
    i32 132, label %23
    i32 128, label %31
    i32 129, label %46
    i32 131, label %53
  ]

22:                                               ; preds = %18
  br label %61

23:                                               ; preds = %18
  %24 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %25 = load i32, i32* @SWITCH_ATTR_OP_VALUE_INT, align 4
  %26 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %27 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NLA_PUT_U32(%struct.nl_msg* %24, i32 %25, i32 %29)
  br label %61

31:                                               ; preds = %18
  %32 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %33 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %62

38:                                               ; preds = %31
  %39 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %40 = load i32, i32* @SWITCH_ATTR_OP_VALUE_STR, align 4
  %41 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %42 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @NLA_PUT_STRING(%struct.nl_msg* %39, i32 %40, i32 %44)
  br label %61

46:                                               ; preds = %18
  %47 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %48 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %49 = call i32 @send_attr_ports(%struct.nl_msg* %47, %struct.switch_val* %48)
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %62

52:                                               ; preds = %46
  br label %61

53:                                               ; preds = %18
  %54 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %55 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %56 = call i32 @send_attr_link(%struct.nl_msg* %54, %struct.switch_val* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %62

59:                                               ; preds = %53
  br label %61

60:                                               ; preds = %18
  br label %62

61:                                               ; preds = %59, %52, %38, %23, %22
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %60, %58, %51, %37, %17
  store i32 -1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @send_attr(%struct.nl_msg*, i8*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.nl_msg*, i32, i32) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.nl_msg*, i32, i32) #1

declare dso_local i32 @send_attr_ports(%struct.nl_msg*, %struct.switch_val*) #1

declare dso_local i32 @send_attr_link(%struct.nl_msg*, %struct.switch_val*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
