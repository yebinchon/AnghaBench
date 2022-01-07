; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_sub_text.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_sub_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_2__ = type { double, %struct.track*** }
%struct.track = type { %struct.dec_sub* }
%struct.dec_sub = type { i32 }

@STREAM_SUB = common dso_local global i64 0, align 8
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_sub_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_sub_text(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.track*, align 8
  %12 = alloca %struct.dec_sub*, align 8
  %13 = alloca double, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %10, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.track***, %struct.track**** %18, align 8
  %20 = getelementptr inbounds %struct.track**, %struct.track*** %19, i64 0
  %21 = load %struct.track**, %struct.track*** %20, align 8
  %22 = load i64, i64* @STREAM_SUB, align 8
  %23 = getelementptr inbounds %struct.track*, %struct.track** %21, i64 %22
  %24 = load %struct.track*, %struct.track** %23, align 8
  store %struct.track* %24, %struct.track** %11, align 8
  %25 = load %struct.track*, %struct.track** %11, align 8
  %26 = icmp ne %struct.track* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.track*, %struct.track** %11, align 8
  %29 = getelementptr inbounds %struct.track, %struct.track* %28, i32 0, i32 0
  %30 = load %struct.dec_sub*, %struct.dec_sub** %29, align 8
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi %struct.dec_sub* [ %30, %27 ], [ null, %31 ]
  store %struct.dec_sub* %33, %struct.dec_sub** %12, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  store double %36, double* %13, align 8
  %37 = load %struct.dec_sub*, %struct.dec_sub** %12, align 8
  %38 = icmp ne %struct.dec_sub* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load double, double* %13, align 8
  %41 = load double, double* @MP_NOPTS_VALUE, align 8
  %42 = fcmp oeq double %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %32
  %44 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %44, i32* %5, align 4
  br label %57

45:                                               ; preds = %39
  %46 = load %struct.dec_sub*, %struct.dec_sub** %12, align 8
  %47 = load double, double* %13, align 8
  %48 = call i8* @sub_get_text(%struct.dec_sub* %46, double %47)
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %52

52:                                               ; preds = %51, %45
  %53 = load i32, i32* %8, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = call i32 @m_property_strdup_ro(i32 %53, i8* %54, i8* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %43
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i8* @sub_get_text(%struct.dec_sub*, double) #1

declare dso_local i32 @m_property_strdup_ro(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
