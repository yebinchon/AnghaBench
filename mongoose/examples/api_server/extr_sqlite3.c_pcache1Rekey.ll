; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pcache1Rekey.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pcache1Rekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @pcache1Rekey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcache1Rekey(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__**, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %10, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = icmp eq %struct.TYPE_4__* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pcache1EnterMutex(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = urem i32 %35, %38
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %42, i64 %44
  store %struct.TYPE_3__** %45, %struct.TYPE_3__*** %11, align 8
  br label %46

46:                                               ; preds = %51, %4
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = icmp ne %struct.TYPE_3__* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store %struct.TYPE_3__** %54, %struct.TYPE_3__*** %11, align 8
  br label %46

55:                                               ; preds = %46
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = urem i32 %60, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %70, i64 %72
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store %struct.TYPE_3__* %74, %struct.TYPE_3__** %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %80, i64 %82
  store %struct.TYPE_3__* %77, %struct.TYPE_3__** %83, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ugt i32 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %55
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %55
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @pcache1LeaveMutex(i32 %96)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pcache1EnterMutex(i32) #1

declare dso_local i32 @pcache1LeaveMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
