; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_findParentsByOid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_findParentsByOid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__**, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [68 x i8] c"failed sanity check, parent OID %u of table \22%s\22 (OID %u) not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, i32)* @findParentsByOid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findParentsByOid(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %34, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %30, %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %103

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = trunc i64 %46 to i32
  %48 = call i64 @pg_malloc(i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_10__**
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store %struct.TYPE_10__** %49, %struct.TYPE_10__*** %51, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %99, %43
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %102

56:                                               ; preds = %52
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %56
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_10__* @findTableByOid(i32 %71)
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %11, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %74 = icmp eq %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %65
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @pg_log_error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %85, i64 %86)
  %88 = call i32 @exit_nicely(i32 1)
  br label %89

89:                                               ; preds = %75, %65
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %93, i64 %96
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %97, align 8
  br label %98

98:                                               ; preds = %89, %56
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %52

102:                                              ; preds = %52
  br label %106

103:                                              ; preds = %37
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store %struct.TYPE_10__** null, %struct.TYPE_10__*** %105, align 8
  br label %106

106:                                              ; preds = %103, %102
  ret void
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local %struct.TYPE_10__* @findTableByOid(i32) #1

declare dso_local i32 @pg_log_error(i8*, i32, i32, i64) #1

declare dso_local i32 @exit_nicely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
