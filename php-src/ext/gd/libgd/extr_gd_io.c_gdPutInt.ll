; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_io.c_gdPutInt.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_io.c_gdPutInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i8)* }

@.str = private unnamed_addr constant [15 x i8] c"Putting int...\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"put.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdPutInt(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = call i32 @gd_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @IO_DBG(i32 %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_7__*, i8)*, i32 (%struct.TYPE_7__*, i8)** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 24
  %13 = trunc i32 %12 to i8
  %14 = call i32 %9(%struct.TYPE_7__* %10, i8 zeroext %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_7__*, i8)*, i32 (%struct.TYPE_7__*, i8)** %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  %23 = call i32 %17(%struct.TYPE_7__* %18, i8 zeroext %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_7__*, i8)*, i32 (%struct.TYPE_7__*, i8)** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  %32 = call i32 %26(%struct.TYPE_7__* %27, i8 zeroext %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_7__*, i8)*, i32 (%struct.TYPE_7__*, i8)** %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = call i32 %35(%struct.TYPE_7__* %36, i8 zeroext %39)
  %41 = call i32 @gd_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @IO_DBG(i32 %41)
  ret void
}

declare dso_local i32 @IO_DBG(i32) #1

declare dso_local i32 @gd_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
