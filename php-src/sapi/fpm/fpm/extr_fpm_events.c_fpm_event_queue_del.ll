; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_queue_del.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_queue_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_queue_s = type { %struct.fpm_event_queue_s*, %struct.TYPE_3__*, %struct.fpm_event_s* }
%struct.TYPE_3__ = type { %struct.fpm_event_queue_s* }
%struct.fpm_event_s = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.fpm_event_s*)* }

@fpm_event_queue_fd = common dso_local global %struct.fpm_event_queue_s* null, align 8
@module = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpm_event_queue_s**, %struct.fpm_event_s*)* @fpm_event_queue_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_event_queue_del(%struct.fpm_event_queue_s** %0, %struct.fpm_event_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpm_event_queue_s**, align 8
  %5 = alloca %struct.fpm_event_s*, align 8
  %6 = alloca %struct.fpm_event_queue_s*, align 8
  store %struct.fpm_event_queue_s** %0, %struct.fpm_event_queue_s*** %4, align 8
  store %struct.fpm_event_s* %1, %struct.fpm_event_s** %5, align 8
  %7 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %8 = icmp ne %struct.fpm_event_queue_s** %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.fpm_event_s*, %struct.fpm_event_s** %5, align 8
  %11 = icmp ne %struct.fpm_event_s* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %93

13:                                               ; preds = %9
  %14 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %15 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %14, align 8
  store %struct.fpm_event_queue_s* %15, %struct.fpm_event_queue_s** %6, align 8
  br label %16

16:                                               ; preds = %88, %13
  %17 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %18 = icmp ne %struct.fpm_event_queue_s* %17, null
  br i1 %18, label %19, label %92

19:                                               ; preds = %16
  %20 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %21 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %20, i32 0, i32 2
  %22 = load %struct.fpm_event_s*, %struct.fpm_event_s** %21, align 8
  %23 = load %struct.fpm_event_s*, %struct.fpm_event_s** %5, align 8
  %24 = icmp eq %struct.fpm_event_s* %22, %23
  br i1 %24, label %25, label %88

25:                                               ; preds = %19
  %26 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %27 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %32 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %31, i32 0, i32 0
  %33 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %32, align 8
  %34 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %35 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store %struct.fpm_event_queue_s* %33, %struct.fpm_event_queue_s** %37, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %40 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %39, i32 0, i32 0
  %41 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %40, align 8
  %42 = icmp ne %struct.fpm_event_queue_s* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %45 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %48 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %47, i32 0, i32 0
  %49 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %48, align 8
  %50 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %49, i32 0, i32 1
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %50, align 8
  br label %51

51:                                               ; preds = %43, %38
  %52 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %53 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %54 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %53, align 8
  %55 = icmp eq %struct.fpm_event_queue_s* %52, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %58 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %57, i32 0, i32 0
  %59 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %58, align 8
  %60 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  store %struct.fpm_event_queue_s* %59, %struct.fpm_event_queue_s** %60, align 8
  %61 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %62 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %61, align 8
  %63 = icmp ne %struct.fpm_event_queue_s* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %66 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %65, align 8
  %67 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %66, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %67, align 8
  br label %68

68:                                               ; preds = %64, %56
  br label %69

69:                                               ; preds = %68, %51
  %70 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %71 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %70, align 8
  %72 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** @fpm_event_queue_fd, align 8
  %73 = icmp eq %struct.fpm_event_queue_s* %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @module, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32 (%struct.fpm_event_s*)*, i32 (%struct.fpm_event_s*)** %76, align 8
  %78 = icmp ne i32 (%struct.fpm_event_s*)* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @module, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (%struct.fpm_event_s*)*, i32 (%struct.fpm_event_s*)** %81, align 8
  %83 = load %struct.fpm_event_s*, %struct.fpm_event_s** %5, align 8
  %84 = call i32 %82(%struct.fpm_event_s* %83)
  br label %85

85:                                               ; preds = %79, %74, %69
  %86 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %87 = call i32 @free(%struct.fpm_event_queue_s* %86)
  store i32 0, i32* %3, align 4
  br label %93

88:                                               ; preds = %19
  %89 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %90 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %89, i32 0, i32 0
  %91 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %90, align 8
  store %struct.fpm_event_queue_s* %91, %struct.fpm_event_queue_s** %6, align 8
  br label %16

92:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %85, %12
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @free(%struct.fpm_event_queue_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
