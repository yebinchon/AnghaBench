; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_set_relative.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_set_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32, %struct.TYPE_12__*)* @timelib_set_relative to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timelib_set_relative(i8** %0, i32 %1, i32 %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = call %struct.TYPE_11__* @timelib_lookup_relunit(i8** %10)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %9, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %162

14:                                               ; preds = %4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %162 [
    i32 134, label %18
    i32 131, label %31
    i32 133, label %44
    i32 135, label %57
    i32 136, label %70
    i32 132, label %83
    i32 128, label %96
    i32 129, label %109
    i32 130, label %143
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %23
  store i32 %30, i32* %28, align 4
  br label %162

31:                                               ; preds = %14
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %36
  store i32 %43, i32* %41, align 4
  br label %162

44:                                               ; preds = %14
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %49
  store i32 %56, i32* %54, align 4
  br label %162

57:                                               ; preds = %14
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %62
  store i32 %69, i32* %67, align 4
  br label %162

70:                                               ; preds = %14
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %75
  store i32 %82, i32* %80, align 4
  br label %162

83:                                               ; preds = %14
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %88
  store i32 %95, i32* %93, align 4
  br label %162

96:                                               ; preds = %14
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %97, %100
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %101
  store i32 %108, i32* %106, align 4
  br label %162

109:                                              ; preds = %14
  %110 = call i32 (...) @TIMELIB_HAVE_WEEKDAY_RELATIVE()
  %111 = call i32 (...) @TIMELIB_UNHAVE_TIME()
  %112 = load i32, i32* %6, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, 1
  br label %119

117:                                              ; preds = %109
  %118 = load i32, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi i32 [ %116, %114 ], [ %118, %117 ]
  %121 = mul nsw i32 %120, 7
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %121
  store i32 %128, i32* %126, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 7
  store i32 %131, i32* %136, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 8
  store i32 %137, i32* %142, align 4
  br label %162

143:                                              ; preds = %14
  %144 = call i32 (...) @TIMELIB_HAVE_SPECIAL_RELATIVE()
  %145 = call i32 (...) @TIMELIB_UNHAVE_TIME()
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 9
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i32 %148, i32* %154, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 9
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  store i32 %155, i32* %161, align 4
  br label %162

162:                                              ; preds = %13, %143, %14, %119, %96, %83, %70, %57, %44, %31, %18
  ret void
}

declare dso_local %struct.TYPE_11__* @timelib_lookup_relunit(i8**) #1

declare dso_local i32 @TIMELIB_HAVE_WEEKDAY_RELATIVE(...) #1

declare dso_local i32 @TIMELIB_UNHAVE_TIME(...) #1

declare dso_local i32 @TIMELIB_HAVE_SPECIAL_RELATIVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
