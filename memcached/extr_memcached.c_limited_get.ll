; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_limited_get.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_limited_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@IT_REFCOUNT_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*, i64, i32*, i32, i32, i32)* @limited_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @limited_get(i8* %0, i64 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %6
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_6__* @item_touch(i8* %17, i64 %18, i32 %19, i32* %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %13, align 8
  br label %28

22:                                               ; preds = %6
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call %struct.TYPE_6__* @item_get(i8* %23, i64 %24, i32* %25, i32 %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %13, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IT_REFCOUNT_LIMIT, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = call i32 @item_remove(%struct.TYPE_6__* %38)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  br label %40

40:                                               ; preds = %37, %31, %28
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  ret %struct.TYPE_6__* %41
}

declare dso_local %struct.TYPE_6__* @item_touch(i8*, i64, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @item_get(i8*, i64, i32*, i32) #1

declare dso_local i32 @item_remove(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
