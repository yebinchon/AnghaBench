; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_jack.c_process.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_jack.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64, %struct.priv* }
%struct.priv = type { i32, i32, i32, i32* }

@MP_NUM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, i8*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process(double %0, i8* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ao*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ao*
  store %struct.ao* %13, %struct.ao** %5, align 8
  %14 = load %struct.ao*, %struct.ao** %5, align 8
  %15 = getelementptr inbounds %struct.ao, %struct.ao* %14, i32 0, i32 1
  %16 = load %struct.priv*, %struct.priv** %15, align 8
  store %struct.priv* %16, %struct.priv** %6, align 8
  %17 = load i32, i32* @MP_NUM_CHANNELS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8*, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %40, %2
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.priv*, %struct.priv** %6, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.priv*, %struct.priv** %6, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load double, double* %3, align 8
  %36 = call i8* @jack_port_get_buffer(i32 %34, double %35)
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %20, i64 %38
  store i8* %36, i8** %39, align 8
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %21

43:                                               ; preds = %21
  %44 = load %struct.priv*, %struct.priv** %6, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 2
  %46 = call double @atomic_load(i32* %45)
  %47 = load %struct.priv*, %struct.priv** %6, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 1
  %49 = call double @atomic_load(i32* %48)
  %50 = fadd double %46, %49
  store double %50, double* %10, align 8
  %51 = call double (...) @mp_time_us()
  store double %51, double* %11, align 8
  %52 = load double, double* %10, align 8
  %53 = load double, double* %3, align 8
  %54 = fadd double %52, %53
  %55 = load %struct.ao*, %struct.ao** %5, align 8
  %56 = getelementptr inbounds %struct.ao, %struct.ao* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sitofp i64 %57 to double
  %59 = fdiv double %54, %58
  %60 = fmul double %59, 1.000000e+06
  %61 = load double, double* %11, align 8
  %62 = fadd double %61, %60
  store double %62, double* %11, align 8
  %63 = load %struct.ao*, %struct.ao** %5, align 8
  %64 = load double, double* %3, align 8
  %65 = load double, double* %11, align 8
  %66 = call i32 @ao_read_data(%struct.ao* %63, i8** %20, double %64, double %65)
  %67 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @jack_port_get_buffer(i32, double) #2

declare dso_local double @atomic_load(i32*) #2

declare dso_local double @mp_time_us(...) #2

declare dso_local i32 @ao_read_data(%struct.ao*, i8**, double, double) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
