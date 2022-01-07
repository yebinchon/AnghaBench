; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_parse.c_hlfinditem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_parse.c_hlfinditem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }

@QI_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_14__*, i32, i8*, i32)* @hlfinditem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hlfinditem(%struct.TYPE_17__* %0, %struct.TYPE_14__* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = call %struct.TYPE_15__* @GETQUERY(%struct.TYPE_14__* %14)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %12, align 8
  br label %16

16:                                               ; preds = %28, %5
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %16
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = bitcast %struct.TYPE_16__* %35 to i8*
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 24
  %42 = trunc i64 %41 to i32
  %43 = call i64 @repalloc(i8* %36, i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_16__*
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %46, align 8
  br label %16

47:                                               ; preds = %16
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i64 %55
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %13, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @LIMITPOS(i32 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %142, %47
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %145

67:                                               ; preds = %61
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @QI_VAL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %139

73:                                               ; preds = %67
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = call i64 @GETOPERAND(%struct.TYPE_14__* %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %75, %79
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @tsCompareString(i64 %80, i32 %84, i8* %85, i32 %86, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %139

93:                                               ; preds = %73
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = icmp ne %struct.TYPE_13__* %96, null
  br i1 %97, label %98, label %133

98:                                               ; preds = %93
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %105
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %108 = call i32 @memcpy(%struct.TYPE_16__* %106, %struct.TYPE_16__* %107, i32 24)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %119, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  br label %138

133:                                              ; preds = %93
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %137, align 8
  br label %138

138:                                              ; preds = %133, %98
  br label %139

139:                                              ; preds = %138, %73, %67
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 1
  store %struct.TYPE_15__* %141, %struct.TYPE_15__** %12, align 8
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %61

145:                                              ; preds = %61
  ret void
}

declare dso_local %struct.TYPE_15__* @GETQUERY(%struct.TYPE_14__*) #1

declare dso_local i64 @repalloc(i8*, i32) #1

declare dso_local i32 @LIMITPOS(i32) #1

declare dso_local i64 @tsCompareString(i64, i32, i8*, i32, i32) #1

declare dso_local i64 @GETOPERAND(%struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
