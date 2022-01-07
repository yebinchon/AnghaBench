; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_timestamp2tm.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_timestamp2tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i8*, i32, i32, i32, i32, i64, i64 }

@session_timezone = common dso_local global i32* null, align 8
@USECS_PER_DAY = common dso_local global i64 0, align 8
@POSTGRES_EPOCH_JDATE = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@USECS_PER_SEC = common dso_local global i64 0, align 8
@UNIX_EPOCH_JDATE = common dso_local global i64 0, align 8
@SECS_PER_DAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timestamp2tm(i64 %0, i32* %1, %struct.pg_tm* %2, i64* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pg_tm*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.pg_tm*, align 8
  store i64 %0, i64* %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.pg_tm* %2, %struct.pg_tm** %10, align 8
  store i64* %3, i64** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32*, i32** @session_timezone, align 8
  store i32* %21, i32** %13, align 8
  br label %22

22:                                               ; preds = %20, %6
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* @USECS_PER_DAY, align 8
  %27 = call i32 @TMODULO(i64 %24, i64 %25, i64 %26)
  %28 = load i64, i64* %15, align 8
  %29 = call i64 @INT64CONST(i32 0)
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i64, i64* @USECS_PER_DAY, align 8
  %33 = load i64, i64* %15, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %14, align 8
  %36 = sub nsw i64 %35, 1
  store i64 %36, i64* %14, align 8
  br label %37

37:                                               ; preds = %31, %22
  %38 = load i64, i64* @POSTGRES_EPOCH_JDATE, align 8
  %39 = load i64, i64* %14, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @INT_MAX, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %37
  store i32 -1, i32* %7, align 4
  br label %175

48:                                               ; preds = %43
  %49 = load i64, i64* %14, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %52 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %51, i32 0, i32 8
  %53 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %54 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %53, i32 0, i32 7
  %55 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %56 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %55, i32 0, i32 6
  %57 = call i32 @j2date(i32 %50, i64* %52, i64* %54, i32* %56)
  %58 = load i64, i64* %15, align 8
  %59 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %60 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %59, i32 0, i32 5
  %61 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %62 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %61, i32 0, i32 4
  %63 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %64 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %63, i32 0, i32 3
  %65 = load i64*, i64** %11, align 8
  %66 = call i32 @dt2time(i64 %58, i32* %60, i32* %62, i32* %64, i64* %65)
  %67 = load i32*, i32** %9, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %48
  %70 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %71 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %70, i32 0, i32 0
  store i32 -1, i32* %71, align 8
  %72 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %73 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %75 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %74, i32 0, i32 2
  store i8* null, i8** %75, align 8
  %76 = load i8**, i8*** %12, align 8
  %77 = icmp ne i8** %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i8**, i8*** %12, align 8
  store i8* null, i8** %79, align 8
  br label %80

80:                                               ; preds = %78, %69
  store i32 0, i32* %7, align 4
  br label %175

81:                                               ; preds = %48
  %82 = load i64, i64* %8, align 8
  %83 = load i64*, i64** %11, align 8
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %82, %84
  %86 = load i64, i64* @USECS_PER_SEC, align 8
  %87 = sdiv i64 %85, %86
  %88 = load i64, i64* @POSTGRES_EPOCH_JDATE, align 8
  %89 = load i64, i64* @UNIX_EPOCH_JDATE, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i64, i64* @SECS_PER_DAY, align 8
  %92 = mul nsw i64 %90, %91
  %93 = add nsw i64 %87, %92
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  store i64 %94, i64* %16, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %161

98:                                               ; preds = %81
  %99 = load i32*, i32** %13, align 8
  %100 = call %struct.pg_tm* @pg_localtime(i64* %16, i32* %99)
  store %struct.pg_tm* %100, %struct.pg_tm** %17, align 8
  %101 = load %struct.pg_tm*, %struct.pg_tm** %17, align 8
  %102 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1900
  %105 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %106 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %105, i32 0, i32 8
  store i64 %104, i64* %106, align 8
  %107 = load %struct.pg_tm*, %struct.pg_tm** %17, align 8
  %108 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  %111 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %112 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %111, i32 0, i32 7
  store i64 %110, i64* %112, align 8
  %113 = load %struct.pg_tm*, %struct.pg_tm** %17, align 8
  %114 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %117 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 4
  %118 = load %struct.pg_tm*, %struct.pg_tm** %17, align 8
  %119 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %122 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 8
  %123 = load %struct.pg_tm*, %struct.pg_tm** %17, align 8
  %124 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %127 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load %struct.pg_tm*, %struct.pg_tm** %17, align 8
  %129 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %132 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  %133 = load %struct.pg_tm*, %struct.pg_tm** %17, align 8
  %134 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %137 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.pg_tm*, %struct.pg_tm** %17, align 8
  %139 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %142 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.pg_tm*, %struct.pg_tm** %17, align 8
  %144 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %147 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %149 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 0, %150
  %152 = load i32*, i32** %9, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i8**, i8*** %12, align 8
  %154 = icmp ne i8** %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %98
  %156 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %157 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load i8**, i8*** %12, align 8
  store i8* %158, i8** %159, align 8
  br label %160

160:                                              ; preds = %155, %98
  br label %174

161:                                              ; preds = %81
  %162 = load i32*, i32** %9, align 8
  store i32 0, i32* %162, align 4
  %163 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %164 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %163, i32 0, i32 0
  store i32 -1, i32* %164, align 8
  %165 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %166 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %165, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = load %struct.pg_tm*, %struct.pg_tm** %10, align 8
  %168 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %167, i32 0, i32 2
  store i8* null, i8** %168, align 8
  %169 = load i8**, i8*** %12, align 8
  %170 = icmp ne i8** %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %161
  %172 = load i8**, i8*** %12, align 8
  store i8* null, i8** %172, align 8
  br label %173

173:                                              ; preds = %171, %161
  br label %174

174:                                              ; preds = %173, %160
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %174, %80, %47
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i32 @TMODULO(i64, i64, i64) #1

declare dso_local i64 @INT64CONST(i32) #1

declare dso_local i32 @j2date(i32, i64*, i64*, i32*) #1

declare dso_local i32 @dt2time(i64, i32*, i32*, i32*, i64*) #1

declare dso_local %struct.pg_tm* @pg_localtime(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
