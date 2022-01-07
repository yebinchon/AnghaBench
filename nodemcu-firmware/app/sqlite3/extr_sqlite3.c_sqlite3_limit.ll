; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_limit.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@aHardLimit = common dso_local global i32* null, align 8
@SQLITE_LIMIT_LENGTH = common dso_local global i64 0, align 8
@SQLITE_MAX_LENGTH = common dso_local global i32 0, align 4
@SQLITE_LIMIT_SQL_LENGTH = common dso_local global i64 0, align 8
@SQLITE_MAX_SQL_LENGTH = common dso_local global i32 0, align 4
@SQLITE_LIMIT_COLUMN = common dso_local global i64 0, align 8
@SQLITE_MAX_COLUMN = common dso_local global i32 0, align 4
@SQLITE_LIMIT_EXPR_DEPTH = common dso_local global i64 0, align 8
@SQLITE_MAX_EXPR_DEPTH = common dso_local global i32 0, align 4
@SQLITE_LIMIT_COMPOUND_SELECT = common dso_local global i64 0, align 8
@SQLITE_MAX_COMPOUND_SELECT = common dso_local global i32 0, align 4
@SQLITE_LIMIT_VDBE_OP = common dso_local global i64 0, align 8
@SQLITE_MAX_VDBE_OP = common dso_local global i32 0, align 4
@SQLITE_LIMIT_FUNCTION_ARG = common dso_local global i64 0, align 8
@SQLITE_MAX_FUNCTION_ARG = common dso_local global i32 0, align 4
@SQLITE_LIMIT_ATTACHED = common dso_local global i64 0, align 8
@SQLITE_MAX_ATTACHED = common dso_local global i32 0, align 4
@SQLITE_LIMIT_LIKE_PATTERN_LENGTH = common dso_local global i64 0, align 8
@SQLITE_MAX_LIKE_PATTERN_LENGTH = common dso_local global i32 0, align 4
@SQLITE_LIMIT_VARIABLE_NUMBER = common dso_local global i64 0, align 8
@SQLITE_MAX_VARIABLE_NUMBER = common dso_local global i32 0, align 4
@SQLITE_LIMIT_TRIGGER_DEPTH = common dso_local global i64 0, align 8
@SQLITE_MAX_TRIGGER_DEPTH = common dso_local global i32 0, align 4
@SQLITE_LIMIT_WORKER_THREADS = common dso_local global i64 0, align 8
@SQLITE_MAX_WORKER_THREADS = common dso_local global i32 0, align 4
@SQLITE_N_LIMIT = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_limit(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** @aHardLimit, align 8
  %10 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SQLITE_MAX_LENGTH, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** @aHardLimit, align 8
  %18 = load i64, i64* @SQLITE_LIMIT_SQL_LENGTH, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SQLITE_MAX_SQL_LENGTH, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** @aHardLimit, align 8
  %26 = load i64, i64* @SQLITE_LIMIT_COLUMN, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SQLITE_MAX_COLUMN, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** @aHardLimit, align 8
  %34 = load i64, i64* @SQLITE_LIMIT_EXPR_DEPTH, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SQLITE_MAX_EXPR_DEPTH, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32*, i32** @aHardLimit, align 8
  %42 = load i64, i64* @SQLITE_LIMIT_COMPOUND_SELECT, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SQLITE_MAX_COMPOUND_SELECT, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32*, i32** @aHardLimit, align 8
  %50 = load i64, i64* @SQLITE_LIMIT_VDBE_OP, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SQLITE_MAX_VDBE_OP, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32*, i32** @aHardLimit, align 8
  %58 = load i64, i64* @SQLITE_LIMIT_FUNCTION_ARG, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SQLITE_MAX_FUNCTION_ARG, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32*, i32** @aHardLimit, align 8
  %66 = load i64, i64* @SQLITE_LIMIT_ATTACHED, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SQLITE_MAX_ATTACHED, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32*, i32** @aHardLimit, align 8
  %74 = load i64, i64* @SQLITE_LIMIT_LIKE_PATTERN_LENGTH, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SQLITE_MAX_LIKE_PATTERN_LENGTH, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i32*, i32** @aHardLimit, align 8
  %82 = load i64, i64* @SQLITE_LIMIT_VARIABLE_NUMBER, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SQLITE_MAX_VARIABLE_NUMBER, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32*, i32** @aHardLimit, align 8
  %90 = load i64, i64* @SQLITE_LIMIT_TRIGGER_DEPTH, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SQLITE_MAX_TRIGGER_DEPTH, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32*, i32** @aHardLimit, align 8
  %98 = load i64, i64* @SQLITE_LIMIT_WORKER_THREADS, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SQLITE_MAX_WORKER_THREADS, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i64, i64* @SQLITE_LIMIT_WORKER_THREADS, align 8
  %106 = load i32, i32* @SQLITE_N_LIMIT, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = icmp eq i64 %105, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %3
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @SQLITE_N_LIMIT, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114, %3
  store i32 -1, i32* %4, align 4
  br label %153

119:                                              ; preds = %114
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %119
  %130 = load i32, i32* %7, align 4
  %131 = load i32*, i32** @aHardLimit, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %130, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  %138 = load i32*, i32** @aHardLimit, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %137, %129
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  br label %151

151:                                              ; preds = %143, %119
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %118
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
