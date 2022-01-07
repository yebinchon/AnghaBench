; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_opensles.c_buffer_callback.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_opensles.c_buffer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.TYPE_4__**, i32, i32)* }
%struct.ao = type { i64, %struct.priv* }
%struct.priv = type { double, i32, i32, i32, i64 }

@SL_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Failed to Enqueue: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**, i8*)* @buffer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_callback(%struct.TYPE_4__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ao*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ao*
  store %struct.ao* %10, %struct.ao** %5, align 8
  %11 = load %struct.ao*, %struct.ao** %5, align 8
  %12 = getelementptr inbounds %struct.ao, %struct.ao* %11, i32 0, i32 1
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %6, align 8
  %14 = load %struct.priv*, %struct.priv** %6, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 1
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  %17 = load %struct.priv*, %struct.priv** %6, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = load %struct.ao*, %struct.ao** %5, align 8
  %21 = getelementptr inbounds %struct.ao, %struct.ao* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sitofp i64 %22 to double
  %24 = fdiv double %19, %23
  store double %24, double* %8, align 8
  %25 = load %struct.priv*, %struct.priv** %6, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to double
  %29 = load double, double* %8, align 8
  %30 = fadd double %29, %28
  store double %30, double* %8, align 8
  %31 = load %struct.ao*, %struct.ao** %5, align 8
  %32 = load %struct.priv*, %struct.priv** %6, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 3
  %34 = load %struct.priv*, %struct.priv** %6, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = call i64 (...) @mp_time_us()
  %38 = sitofp i64 %37 to double
  %39 = load double, double* %8, align 8
  %40 = fmul double 1.000000e+06, %39
  %41 = fadd double %38, %40
  %42 = fptosi double %41 to i64
  %43 = call i32 @ao_read_data(%struct.ao* %31, i32* %33, double %36, i64 %42)
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64 (%struct.TYPE_4__**, i32, i32)*, i64 (%struct.TYPE_4__**, i32, i32)** %46, align 8
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %49 = load %struct.priv*, %struct.priv** %6, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.priv*, %struct.priv** %6, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 %47(%struct.TYPE_4__** %48, i32 %51, i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %2
  %60 = load %struct.ao*, %struct.ao** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @MP_ERR(%struct.ao* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %59, %2
  %64 = load %struct.priv*, %struct.priv** %6, align 8
  %65 = getelementptr inbounds %struct.priv, %struct.priv* %64, i32 0, i32 1
  %66 = call i32 @pthread_mutex_unlock(i32* %65)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @ao_read_data(%struct.ao*, i32*, double, i64) #1

declare dso_local i64 @mp_time_us(...) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
