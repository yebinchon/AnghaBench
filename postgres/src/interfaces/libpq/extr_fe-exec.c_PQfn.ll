; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQfn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, i32* }

@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@PGASYNC_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"connection in wrong state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PQfn(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i32*, i32** %12, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %69

20:                                               ; preds = %7
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = call i32 @resetPQExpBuffer(i32* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PGINVALID_SOCKET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PGASYNC_IDLE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %29, %20
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = call i32 @libpq_gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @printfPQExpBuffer(i32* %42, i32 %43)
  store i32* null, i32** %8, align 8
  br label %69

45:                                               ; preds = %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PG_PROTOCOL_MAJOR(i32 %48)
  %50 = icmp sge i32 %49, 3
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i32* @pqFunctionCall3(%struct.TYPE_5__* %52, i32 %53, i32* %54, i32* %55, i32 %56, i32* %57, i32 %58)
  store i32* %59, i32** %8, align 8
  br label %69

60:                                               ; preds = %45
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32* @pqFunctionCall2(%struct.TYPE_5__* %61, i32 %62, i32* %63, i32* %64, i32 %65, i32* %66, i32 %67)
  store i32* %68, i32** %8, align 8
  br label %69

69:                                               ; preds = %60, %51, %40, %19
  %70 = load i32*, i32** %8, align 8
  ret i32* %70
}

declare dso_local i32 @resetPQExpBuffer(i32*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32* @pqFunctionCall3(%struct.TYPE_5__*, i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32* @pqFunctionCall2(%struct.TYPE_5__*, i32, i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
