; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_input_src_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_input_src_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_input_src = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"input source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @input_src_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @input_src_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.mp_input_src*, align 8
  %5 = alloca void (%struct.mp_input_src*, i8*)*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to i8**
  store i8** %8, i8*** %3, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.mp_input_src*
  store %struct.mp_input_src* %12, %struct.mp_input_src** %4, align 8
  %13 = load i8**, i8*** %3, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to void (%struct.mp_input_src*, i8*)*
  store void (%struct.mp_input_src*, i8*)* %16, void (%struct.mp_input_src*, i8*)** %5, align 8
  %17 = load i8**, i8*** %3, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = call i32 @mpthread_set_name(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.mp_input_src*, %struct.mp_input_src** %4, align 8
  %22 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load void (%struct.mp_input_src*, i8*)*, void (%struct.mp_input_src*, i8*)** %5, align 8
  %26 = load %struct.mp_input_src*, %struct.mp_input_src** %4, align 8
  %27 = load i8*, i8** %6, align 8
  call void %25(%struct.mp_input_src* %26, i8* %27)
  %28 = load %struct.mp_input_src*, %struct.mp_input_src** %4, align 8
  %29 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %1
  %35 = load %struct.mp_input_src*, %struct.mp_input_src** %4, align 8
  %36 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @mp_rendezvous(i32* %38, i32 -1)
  br label %40

40:                                               ; preds = %34, %1
  ret i8* null
}

declare dso_local i32 @mpthread_set_name(i8*) #1

declare dso_local i32 @mp_rendezvous(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
