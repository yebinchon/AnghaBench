; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_copy_plpgsql_datums.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_copy_plpgsql_datums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__** }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unrecognized dtype: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*)* @copy_plpgsql_datums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_plpgsql_datums(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = call i8* @palloc(i32 %19)
  %21 = bitcast i8* %20 to %struct.TYPE_10__**
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store %struct.TYPE_10__** %21, %struct.TYPE_10__*** %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @palloc(i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %9, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %30, align 8
  store %struct.TYPE_10__** %31, %struct.TYPE_10__*** %6, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %33, align 8
  store %struct.TYPE_10__** %34, %struct.TYPE_10__*** %7, align 8
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %82, %2
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %85

39:                                               ; preds = %35
  %40 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %40, i64 %42
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %11, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %70 [
    i32 128, label %48
    i32 132, label %48
    i32 131, label %58
    i32 129, label %68
    i32 130, label %68
    i32 133, label %68
  ]

48:                                               ; preds = %39, %39
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %12, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = call i32 @memcpy(%struct.TYPE_10__* %51, %struct.TYPE_10__* %52, i32 4)
  %54 = call i32 @MAXALIGN(i32 4)
  %55 = load i8*, i8** %9, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %9, align 8
  br label %76

58:                                               ; preds = %39
  %59 = load i8*, i8** %9, align 8
  %60 = bitcast i8* %59 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %12, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %63 = call i32 @memcpy(%struct.TYPE_10__* %61, %struct.TYPE_10__* %62, i32 4)
  %64 = call i32 @MAXALIGN(i32 4)
  %65 = load i8*, i8** %9, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %9, align 8
  br label %76

68:                                               ; preds = %39, %39, %39
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %12, align 8
  br label %76

70:                                               ; preds = %39
  %71 = load i32, i32* @ERROR, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @elog(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %74)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  br label %76

76:                                               ; preds = %70, %68, %58, %48
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %78 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %78, i64 %80
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %81, align 8
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %35

85:                                               ; preds = %35
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  %93 = icmp eq i8* %86, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @Assert(i32 %94)
  ret void
}

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
