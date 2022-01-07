; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_from_obj_desc_and_args.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_from_obj_desc_and_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32 }
%struct.mp_log = type { i32 }
%struct.mpv_global = type { i32 }
%struct.m_obj_desc = type { i32 }
%struct.m_obj_settings = type { i8**, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_config* @m_config_from_obj_desc_and_args(i8* %0, %struct.mp_log* %1, %struct.mpv_global* %2, %struct.m_obj_desc* %3, i8* %4, %struct.m_obj_settings* %5, i8** %6) #0 {
  %8 = alloca %struct.m_config*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mp_log*, align 8
  %11 = alloca %struct.mpv_global*, align 8
  %12 = alloca %struct.m_obj_desc*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.m_obj_settings*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.m_config*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.m_obj_settings*, align 8
  store i8* %0, i8** %9, align 8
  store %struct.mp_log* %1, %struct.mp_log** %10, align 8
  store %struct.mpv_global* %2, %struct.mpv_global** %11, align 8
  store %struct.m_obj_desc* %3, %struct.m_obj_desc** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.m_obj_settings* %5, %struct.m_obj_settings** %14, align 8
  store i8** %6, i8*** %15, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.mp_log*, %struct.mp_log** %10, align 8
  %21 = load %struct.mpv_global*, %struct.mpv_global** %11, align 8
  %22 = load %struct.m_obj_desc*, %struct.m_obj_desc** %12, align 8
  %23 = call %struct.m_config* @m_config_from_obj_desc(i8* %19, %struct.mp_log* %20, %struct.mpv_global* %21, %struct.m_obj_desc* %22)
  store %struct.m_config* %23, %struct.m_config** %16, align 8
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %64, %7
  %25 = load %struct.m_obj_settings*, %struct.m_obj_settings** %14, align 8
  %26 = icmp ne %struct.m_obj_settings* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.m_obj_settings*, %struct.m_obj_settings** %14, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %28, i64 %30
  %32 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %27, %24
  %36 = phi i1 [ false, %24 ], [ %34, %27 ]
  br i1 %36, label %37, label %67

37:                                               ; preds = %35
  %38 = load %struct.m_obj_settings*, %struct.m_obj_settings** %14, align 8
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %38, i64 %40
  store %struct.m_obj_settings* %41, %struct.m_obj_settings** %18, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load %struct.m_obj_settings*, %struct.m_obj_settings** %18, align 8
  %46 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = call i64 @strcmp(i64 %47, i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.m_config*, %struct.m_config** %16, align 8
  %53 = load %struct.mp_log*, %struct.mp_log** %10, align 8
  %54 = load %struct.mpv_global*, %struct.mpv_global** %11, align 8
  %55 = load %struct.m_obj_desc*, %struct.m_obj_desc** %12, align 8
  %56 = load %struct.m_obj_settings*, %struct.m_obj_settings** %18, align 8
  %57 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = call i64 @m_config_set_obj_params(%struct.m_config* %52, %struct.mp_log* %53, %struct.mpv_global* %54, %struct.m_obj_desc* %55, i8** %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %78

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %44, %37
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  br label %24

67:                                               ; preds = %35
  %68 = load %struct.m_config*, %struct.m_config** %16, align 8
  %69 = load %struct.mp_log*, %struct.mp_log** %10, align 8
  %70 = load %struct.mpv_global*, %struct.mpv_global** %11, align 8
  %71 = load %struct.m_obj_desc*, %struct.m_obj_desc** %12, align 8
  %72 = load i8**, i8*** %15, align 8
  %73 = call i64 @m_config_set_obj_params(%struct.m_config* %68, %struct.mp_log* %69, %struct.mpv_global* %70, %struct.m_obj_desc* %71, i8** %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %78

76:                                               ; preds = %67
  %77 = load %struct.m_config*, %struct.m_config** %16, align 8
  store %struct.m_config* %77, %struct.m_config** %8, align 8
  br label %81

78:                                               ; preds = %75, %61
  %79 = load %struct.m_config*, %struct.m_config** %16, align 8
  %80 = call i32 @talloc_free(%struct.m_config* %79)
  store %struct.m_config* null, %struct.m_config** %8, align 8
  br label %81

81:                                               ; preds = %78, %76
  %82 = load %struct.m_config*, %struct.m_config** %8, align 8
  ret %struct.m_config* %82
}

declare dso_local %struct.m_config* @m_config_from_obj_desc(i8*, %struct.mp_log*, %struct.mpv_global*, %struct.m_obj_desc*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i64 @m_config_set_obj_params(%struct.m_config*, %struct.mp_log*, %struct.mpv_global*, %struct.m_obj_desc*, i8**) #1

declare dso_local i32 @talloc_free(%struct.m_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
