; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/omf/extr_omf.c_r_bin_omf_get_entry.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/omf/extr_omf.c_r_bin_omf_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__**, %struct.TYPE_8__** }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"_start\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid segment index for symbol _start\0A\00", align 1
@OMF_BASE_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r_bin_omf_get_entry(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %141

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %137, %12
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %140

19:                                               ; preds = %13
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %22, i64 %23
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strcmp(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %137, label %30

30:                                               ; preds = %19
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %33, i64 %34
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = call i32 @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %141

46:                                               ; preds = %30
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 %53
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %49, i64 %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %66, i64 %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %63, %71
  %73 = load i64, i64* @OMF_BASE_ADDR, align 8
  %74 = add i64 %72, %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %82, i64 %83
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %79, i64 %89
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %7, align 8
  br label %94

94:                                               ; preds = %132, %46
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = icmp ne %struct.TYPE_12__* %95, null
  br i1 %96, label %97, label %136

97:                                               ; preds = %94
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %8, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %105, i64 %106
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %97
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %115, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %116, i64 %117
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %121, %124
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %125, %128
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  store i32 1, i32* %3, align 4
  br label %141

132:                                              ; preds = %97
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  store %struct.TYPE_12__* %135, %struct.TYPE_12__** %7, align 8
  br label %94

136:                                              ; preds = %94
  br label %137

137:                                              ; preds = %136, %19
  %138 = load i64, i64* %6, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %6, align 8
  br label %13

140:                                              ; preds = %13
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %113, %44, %11
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
