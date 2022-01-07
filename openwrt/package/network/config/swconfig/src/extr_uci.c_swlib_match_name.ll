; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_uci.c_swlib_match_name.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_uci.c_swlib_match_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i8*)* @swlib_match_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swlib_match_name(%struct.switch_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca i8*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %7 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @strcmp(i8* %5, i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %14 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @strcmp(i8* %12, i32 %15)
  %17 = icmp eq i64 %16, 0
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i1 [ true, %2 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
