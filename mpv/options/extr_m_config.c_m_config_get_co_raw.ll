; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_get_co_raw.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_get_co_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config_option = type { i32 }
%struct.m_config = type { i32, %struct.m_config_option* }
%struct.bstr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_config_option* @m_config_get_co_raw(%struct.m_config* %0, i32 %1) #0 {
  %3 = alloca %struct.m_config_option*, align 8
  %4 = alloca %struct.bstr, align 4
  %5 = alloca %struct.m_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.m_config_option*, align 8
  %8 = alloca %struct.bstr, align 4
  %9 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.m_config* %0, %struct.m_config** %5, align 8
  %10 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.m_config_option* null, %struct.m_config_option** %3, align 8
  br label %46

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.m_config*, %struct.m_config** %5, align 8
  %18 = getelementptr inbounds %struct.m_config, %struct.m_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %15
  %22 = load %struct.m_config*, %struct.m_config** %5, align 8
  %23 = getelementptr inbounds %struct.m_config, %struct.m_config* %22, i32 0, i32 1
  %24 = load %struct.m_config_option*, %struct.m_config_option** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %24, i64 %26
  store %struct.m_config_option* %27, %struct.m_config_option** %7, align 8
  %28 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %29 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bstr0(i32 %30)
  %32 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @bstrcmp(i32 %34, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  store %struct.m_config_option* %40, %struct.m_config_option** %3, align 8
  br label %46

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %15

45:                                               ; preds = %15
  store %struct.m_config_option* null, %struct.m_config_option** %3, align 8
  br label %46

46:                                               ; preds = %45, %39, %13
  %47 = load %struct.m_config_option*, %struct.m_config_option** %3, align 8
  ret %struct.m_config_option* %47
}

declare dso_local i32 @bstr0(i32) #1

declare dso_local i64 @bstrcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
