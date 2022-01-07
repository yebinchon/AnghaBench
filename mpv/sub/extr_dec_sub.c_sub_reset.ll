; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { i32, i32*, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@MP_NOPTS_VALUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sub_reset(%struct.dec_sub* %0) #0 {
  %2 = alloca %struct.dec_sub*, align 8
  store %struct.dec_sub* %0, %struct.dec_sub** %2, align 8
  %3 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %4 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %3, i32 0, i32 0
  %5 = call i32 @pthread_mutex_lock(i32* %4)
  %6 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %7 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %11, align 8
  %13 = icmp ne i32 (%struct.TYPE_4__*)* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %16 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %20, align 8
  %22 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %23 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i32 %21(%struct.TYPE_4__* %24)
  br label %26

26:                                               ; preds = %14, %1
  %27 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %28 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %29 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %31 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %32 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %34 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @talloc_free(i32* %35)
  %37 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %38 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %40 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %39, i32 0, i32 0
  %41 = call i32 @pthread_mutex_unlock(i32* %40)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @talloc_free(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
