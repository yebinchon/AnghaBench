; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/ses/extr_ses.c_set_alpha.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/ses/extr_ses.c_set_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grouping_ses = type { double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.grouping_ses*)* @set_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_alpha(i32* %0, %struct.grouping_ses* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.grouping_ses*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.grouping_ses* %1, %struct.grouping_ses** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.grouping_ses*, %struct.grouping_ses** %4, align 8
  %7 = call double @window(i32* %5, %struct.grouping_ses* %6)
  %8 = fadd double %7, 1.000000e+00
  %9 = fdiv double 2.000000e+00, %8
  %10 = load %struct.grouping_ses*, %struct.grouping_ses** %4, align 8
  %11 = getelementptr inbounds %struct.grouping_ses, %struct.grouping_ses* %10, i32 0, i32 0
  store double %9, double* %11, align 8
  %12 = load %struct.grouping_ses*, %struct.grouping_ses** %4, align 8
  %13 = getelementptr inbounds %struct.grouping_ses, %struct.grouping_ses* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fsub double 1.000000e+00, %14
  %16 = load %struct.grouping_ses*, %struct.grouping_ses** %4, align 8
  %17 = getelementptr inbounds %struct.grouping_ses, %struct.grouping_ses* %16, i32 0, i32 1
  store double %15, double* %17, align 8
  ret void
}

declare dso_local double @window(i32*, %struct.grouping_ses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
