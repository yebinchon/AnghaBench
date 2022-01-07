; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_buf.c_ngx_chain_get_free_buf.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_buf.c_ngx_chain_get_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ngx_chain_get_free_buf(i32* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %7 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %3, align 8
  br label %40

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_5__* @ngx_alloc_chain_link(i32* %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = icmp eq %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %40

26:                                               ; preds = %20
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @ngx_calloc_buf(i32* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %40

36:                                               ; preds = %26
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %3, align 8
  br label %40

40:                                               ; preds = %36, %35, %25, %10
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %41
}

declare dso_local %struct.TYPE_5__* @ngx_alloc_chain_link(i32*) #1

declare dso_local i32* @ngx_calloc_buf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
