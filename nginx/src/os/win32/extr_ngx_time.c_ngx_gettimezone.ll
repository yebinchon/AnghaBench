; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_time.c_ngx_gettimezone.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_time.c_ngx_gettimezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_gettimezone() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = call i32 @GetTimeZoneInformation(%struct.TYPE_3__* %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %24 [
    i32 128, label %6
    i32 129, label %10
    i32 130, label %17
  ]

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 0, %8
  store i64 %9, i64* %1, align 8
  br label %25

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %12, %14
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %1, align 8
  br label %25

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %19, %21
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %1, align 8
  br label %25

24:                                               ; preds = %0
  store i64 0, i64* %1, align 8
  br label %25

25:                                               ; preds = %24, %17, %10, %6
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

declare dso_local i32 @GetTimeZoneInformation(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
