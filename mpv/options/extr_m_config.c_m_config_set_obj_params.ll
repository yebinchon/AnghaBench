; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_set_obj_params.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_set_obj_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32 }
%struct.mp_log = type { i32 }
%struct.mpv_global = type { i32 }
%struct.m_obj_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_config*, %struct.mp_log*, %struct.mpv_global*, %struct.m_obj_desc*, i8**)* @m_config_set_obj_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_config_set_obj_params(%struct.m_config* %0, %struct.mp_log* %1, %struct.mpv_global* %2, %struct.m_obj_desc* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.m_config*, align 8
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca %struct.mpv_global*, align 8
  %10 = alloca %struct.m_obj_desc*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.m_config* %0, %struct.m_config** %7, align 8
  store %struct.mp_log* %1, %struct.mp_log** %8, align 8
  store %struct.mpv_global* %2, %struct.mpv_global** %9, align 8
  store %struct.m_obj_desc* %3, %struct.m_obj_desc** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %53, %5
  %16 = load i8**, i8*** %11, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i8**, i8*** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = mul nsw i32 %20, 2
  %22 = add nsw i32 %21, 0
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %19, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br label %27

27:                                               ; preds = %18, %15
  %28 = phi i1 [ false, %15 ], [ %26, %18 ]
  br i1 %28, label %29, label %56

29:                                               ; preds = %27
  %30 = load i8**, i8*** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %32, 0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %30, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @bstr0(i8* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i8**, i8*** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %38, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @bstr0(i8* %44)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.m_config*, %struct.m_config** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i64 @m_config_set_option_cli(%struct.m_config* %46, i32 %47, i32 %48, i32 0)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %57

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %15

56:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i64 @m_config_set_option_cli(%struct.m_config*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
