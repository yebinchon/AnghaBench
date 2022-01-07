; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_logtape.c_LogicalTapeBackspace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_logtape.c_LogicalTapeBackspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@BLCKSZ = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unexpected end of tape\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"broken tape, next of block %ld is %ld, expected %ld\00", align 1
@TapeBlockPayloadSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LogicalTapeBackspace(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i1 [ false, %3 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BLCKSZ, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ule i64 %40, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %19
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %4, align 8
  br label %144

54:                                               ; preds = %19
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %118, %54
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %136

63:                                               ; preds = %59
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.TYPE_8__* @TapeBlockGetTrailer(i64 %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp eq i64 %70, -1
  br i1 %71, label %72, label %87

72:                                               ; preds = %63
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @ERROR, align 4
  %82 = call i32 (i32, i8*, ...) @elog(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %72
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %4, align 8
  br label %144

87:                                               ; preds = %63
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @ltsReadBlock(%struct.TYPE_6__* %88, i64 %89, i8* %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = call %struct.TYPE_8__* @TapeBlockGetTrailer(i64 %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %87
  %106 = load i32, i32* @ERROR, align 4
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = call %struct.TYPE_8__* @TapeBlockGetTrailer(i64 %110)
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (i32, i8*, ...) @elog(i32 %106, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %107, i64 %113, i64 %116)
  br label %118

118:                                              ; preds = %105, %87
  %119 = load i64, i64* @TapeBlockPayloadSize, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 7
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = call %struct.TYPE_8__* @TapeBlockGetTrailer(i64 %127)
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 5
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* @TapeBlockPayloadSize, align 8
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %9, align 8
  br label %59

136:                                              ; preds = %59
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %7, align 8
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i64, i64* %7, align 8
  store i64 %143, i64* %4, align 8
  br label %144

144:                                              ; preds = %136, %83, %46
  %145 = load i64, i64* %4, align 8
  ret i64 %145
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_8__* @TapeBlockGetTrailer(i64) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @ltsReadBlock(%struct.TYPE_6__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
