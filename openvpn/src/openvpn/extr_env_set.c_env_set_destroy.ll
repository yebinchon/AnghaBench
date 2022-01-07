; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_env_set_destroy.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_env_set_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { %struct.env_set*, %struct.env_set*, %struct.env_set*, i32* }
%struct.env_item = type { %struct.env_item*, %struct.env_item*, %struct.env_item*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @env_set_destroy(%struct.env_set* %0) #0 {
  %2 = alloca %struct.env_set*, align 8
  %3 = alloca %struct.env_item*, align 8
  %4 = alloca %struct.env_item*, align 8
  store %struct.env_set* %0, %struct.env_set** %2, align 8
  %5 = load %struct.env_set*, %struct.env_set** %2, align 8
  %6 = icmp ne %struct.env_set* %5, null
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load %struct.env_set*, %struct.env_set** %2, align 8
  %9 = getelementptr inbounds %struct.env_set, %struct.env_set* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = load %struct.env_set*, %struct.env_set** %2, align 8
  %14 = getelementptr inbounds %struct.env_set, %struct.env_set* %13, i32 0, i32 2
  %15 = load %struct.env_set*, %struct.env_set** %14, align 8
  %16 = bitcast %struct.env_set* %15 to %struct.env_item*
  store %struct.env_item* %16, %struct.env_item** %3, align 8
  br label %17

17:                                               ; preds = %20, %12
  %18 = load %struct.env_item*, %struct.env_item** %3, align 8
  %19 = icmp ne %struct.env_item* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.env_item*, %struct.env_item** %3, align 8
  %22 = getelementptr inbounds %struct.env_item, %struct.env_item* %21, i32 0, i32 1
  %23 = load %struct.env_item*, %struct.env_item** %22, align 8
  store %struct.env_item* %23, %struct.env_item** %4, align 8
  %24 = load %struct.env_item*, %struct.env_item** %3, align 8
  %25 = getelementptr inbounds %struct.env_item, %struct.env_item* %24, i32 0, i32 0
  %26 = load %struct.env_item*, %struct.env_item** %25, align 8
  %27 = bitcast %struct.env_item* %26 to %struct.env_set*
  %28 = call i32 @free(%struct.env_set* %27)
  %29 = load %struct.env_item*, %struct.env_item** %3, align 8
  %30 = bitcast %struct.env_item* %29 to %struct.env_set*
  %31 = call i32 @free(%struct.env_set* %30)
  %32 = load %struct.env_item*, %struct.env_item** %4, align 8
  store %struct.env_item* %32, %struct.env_item** %3, align 8
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.env_set*, %struct.env_set** %2, align 8
  %35 = call i32 @free(%struct.env_set* %34)
  br label %36

36:                                               ; preds = %33, %7, %1
  ret void
}

declare dso_local i32 @free(%struct.env_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
