; ModuleID = '/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_free_children.c'
source_filename = "/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_free_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ta_header = type { %struct.ta_ext_header* }
%struct.ta_ext_header = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ta_free_children(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ta_header*, align 8
  %4 = alloca %struct.ta_ext_header*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.ta_header* @get_header(i8* %5)
  store %struct.ta_header* %6, %struct.ta_header** %3, align 8
  %7 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %8 = icmp ne %struct.ta_header* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %11 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %10, i32 0, i32 0
  %12 = load %struct.ta_ext_header*, %struct.ta_ext_header** %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi %struct.ta_ext_header* [ %12, %9 ], [ null, %13 ]
  store %struct.ta_ext_header* %15, %struct.ta_ext_header** %4, align 8
  %16 = load %struct.ta_ext_header*, %struct.ta_ext_header** %4, align 8
  %17 = icmp ne %struct.ta_ext_header* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %35

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %28, %19
  %21 = load %struct.ta_ext_header*, %struct.ta_ext_header** %4, align 8
  %22 = getelementptr inbounds %struct.ta_ext_header, %struct.ta_ext_header* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.ta_ext_header*, %struct.ta_ext_header** %4, align 8
  %26 = getelementptr inbounds %struct.ta_ext_header, %struct.ta_ext_header* %25, i32 0, i32 0
  %27 = icmp ne %struct.TYPE_2__* %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.ta_ext_header*, %struct.ta_ext_header** %4, align 8
  %30 = getelementptr inbounds %struct.ta_ext_header, %struct.ta_ext_header* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @PTR_FROM_HEADER(%struct.TYPE_2__* %32)
  %34 = call i32 @ta_free(i32 %33)
  br label %20

35:                                               ; preds = %18, %20
  ret void
}

declare dso_local %struct.ta_header* @get_header(i8*) #1

declare dso_local i32 @ta_free(i32) #1

declare dso_local i32 @PTR_FROM_HEADER(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
