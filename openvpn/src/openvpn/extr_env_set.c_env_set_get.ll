; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_env_set_get.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_env_set_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { %struct.env_item* }
%struct.env_item = type { i8*, %struct.env_item* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @env_set_get(%struct.env_set* %0, i8* %1) #0 {
  %3 = alloca %struct.env_set*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.env_item*, align 8
  store %struct.env_set* %0, %struct.env_set** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.env_set*, %struct.env_set** %3, align 8
  %7 = getelementptr inbounds %struct.env_set, %struct.env_set* %6, i32 0, i32 0
  %8 = load %struct.env_item*, %struct.env_item** %7, align 8
  store %struct.env_item* %8, %struct.env_item** %5, align 8
  br label %9

9:                                                ; preds = %22, %2
  %10 = load %struct.env_item*, %struct.env_item** %5, align 8
  %11 = icmp ne %struct.env_item* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.env_item*, %struct.env_item** %5, align 8
  %14 = getelementptr inbounds %struct.env_item, %struct.env_item* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @env_string_equal(i8* %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %12, %9
  %21 = phi i1 [ false, %9 ], [ %19, %12 ]
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = load %struct.env_item*, %struct.env_item** %5, align 8
  %24 = getelementptr inbounds %struct.env_item, %struct.env_item* %23, i32 0, i32 1
  %25 = load %struct.env_item*, %struct.env_item** %24, align 8
  store %struct.env_item* %25, %struct.env_item** %5, align 8
  br label %9

26:                                               ; preds = %20
  %27 = load %struct.env_item*, %struct.env_item** %5, align 8
  %28 = icmp ne %struct.env_item* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.env_item*, %struct.env_item** %5, align 8
  %31 = getelementptr inbounds %struct.env_item, %struct.env_item* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i8* [ %32, %29 ], [ null, %33 ]
  ret i8* %35
}

declare dso_local i32 @env_string_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
