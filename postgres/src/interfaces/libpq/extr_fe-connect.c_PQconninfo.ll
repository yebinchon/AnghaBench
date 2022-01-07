; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_PQconninfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_PQconninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@PQconninfoOptions = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PQconninfo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8**, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %61

11:                                               ; preds = %1
  %12 = call i32 @initPQExpBuffer(i32* %4)
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @PQExpBufferDataBroken(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32* null, i32** %2, align 8
  br label %61

17:                                               ; preds = %11
  %18 = call i32* @conninfo_init(i32* %4)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @PQconninfoOptions, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %6, align 8
  br label %23

23:                                               ; preds = %54, %21
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %54

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = bitcast i8* %40 to i8**
  store i8** %41, i8*** %7, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i8**, i8*** %7, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @conninfo_storeval(i32* %46, i64 %49, i8* %51, i32* %4, i32 1, i32 0)
  br label %53

53:                                               ; preds = %45, %34
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 1
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %6, align 8
  br label %23

57:                                               ; preds = %23
  br label %58

58:                                               ; preds = %57, %17
  %59 = call i32 @termPQExpBuffer(i32* %4)
  %60 = load i32*, i32** %5, align 8
  store i32* %60, i32** %2, align 8
  br label %61

61:                                               ; preds = %58, %16, %10
  %62 = load i32*, i32** %2, align 8
  ret i32* %62
}

declare dso_local i32 @initPQExpBuffer(i32*) #1

declare dso_local i64 @PQExpBufferDataBroken(i32) #1

declare dso_local i32* @conninfo_init(i32*) #1

declare dso_local i32 @conninfo_storeval(i32*, i64, i8*, i32*, i32, i32) #1

declare dso_local i32 @termPQExpBuffer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
