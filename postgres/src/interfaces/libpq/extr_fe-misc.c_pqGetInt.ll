; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqGetInt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqGetInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i32 }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"integer of size %lu not supported by pqGetInt\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"From backend (#%lu)> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqGetInt(i32* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %10 = load i64, i64* %6, align 8
  switch i64 %10, label %67 [
    i64 2, label %11
    i64 4, label %39
  ]

11:                                               ; preds = %3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @EOF, align 4
  store i32 %21, i32* %4, align 4
  br label %87

22:                                               ; preds = %11
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %25, %28
  %30 = call i32 @memcpy(i32* %8, i32 %29, i32 2)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @pg_ntoh16(i32 %35)
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %73

39:                                               ; preds = %3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @EOF, align 4
  store i32 %49, i32* %4, align 4
  br label %87

50:                                               ; preds = %39
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %53, %56
  %58 = call i32 @memcpy(i32* %9, i32 %57, i32 4)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 4
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @pg_ntoh32(i32 %63)
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  br label %73

67:                                               ; preds = %3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @pqInternalNotice(i32* %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @EOF, align 4
  store i32 %72, i32* %4, align 4
  br label %87

73:                                               ; preds = %50, %22
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @fprintf(i64 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %82, i32 %84)
  br label %86

86:                                               ; preds = %78, %73
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %67, %48, %20
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @pg_ntoh16(i32) #1

declare dso_local i64 @pg_ntoh32(i32) #1

declare dso_local i32 @pqInternalNotice(i32*, i8*, i64) #1

declare dso_local i32 @fprintf(i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
