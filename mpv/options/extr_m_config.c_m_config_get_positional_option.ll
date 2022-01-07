; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_get_positional_option.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_get_positional_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32, %struct.m_config_option* }
%struct.m_config_option = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @m_config_get_positional_option(%struct.m_config* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.m_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.m_config_option*, align 8
  store %struct.m_config* %0, %struct.m_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.m_config*, %struct.m_config** %4, align 8
  %12 = getelementptr inbounds %struct.m_config, %struct.m_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load %struct.m_config*, %struct.m_config** %4, align 8
  %17 = getelementptr inbounds %struct.m_config, %struct.m_config* %16, i32 0, i32 1
  %18 = load %struct.m_config_option*, %struct.m_config_option** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %18, i64 %20
  store %struct.m_config_option* %21, %struct.m_config_option** %8, align 8
  %22 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %23 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %32 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  br label %42

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %9

41:                                               ; preds = %9
  store i8* null, i8** %3, align 8
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
