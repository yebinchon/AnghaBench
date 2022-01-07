; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_child_unlink.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_child_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.fpm_child_s = type { %struct.TYPE_5__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }

@fpm_globals = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpm_child_s*)* @fpm_child_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_child_unlink(%struct.fpm_child_s* %0) #0 {
  %2 = alloca %struct.fpm_child_s*, align 8
  store %struct.fpm_child_s* %0, %struct.fpm_child_s** %2, align 8
  %3 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %4 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %3, i32 0, i32 2
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %6, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fpm_globals, i32 0, i32 0), align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fpm_globals, i32 0, i32 0), align 4
  %11 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %12 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %17 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %20 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %22, align 8
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %25 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %28 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %30, align 8
  br label %31

31:                                               ; preds = %23, %15
  %32 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %33 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %38 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %41 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %43, align 8
  br label %44

44:                                               ; preds = %36, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
