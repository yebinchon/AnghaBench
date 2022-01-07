; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_property.c_m_property_unkey.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_property.c_m_property_unkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property_action_arg = type { i32, i8*, i32* }

@M_PROPERTY_KEY_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**)* @m_property_unkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_property_unkey(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.m_property_action_arg*, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @M_PROPERTY_KEY_ACTION, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.m_property_action_arg*
  store %struct.m_property_action_arg* %13, %struct.m_property_action_arg** %5, align 8
  %14 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %5, align 8
  %15 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %10
  %21 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %5, align 8
  %22 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %3, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %5, align 8
  %26 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i8**, i8*** %4, align 8
  store i8* %27, i8** %28, align 8
  br label %29

29:                                               ; preds = %20, %10
  br label %30

30:                                               ; preds = %29, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
