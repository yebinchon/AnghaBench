; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_is_property_set.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_is_property_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property_action_arg = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @is_property_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_property_set(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.m_property_action_arg*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %19 [
    i32 131, label %8
    i32 128, label %8
    i32 129, label %8
    i32 130, label %8
    i32 132, label %8
    i32 133, label %9
  ]

8:                                                ; preds = %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %20

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.m_property_action_arg*
  store %struct.m_property_action_arg* %11, %struct.m_property_action_arg** %6, align 8
  %12 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %6, align 8
  %13 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %6, align 8
  %16 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @is_property_set(i32 %14, i8* %17)
  store i32 %18, i32* %3, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %9, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
