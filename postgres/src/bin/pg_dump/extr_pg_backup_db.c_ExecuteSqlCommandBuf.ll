; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_db.c_ExecuteSqlCommandBuf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_db.c_ExecuteSqlCommandBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }

@OUTPUT_COPYDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"error returned by PQputCopyData: %s\00", align 1
@OUTPUT_OTHERDATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"could not execute query\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecuteSqlCommandBuf(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OUTPUT_COPYDATA, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @PQputCopyData(i32 %24, i8* %25, i64 %26)
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PQerrorMessage(i32 %32)
  %34 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %21, %16
  br label %77

36:                                               ; preds = %3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OUTPUT_OTHERDATA, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @ExecuteSimpleCommands(%struct.TYPE_4__* %43, i8* %44, i64 %45)
  br label %76

47:                                               ; preds = %36
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @ExecuteSqlCommand(%struct.TYPE_4__* %55, i8* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %75

58:                                               ; preds = %47
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  %61 = call i64 @pg_malloc(i64 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @memcpy(i8* %63, i8* %64, i64 %65)
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @ExecuteSqlCommand(%struct.TYPE_4__* %70, i8* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @free(i8* %73)
  br label %75

75:                                               ; preds = %58, %54
  br label %76

76:                                               ; preds = %75, %42
  br label %77

77:                                               ; preds = %76, %35
  %78 = load i64, i64* %6, align 8
  %79 = trunc i64 %78 to i32
  ret i32 %79
}

declare dso_local i64 @PQputCopyData(i32, i8*, i64) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @ExecuteSimpleCommands(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i32 @ExecuteSqlCommand(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i64 @pg_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
