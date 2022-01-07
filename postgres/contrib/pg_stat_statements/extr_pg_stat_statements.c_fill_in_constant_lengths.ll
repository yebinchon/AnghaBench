; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_fill_in_constant_lengths.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_fill_in_constant_lengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@comp_location = common dso_local global i32 0, align 4
@ScanKeywords = common dso_local global i32 0, align 4
@ScanKeywordTokens = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i32)* @fill_in_constant_lengths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_in_constant_lengths(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %12, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @comp_location, align 4
  %28 = call i32 @qsort(%struct.TYPE_7__* %23, i32 %26, i32 8, i32 %27)
  br label %29

29:                                               ; preds = %20, %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %7, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @ScanKeywordTokens, align 4
  %35 = call i32 @scanner_init(i8* %33, %struct.TYPE_9__* %9, i32* @ScanKeywords, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i32 0, i32* %36, align 8
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %106, %29
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %109

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp sge i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  br label %106

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %99, %61
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @core_yylex(i32* %10, i32* %11, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %100

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %68
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 45
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @core_yylex(i32* %10, i32* %11, i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %100

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %72
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = call i32 @strlen(i64 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i32 %93, i32* %98, align 4
  br label %100

99:                                               ; preds = %68
  br label %62

100:                                              ; preds = %87, %85, %67
  %101 = load i32, i32* %15, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %109

104:                                              ; preds = %100
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %60
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %37

109:                                              ; preds = %103, %37
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @scanner_finish(i32 %110)
  ret void
}

declare dso_local i32 @qsort(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @scanner_init(i8*, %struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @core_yylex(i32*, i32*, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @scanner_finish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
