; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_fillPGconn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_fillPGconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }

@PQconninfoOptions = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @fillPGconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fillPGconn(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PQconninfoOptions, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  br label %10

10:                                               ; preds = %58, %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @conninfo_getval(i32* %21, i64 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = bitcast %struct.TYPE_6__* %29 to i8*
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = bitcast i8* %34 to i8**
  store i8** %35, i8*** %8, align 8
  %36 = load i8**, i8*** %8, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i8**, i8*** %8, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @free(i8* %41)
  br label %43

43:                                               ; preds = %39, %28
  %44 = load i8*, i8** %7, align 8
  %45 = call i8* @strdup(i8* %44)
  %46 = load i8**, i8*** %8, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i8**, i8*** %8, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %54 = call i32 @printfPQExpBuffer(i32* %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %62

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %20
  br label %57

57:                                               ; preds = %56, %15
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 1
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %6, align 8
  br label %10

61:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %50
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i8* @conninfo_getval(i32*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
