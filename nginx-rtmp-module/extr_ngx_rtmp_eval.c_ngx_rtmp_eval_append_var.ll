; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_eval.c_ngx_rtmp_eval_append_var.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_eval.c_ngx_rtmp_eval_append_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i8*, %struct.TYPE_10__*, %struct.TYPE_9__*)*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.TYPE_10__**, %struct.TYPE_9__*, i32*)* @ngx_rtmp_eval_append_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_eval_append_var(i8* %0, i32* %1, %struct.TYPE_10__** %2, %struct.TYPE_9__* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store i32* %4, i32** %10, align 8
  br label %14

14:                                               ; preds = %69, %5
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  store i64 0, i64* %11, align 8
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %13, align 8
  br label %21

21:                                               ; preds = %63, %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32 (i8*, %struct.TYPE_10__*, %struct.TYPE_9__*)*, i32 (i8*, %struct.TYPE_10__*, %struct.TYPE_9__*)** %23, align 8
  %25 = icmp ne i32 (i8*, %struct.TYPE_10__*, %struct.TYPE_9__*)* %24, null
  br i1 %25, label %26, label %68

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %26
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ngx_memcmp(i32 %39, i32 %42, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %35
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32 (i8*, %struct.TYPE_10__*, %struct.TYPE_9__*)*, i32 (i8*, %struct.TYPE_10__*, %struct.TYPE_9__*)** %50, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %54 = call i32 %51(i8* %52, %struct.TYPE_10__* %53, %struct.TYPE_9__* %12)
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @ngx_rtmp_eval_append(i32* %55, i32 %57, i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %48, %35, %26
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %11, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %11, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 1
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %13, align 8
  br label %21

68:                                               ; preds = %21
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %70, i32 1
  store %struct.TYPE_10__** %71, %struct.TYPE_10__*** %8, align 8
  br label %14

72:                                               ; preds = %14
  ret void
}

declare dso_local i64 @ngx_memcmp(i32, i32, i32) #1

declare dso_local i32 @ngx_rtmp_eval_append(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
