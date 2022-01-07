; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_cmd.c_parse_cycle_dir.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_cmd.c_parse_cycle_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mp_log*, %struct.m_option*, i32, i32, i8*)* }
%struct.mp_log = type { i32 }
%struct.m_option = type { i32 }
%struct.bstr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@m_option_type_double = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.m_option*, i32, i32, i8*)* @parse_cycle_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cycle_dir(%struct.mp_log* %0, %struct.m_option* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.bstr, align 4
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca %struct.m_option*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca double, align 8
  %13 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.mp_log* %0, %struct.mp_log** %9, align 8
  store %struct.m_option* %1, %struct.m_option** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @bstrcmp0(i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store double 1.000000e+00, double* %12, align 8
  br label %37

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @bstrcmp0(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store double -1.000000e+00, double* %12, align 8
  br label %36

26:                                               ; preds = %20
  %27 = load i32 (%struct.mp_log*, %struct.m_option*, i32, i32, i8*)*, i32 (%struct.mp_log*, %struct.m_option*, i32, i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m_option_type_double, i32 0, i32 0), align 8
  %28 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %29 = load %struct.m_option*, %struct.m_option** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %27(%struct.mp_log* %28, %struct.m_option* %29, i32 %32, i32 %34, i8* %30)
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %19
  %38 = load double, double* %12, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = bitcast i8* %39 to double*
  store double %38, double* %40, align 8
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %26
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i64 @bstrcmp0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
