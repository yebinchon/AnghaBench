; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_buf.c_ngx_create_chain_of_bufs.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_buf.c_ngx_create_chain_of_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ngx_create_chain_of_bufs(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__**, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = call i32* @ngx_palloc(i32* %12, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %78

24:                                               ; preds = %2
  store %struct.TYPE_8__** %9, %struct.TYPE_8__*** %11, align 8
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %72, %24
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %25
  %33 = load i32*, i32** %4, align 8
  %34 = call %struct.TYPE_10__* @ngx_calloc_buf(i32* %33)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %8, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = icmp eq %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %78

38:                                               ; preds = %32
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call %struct.TYPE_8__* @ngx_alloc_chain_link(i32* %59)
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %10, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = icmp eq %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %38
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %78

64:                                               ; preds = %38
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store %struct.TYPE_8__** %71, %struct.TYPE_8__*** %11, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %25

75:                                               ; preds = %25
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %3, align 8
  br label %78

78:                                               ; preds = %75, %63, %37, %23
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %79
}

declare dso_local i32* @ngx_palloc(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @ngx_calloc_buf(i32*) #1

declare dso_local %struct.TYPE_8__* @ngx_alloc_chain_link(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
