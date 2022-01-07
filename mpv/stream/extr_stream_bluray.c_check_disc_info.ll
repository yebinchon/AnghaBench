; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_check_disc_info.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_check_disc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.bluray_priv_s* }
%struct.bluray_priv_s = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Given stream is not a Blu-ray.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"AACS encryption detected but cannot find libaacs.\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"AACS error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"BD+ encryption detected but cannot find libbdplus.\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Cannot decrypt BD+ encryption.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @check_disc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_disc_info(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.bluray_priv_s*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %7, align 8
  store %struct.bluray_priv_s* %8, %struct.bluray_priv_s** %4, align 8
  %9 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %4, align 8
  %10 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_7__* @bd_get_disc_info(i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = call i32 (%struct.TYPE_6__*, i8*, ...) @MP_ERR(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

20:                                               ; preds = %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = call i32 (%struct.TYPE_6__*, i8*, ...) @MP_ERR(%struct.TYPE_6__* %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

33:                                               ; preds = %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @aacs_strerr(i32 %42)
  %44 = call i32 (%struct.TYPE_6__*, i8*, ...) @MP_ERR(%struct.TYPE_6__* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 0, i32* %2, align 4
  br label %69

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = call i32 (%struct.TYPE_6__*, i8*, ...) @MP_ERR(%struct.TYPE_6__* %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

59:                                               ; preds = %51
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = call i32 (%struct.TYPE_6__*, i8*, ...) @MP_ERR(%struct.TYPE_6__* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %46
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %64, %56, %38, %30, %17
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_7__* @bd_get_disc_info(i32) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @aacs_strerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
