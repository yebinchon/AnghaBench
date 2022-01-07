; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_null.c_drain.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_null.c_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { double, i64, %struct.priv* }
%struct.priv = type { i64, double, double, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"buffer underrun\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca double, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 2
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.ao*, %struct.ao** %2, align 8
  %9 = getelementptr inbounds %struct.ao, %struct.ao* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %67

21:                                               ; preds = %15
  %22 = call double (...) @mp_time_sec()
  store double %22, double* %4, align 8
  %23 = load %struct.priv*, %struct.priv** %3, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = load double, double* %4, align 8
  %29 = load %struct.priv*, %struct.priv** %3, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 1
  %31 = load double, double* %30, align 8
  %32 = fsub double %28, %31
  %33 = load %struct.ao*, %struct.ao** %2, align 8
  %34 = getelementptr inbounds %struct.ao, %struct.ao* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = fmul double %32, %35
  %37 = load %struct.priv*, %struct.priv** %3, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 2
  %39 = load double, double* %38, align 8
  %40 = fmul double %36, %39
  %41 = load %struct.priv*, %struct.priv** %3, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to double
  %45 = fsub double %44, %40
  %46 = fptosi double %45 to i64
  store i64 %46, i64* %42, align 8
  %47 = load %struct.priv*, %struct.priv** %3, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %27
  %52 = load %struct.priv*, %struct.priv** %3, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct.ao*, %struct.ao** %2, align 8
  %58 = call i32 @MP_ERR(%struct.ao* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.priv*, %struct.priv** %3, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %27
  br label %63

63:                                               ; preds = %62, %21
  %64 = load double, double* %4, align 8
  %65 = load %struct.priv*, %struct.priv** %3, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 1
  store double %64, double* %66, align 8
  br label %67

67:                                               ; preds = %63, %20, %12
  ret void
}

declare dso_local double @mp_time_sec(...) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
