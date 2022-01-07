; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_free_option_data.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_free_option_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config_data = type { i32, i32, %struct.TYPE_4__*, %struct.m_group_data* }
%struct.TYPE_4__ = type { %struct.m_config_group* }
%struct.m_config_group = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.m_option* }
%struct.m_option = type { i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.m_group_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_option_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_option_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.m_config_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_group_data*, align 8
  %6 = alloca %struct.m_config_group*, align 8
  %7 = alloca %struct.m_option*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.m_option*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.m_config_data*
  store %struct.m_config_data* %11, %struct.m_config_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %86, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %15 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %89

18:                                               ; preds = %12
  %19 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %20 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %19, i32 0, i32 3
  %21 = load %struct.m_group_data*, %struct.m_group_data** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.m_group_data, %struct.m_group_data* %21, i64 %23
  store %struct.m_group_data* %24, %struct.m_group_data** %5, align 8
  %25 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %26 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.m_config_group*, %struct.m_config_group** %28, align 8
  %30 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %31 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.m_config_group, %struct.m_config_group* %29, i64 %35
  store %struct.m_config_group* %36, %struct.m_config_group** %6, align 8
  %37 = load %struct.m_config_group*, %struct.m_config_group** %6, align 8
  %38 = getelementptr inbounds %struct.m_config_group, %struct.m_config_group* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.m_option*, %struct.m_option** %40, align 8
  store %struct.m_option* %41, %struct.m_option** %7, align 8
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %82, %18
  %43 = load %struct.m_option*, %struct.m_option** %7, align 8
  %44 = icmp ne %struct.m_option* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.m_option*, %struct.m_option** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.m_option, %struct.m_option* %46, i64 %48
  %50 = getelementptr inbounds %struct.m_option, %struct.m_option* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %45, %42
  %54 = phi i1 [ false, %42 ], [ %52, %45 ]
  br i1 %54, label %55, label %85

55:                                               ; preds = %53
  %56 = load %struct.m_option*, %struct.m_option** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.m_option, %struct.m_option* %56, i64 %58
  store %struct.m_option* %59, %struct.m_option** %9, align 8
  %60 = load %struct.m_option*, %struct.m_option** %9, align 8
  %61 = getelementptr inbounds %struct.m_option, %struct.m_option* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %55
  %65 = load %struct.m_option*, %struct.m_option** %9, align 8
  %66 = getelementptr inbounds %struct.m_option, %struct.m_option* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load %struct.m_option*, %struct.m_option** %9, align 8
  %73 = load %struct.m_group_data*, %struct.m_group_data** %5, align 8
  %74 = getelementptr inbounds %struct.m_group_data, %struct.m_group_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.m_option*, %struct.m_option** %9, align 8
  %77 = getelementptr inbounds %struct.m_option, %struct.m_option* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = call i32 @m_option_free(%struct.m_option* %72, i64 %79)
  br label %81

81:                                               ; preds = %71, %64, %55
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %42

85:                                               ; preds = %53
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %12

89:                                               ; preds = %12
  ret void
}

declare dso_local i32 @m_option_free(%struct.m_option*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
