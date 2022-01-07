; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_children_init_main.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_children_init_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@fpm_global_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@last_faults = common dso_local global i32 0, align 4
@FPM_CLEANUP_ALL = common dso_local global i32 0, align 4
@fpm_children_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_children_init_main() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_global_config, i32 0, i32 0), align 8
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_global_config, i32 0, i32 1), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_global_config, i32 0, i32 0), align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = call i32 @malloc(i32 %11)
  store i32 %12, i32* @last_faults, align 4
  %13 = load i32, i32* @last_faults, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  store i32 -1, i32* %1, align 4
  br label %30

16:                                               ; preds = %7
  %17 = load i32, i32* @last_faults, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_global_config, i32 0, i32 0), align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32 %17, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %16, %4, %0
  %24 = load i32, i32* @FPM_CLEANUP_ALL, align 4
  %25 = load i32, i32* @fpm_children_cleanup, align 4
  %26 = call i64 @fpm_cleanup_add(i32 %24, i32 %25, i32 0)
  %27 = icmp sgt i64 0, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %1, align 4
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %28, %15
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @fpm_cleanup_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
