; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_AV_queue.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_AV_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__**, i32*, %struct.TYPE_10__*, i32)* @AV_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AV_queue(%struct.TYPE_9__** %0, i32* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 15
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 16
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 24
  %22 = trunc i64 %21 to i32
  %23 = call %struct.TYPE_9__* @realloc(%struct.TYPE_9__* %16, i32 %22)
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %24, align 8
  br label %25

25:                                               ; preds = %14, %4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i8* @malloc(i32 %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i8* %31, i32 %34, i32 %37)
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i64 %56, i64* %64, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i8* %65, i8** %74, align 8
  ret void
}

declare dso_local %struct.TYPE_9__* @realloc(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
