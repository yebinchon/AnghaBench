; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_main.c_timestamp.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_main.c_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @timestamp() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = call i64 @gettimeofday(%struct.timeval* %2, i32* null)
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %14

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = mul nsw i64 %8, 1000
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sdiv i64 %11, 1000
  %13 = add nsw i64 %9, %12
  store i64 %13, i64* %1, align 8
  br label %14

14:                                               ; preds = %6, %5
  %15 = load i64, i64* %1, align 8
  ret i64 %15
}

declare dso_local i64 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
