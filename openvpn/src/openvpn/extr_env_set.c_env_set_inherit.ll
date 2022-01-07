; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_env_set_inherit.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_env_set_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { %struct.env_item* }
%struct.env_item = type { %struct.env_item*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @env_set_inherit(%struct.env_set* %0, %struct.env_set* %1) #0 {
  %3 = alloca %struct.env_set*, align 8
  %4 = alloca %struct.env_set*, align 8
  %5 = alloca %struct.env_item*, align 8
  store %struct.env_set* %0, %struct.env_set** %3, align 8
  store %struct.env_set* %1, %struct.env_set** %4, align 8
  %6 = load %struct.env_set*, %struct.env_set** %3, align 8
  %7 = call i32 @ASSERT(%struct.env_set* %6)
  %8 = load %struct.env_set*, %struct.env_set** %4, align 8
  %9 = icmp ne %struct.env_set* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.env_set*, %struct.env_set** %4, align 8
  %12 = getelementptr inbounds %struct.env_set, %struct.env_set* %11, i32 0, i32 0
  %13 = load %struct.env_item*, %struct.env_item** %12, align 8
  store %struct.env_item* %13, %struct.env_item** %5, align 8
  br label %14

14:                                               ; preds = %17, %10
  %15 = load %struct.env_item*, %struct.env_item** %5, align 8
  %16 = icmp ne %struct.env_item* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.env_set*, %struct.env_set** %3, align 8
  %19 = load %struct.env_item*, %struct.env_item** %5, align 8
  %20 = getelementptr inbounds %struct.env_item, %struct.env_item* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @env_set_add_nolock(%struct.env_set* %18, i32 %21)
  %23 = load %struct.env_item*, %struct.env_item** %5, align 8
  %24 = getelementptr inbounds %struct.env_item, %struct.env_item* %23, i32 0, i32 0
  %25 = load %struct.env_item*, %struct.env_item** %24, align 8
  store %struct.env_item* %25, %struct.env_item** %5, align 8
  br label %14

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @ASSERT(%struct.env_set*) #1

declare dso_local i32 @env_set_add_nolock(%struct.env_set*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
