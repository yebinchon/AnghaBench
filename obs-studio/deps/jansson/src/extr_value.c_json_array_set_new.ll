; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_array_set_new.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_array_set_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_set_new(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %48

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @json_is_array(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %12
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @json_decref(i32* %21)
  store i32 -1, i32* %4, align 4
  br label %48

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = call %struct.TYPE_3__* @json_to_array(i32* %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp uge i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @json_decref(i32* %32)
  store i32 -1, i32* %4, align 4
  br label %48

34:                                               ; preds = %23
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @json_decref(i32* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  store i32* %42, i32** %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %34, %31, %20, %11
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @json_is_array(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local %struct.TYPE_3__* @json_to_array(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
