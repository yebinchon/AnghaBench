; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_handle_stray_noerror.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_handle_stray_noerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ch = common dso_local global i8 0, align 1
@file = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @handle_stray_noerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_stray_noerror() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %36, %0
  %3 = load i8, i8* @ch, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 92
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = call i32 (...) @inp()
  %8 = load i8, i8* @ch, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 10
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = call i32 (...) @inp()
  br label %36

17:                                               ; preds = %6
  %18 = load i8, i8* @ch, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 13
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = call i32 (...) @inp()
  %23 = load i8, i8* @ch, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %34

27:                                               ; preds = %21
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = call i32 (...) @inp()
  br label %35

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %26
  store i32 1, i32* %1, align 4
  br label %38

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %11
  br label %2

37:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @inp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
