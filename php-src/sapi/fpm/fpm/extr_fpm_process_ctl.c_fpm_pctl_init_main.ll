; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_init_main.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_init_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@saved_argc = common dso_local global i32 0, align 4
@saved_argv = common dso_local global i64* null, align 8
@FPM_CLEANUP_ALL = common dso_local global i32 0, align 4
@fpm_pctl_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_pctl_init_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 8
  store i32 %3, i32* @saved_argc, align 4
  %4 = load i32, i32* @saved_argc, align 4
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = mul i64 8, %6
  %8 = trunc i64 %7 to i32
  %9 = call i64* @malloc(i32 %8)
  store i64* %9, i64** @saved_argv, align 8
  %10 = load i64*, i64** @saved_argv, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %51

13:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @saved_argc, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strdup(i32 %23)
  %25 = load i64*, i64** @saved_argv, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 %24, i64* %28, align 8
  %29 = load i64*, i64** @saved_argv, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %18
  store i32 -1, i32* %1, align 4
  br label %51

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load i64*, i64** @saved_argv, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @FPM_CLEANUP_ALL, align 4
  %46 = load i32, i32* @fpm_pctl_cleanup, align 4
  %47 = call i64 @fpm_cleanup_add(i32 %45, i32 %46, i32 0)
  %48 = icmp sgt i64 0, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 -1, i32* %1, align 4
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %50, %49, %35, %12
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i64* @malloc(i32) #1

declare dso_local i64 @strdup(i32) #1

declare dso_local i64 @fpm_cleanup_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
