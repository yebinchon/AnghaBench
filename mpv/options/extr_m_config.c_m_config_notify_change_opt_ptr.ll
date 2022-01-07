; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_notify_change_opt_ptr.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_notify_change_opt_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32, %struct.m_config_option* }
%struct.m_config_option = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_config_notify_change_opt_ptr(%struct.m_config* %0, i8* %1) #0 {
  %3 = alloca %struct.m_config*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_config_option*, align 8
  store %struct.m_config* %0, %struct.m_config** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.m_config*, %struct.m_config** %3, align 8
  %10 = getelementptr inbounds %struct.m_config, %struct.m_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.m_config*, %struct.m_config** %3, align 8
  %15 = getelementptr inbounds %struct.m_config, %struct.m_config* %14, i32 0, i32 1
  %16 = load %struct.m_config_option*, %struct.m_config_option** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %16, i64 %18
  store %struct.m_config_option* %19, %struct.m_config_option** %6, align 8
  %20 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %21 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load %struct.m_config*, %struct.m_config** %3, align 8
  %27 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %28 = call i32 @m_config_notify_change_co(%struct.m_config* %26, %struct.m_config_option* %27)
  br label %35

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %7

33:                                               ; preds = %7
  %34 = call i32 @assert(i32 0)
  br label %35

35:                                               ; preds = %33, %25
  ret void
}

declare dso_local i32 @m_config_notify_change_co(%struct.m_config*, %struct.m_config_option*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
