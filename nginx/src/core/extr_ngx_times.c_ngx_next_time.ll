; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_times.c_ngx_next_time.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_times.c_ngx_next_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_next_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 (...) @ngx_time()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ngx_libc_localtime(i32 %8, %struct.tm* %6)
  %10 = load i32, i32* %3, align 4
  %11 = sdiv i32 %10, 3600
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = srem i32 %13, 3600
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sdiv i32 %15, 60
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = srem i32 %18, 60
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = call i32 @mktime(%struct.tm* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %26, %27
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = call i32 @mktime(%struct.tm* %6)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %30, %24
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @ngx_time(...) #1

declare dso_local i32 @ngx_libc_localtime(i32, %struct.tm*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
