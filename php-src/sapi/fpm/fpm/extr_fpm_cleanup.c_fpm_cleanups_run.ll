; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_cleanup.c_fpm_cleanups_run.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_cleanup.c_fpm_cleanups_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cleanup_s = type { i32, i32, i32 (i32, i32)* }

@cleanups = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_cleanups_run(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cleanup_s*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call %struct.cleanup_s* @fpm_array_item_last(%struct.TYPE_4__* @cleanups)
  store %struct.cleanup_s* %5, %struct.cleanup_s** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cleanups, i32 0, i32 0), align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load %struct.cleanup_s*, %struct.cleanup_s** %3, align 8
  %13 = getelementptr inbounds %struct.cleanup_s, %struct.cleanup_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load %struct.cleanup_s*, %struct.cleanup_s** %3, align 8
  %20 = getelementptr inbounds %struct.cleanup_s, %struct.cleanup_s* %19, i32 0, i32 2
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.cleanup_s*, %struct.cleanup_s** %3, align 8
  %24 = getelementptr inbounds %struct.cleanup_s, %struct.cleanup_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %21(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %18, %11
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.cleanup_s*, %struct.cleanup_s** %3, align 8
  %30 = getelementptr inbounds %struct.cleanup_s, %struct.cleanup_s* %29, i32 -1
  store %struct.cleanup_s* %30, %struct.cleanup_s** %3, align 8
  br label %7

31:                                               ; preds = %7
  %32 = call i32 @fpm_array_free(%struct.TYPE_4__* @cleanups)
  ret void
}

declare dso_local %struct.cleanup_s* @fpm_array_item_last(%struct.TYPE_4__*) #1

declare dso_local i32 @fpm_array_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
