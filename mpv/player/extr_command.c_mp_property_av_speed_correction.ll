; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_av_speed_correction.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_av_speed_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i8* }
%struct.TYPE_2__ = type { double, double }

@M_PROPERTY_PRINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%+.05f%%\00", align 1
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_av_speed_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_av_speed_correction(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %10, align 8
  %15 = load %struct.m_property*, %struct.m_property** %7, align 8
  %16 = getelementptr inbounds %struct.m_property, %struct.m_property* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %30 [
    i32 97, label %22
    i32 118, label %26
  ]

22:                                               ; preds = %4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  store double %25, double* %12, align 8
  br label %32

26:                                               ; preds = %4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  store double %29, double* %12, align 8
  br label %32

30:                                               ; preds = %4
  %31 = call i32 (...) @abort() #3
  unreachable

32:                                               ; preds = %26, %22
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @M_PROPERTY_PRINT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load double, double* %12, align 8
  %38 = fsub double %37, 1.000000e+00
  %39 = fmul double %38, 1.000000e+02
  %40 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %39)
  %41 = load i8*, i8** %9, align 8
  %42 = bitcast i8* %41 to i8**
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load double, double* %12, align 8
  %48 = call i32 @m_property_double_ro(i32 %45, i8* %46, double %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %36
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i8* @talloc_asprintf(i32*, i8*, double) #2

declare dso_local i32 @m_property_double_ro(i32, i8*, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
