; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_r_debug_findthread.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_r_debug_findthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@lstThread = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @r_debug_findthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_debug_findthread(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %6, align 8
  %7 = load i64, i64* @lstThread, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load i64, i64* @lstThread, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %6, align 8
  br label %12

12:                                               ; preds = %33, %9
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %31 = bitcast %struct.TYPE_2__* %30 to i8*
  store i8* %31, i8** %3, align 8
  br label %40

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %17
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %35 = ptrtoint %struct.TYPE_2__* %34 to i64
  %36 = add i64 %35, 4
  %37 = inttoptr i64 %36 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %6, align 8
  br label %12

38:                                               ; preds = %12
  br label %39

39:                                               ; preds = %38, %2
  store i8* null, i8** %3, align 8
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
