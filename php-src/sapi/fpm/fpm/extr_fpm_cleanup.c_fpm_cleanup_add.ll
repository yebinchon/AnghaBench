; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_cleanup.c_fpm_cleanup_add.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_cleanup.c_fpm_cleanup_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup_s = type { i32, void (i32, i8*)*, i8* }

@cleanups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_cleanup_add(i32 %0, void (i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cleanup_s*, align 8
  store i32 %0, i32* %5, align 4
  store void (i32, i8*)* %1, void (i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.cleanup_s* @fpm_array_push(i32* @cleanups)
  store %struct.cleanup_s* %9, %struct.cleanup_s** %8, align 8
  %10 = load %struct.cleanup_s*, %struct.cleanup_s** %8, align 8
  %11 = icmp ne %struct.cleanup_s* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.cleanup_s*, %struct.cleanup_s** %8, align 8
  %16 = getelementptr inbounds %struct.cleanup_s, %struct.cleanup_s* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load void (i32, i8*)*, void (i32, i8*)** %6, align 8
  %18 = load %struct.cleanup_s*, %struct.cleanup_s** %8, align 8
  %19 = getelementptr inbounds %struct.cleanup_s, %struct.cleanup_s* %18, i32 0, i32 1
  store void (i32, i8*)* %17, void (i32, i8*)** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.cleanup_s*, %struct.cleanup_s** %8, align 8
  %22 = getelementptr inbounds %struct.cleanup_s, %struct.cleanup_s* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %13, %12
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.cleanup_s* @fpm_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
