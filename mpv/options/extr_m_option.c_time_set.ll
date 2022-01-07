; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_time_set.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_time_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MPV_FORMAT_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.mpv_node*)* @time_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_set(i32* %0, i8* %1, %struct.mpv_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpv_node*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mpv_node* %2, %struct.mpv_node** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @HAS_NOPTS(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %13 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %19 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load double, double* @MP_NOPTS_VALUE, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to double*
  store double %25, double* %27, align 8
  store i32 1, i32* %4, align 4
  br label %34

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %11, %3
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %33 = call i32 @double_set(i32* %30, i8* %31, %struct.mpv_node* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @HAS_NOPTS(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @double_set(i32*, i8*, %struct.mpv_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
