; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_oss.c_play.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_oss.c_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i64, %struct.priv* }
%struct.priv = type { i64, i32, double, i32 }

@.str = private unnamed_addr constant [58 x i8] c"Fatal error: *** CANNOT RE-OPEN / RESET AUDIO DEVICE ***\0A\00", align 1
@AOPLAY_FINAL_CHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i8**, i32, i32)* @play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @play(%struct.ao* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ao*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store %struct.ao* %0, %struct.ao** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ao*, %struct.ao** %6, align 8
  %14 = getelementptr inbounds %struct.ao, %struct.ao* %13, i32 0, i32 2
  %15 = load %struct.priv*, %struct.priv** %14, align 8
  store %struct.priv* %15, %struct.priv** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.ao*, %struct.ao** %6, align 8
  %18 = getelementptr inbounds %struct.ao, %struct.ao* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %109

25:                                               ; preds = %4
  %26 = load %struct.priv*, %struct.priv** %10, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.priv*, %struct.priv** %10, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.ao*, %struct.ao** %6, align 8
  %37 = call i64 @reopen_device(%struct.ao* %36, i32 0)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.ao*, %struct.ao** %6, align 8
  %41 = call i32 @MP_ERR(%struct.ao* %40, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %35, %30, %25
  %43 = load %struct.priv*, %struct.priv** %10, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = load %struct.priv*, %struct.priv** %10, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 1
  store i32 1, i32* %49, align 8
  %50 = call double (...) @mp_time_sec()
  store double %50, double* %12, align 8
  %51 = load %struct.priv*, %struct.priv** %10, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 2
  %53 = load double, double* %52, align 8
  %54 = load double, double* %12, align 8
  %55 = fcmp olt double %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load double, double* %12, align 8
  %58 = load %struct.priv*, %struct.priv** %10, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 2
  store double %57, double* %59, align 8
  br label %60

60:                                               ; preds = %56, %47
  %61 = load i32, i32* %8, align 4
  %62 = sitofp i32 %61 to double
  %63 = load %struct.ao*, %struct.ao** %6, align 8
  %64 = getelementptr inbounds %struct.ao, %struct.ao* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to double
  %67 = fdiv double %62, %66
  %68 = load %struct.priv*, %struct.priv** %10, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 2
  %70 = load double, double* %69, align 8
  %71 = fadd double %70, %67
  store double %71, double* %69, align 8
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %5, align 4
  br label %109

73:                                               ; preds = %42
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.priv*, %struct.priv** %10, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %79, %73
  %85 = load %struct.priv*, %struct.priv** %10, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sdiv i32 %88, %87
  store i32 %89, i32* %11, align 4
  %90 = load %struct.priv*, %struct.priv** %10, align 8
  %91 = getelementptr inbounds %struct.priv, %struct.priv* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %84, %79
  %96 = load %struct.priv*, %struct.priv** %10, align 8
  %97 = getelementptr inbounds %struct.priv, %struct.priv* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i8**, i8*** %7, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @write(i64 %98, i8* %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.ao*, %struct.ao** %6, align 8
  %106 = getelementptr inbounds %struct.ao, %struct.ao* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sdiv i32 %104, %107
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %95, %60, %23
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i64 @reopen_device(%struct.ao*, i32) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*) #1

declare dso_local double @mp_time_sec(...) #1

declare dso_local i32 @write(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
