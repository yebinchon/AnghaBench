; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_double_get.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_double_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.mpv_node = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { double, i32 }

@M_OPT_DEFAULT_NAN = common dso_local global i32 0, align 4
@MPV_FORMAT_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@MPV_FORMAT_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, %struct.mpv_node*, i8*)* @double_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @double_get(%struct.TYPE_5__* %0, i8* %1, %struct.mpv_node* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpv_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mpv_node* %2, %struct.mpv_node** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to double*
  %12 = load double, double* %11, align 8
  store double %12, double* %9, align 8
  %13 = load double, double* %9, align 8
  %14 = call i64 @isnan(double %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @M_OPT_DEFAULT_NAN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load i32, i32* @MPV_FORMAT_STRING, align 4
  %25 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %26 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @talloc_strdup(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %30 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  br label %40

32:                                               ; preds = %16, %4
  %33 = load i32, i32* @MPV_FORMAT_DOUBLE, align 4
  %34 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %35 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load double, double* %9, align 8
  %37 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %38 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store double %36, double* %39, align 8
  br label %40

40:                                               ; preds = %32, %23
  ret i32 1
}

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @talloc_strdup(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
