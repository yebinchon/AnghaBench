; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_add_id.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_add_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.attrlist_arg = type { i32 }

@SWITCH_ATTR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, i8*)* @add_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_id(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.attrlist_arg*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.attrlist_arg*
  store %struct.attrlist_arg* %8, %struct.attrlist_arg** %6, align 8
  %9 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %10 = load i32, i32* @SWITCH_ATTR_ID, align 4
  %11 = load %struct.attrlist_arg*, %struct.attrlist_arg** %6, align 8
  %12 = getelementptr inbounds %struct.attrlist_arg, %struct.attrlist_arg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @NLA_PUT_U32(%struct.nl_msg* %9, i32 %10, i32 %13)
  store i32 0, i32* %3, align 4
  br label %16

15:                                               ; No predecessors!
  store i32 -1, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @NLA_PUT_U32(%struct.nl_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
