; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_ecpg.c_add_include_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_ecpg.c_add_include_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._include_path = type { i8*, %struct._include_path* }

@include_paths = common dso_local global %struct._include_path* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_include_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_include_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._include_path*, align 8
  %4 = alloca %struct._include_path*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load %struct._include_path*, %struct._include_path** @include_paths, align 8
  store %struct._include_path* %5, %struct._include_path** %3, align 8
  %6 = call %struct._include_path* @mm_alloc(i32 16)
  store %struct._include_path* %6, %struct._include_path** %4, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load %struct._include_path*, %struct._include_path** %4, align 8
  %9 = getelementptr inbounds %struct._include_path, %struct._include_path* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load %struct._include_path*, %struct._include_path** %4, align 8
  %11 = getelementptr inbounds %struct._include_path, %struct._include_path* %10, i32 0, i32 1
  store %struct._include_path* null, %struct._include_path** %11, align 8
  %12 = load %struct._include_path*, %struct._include_path** %3, align 8
  %13 = icmp eq %struct._include_path* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load %struct._include_path*, %struct._include_path** %4, align 8
  store %struct._include_path* %15, %struct._include_path** @include_paths, align 8
  br label %31

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %23, %16
  %18 = load %struct._include_path*, %struct._include_path** %3, align 8
  %19 = getelementptr inbounds %struct._include_path, %struct._include_path* %18, i32 0, i32 1
  %20 = load %struct._include_path*, %struct._include_path** %19, align 8
  %21 = icmp ne %struct._include_path* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load %struct._include_path*, %struct._include_path** %3, align 8
  %25 = getelementptr inbounds %struct._include_path, %struct._include_path* %24, i32 0, i32 1
  %26 = load %struct._include_path*, %struct._include_path** %25, align 8
  store %struct._include_path* %26, %struct._include_path** %3, align 8
  br label %17

27:                                               ; preds = %17
  %28 = load %struct._include_path*, %struct._include_path** %4, align 8
  %29 = load %struct._include_path*, %struct._include_path** %3, align 8
  %30 = getelementptr inbounds %struct._include_path, %struct._include_path* %29, i32 0, i32 1
  store %struct._include_path* %28, %struct._include_path** %30, align 8
  br label %31

31:                                               ; preds = %27, %14
  ret void
}

declare dso_local %struct._include_path* @mm_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
