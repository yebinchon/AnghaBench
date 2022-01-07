; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_create_array_envelope.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_create_array_envelope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, i32*, i32*, i32, i32, i32)* @create_array_envelope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @create_array_envelope(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i64 @palloc0(i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %13, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @SET_VARSIZE(%struct.TYPE_6__* %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %30 = call i32 @ARR_DIMS(%struct.TYPE_6__* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memcpy(i32 %30, i32* %31, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %38 = call i32 @ARR_LBOUND(%struct.TYPE_6__* %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i32 %38, i32* %39, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  ret %struct.TYPE_6__* %45
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ARR_DIMS(%struct.TYPE_6__*) #1

declare dso_local i32 @ARR_LBOUND(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
