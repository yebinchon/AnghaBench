; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_logtape.c_LogicalTapeWrite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_logtape.c_LogicalTapeWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i8*, i64, i32, i32, i64, i32, i64 }
%struct.TYPE_9__ = type { i64, i64 }

@BLCKSZ = common dso_local global i64 0, align 8
@TapeBlockPayloadSize = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid logtape state: should be dirty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LogicalTapeWrite(%struct.TYPE_7__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br label %20

20:                                               ; preds = %14, %4
  %21 = phi i1 [ false, %4 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %9, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %20
  %45 = load i64, i64* @BLCKSZ, align 8
  %46 = call i64 @palloc(i64 %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* @BLCKSZ, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %44, %20
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %86

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, -1
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @Assert(i32 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = call i8* @ltsGetFreeBlock(%struct.TYPE_7__* %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call %struct.TYPE_9__* @TapeBlockGetTrailer(i8* %83)
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i64 -1, i64* %85, align 8
  br label %86

86:                                               ; preds = %58, %53
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BLCKSZ, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @Assert(i32 %92)
  br label %94

94:                                               ; preds = %192, %86
  %95 = load i64, i64* %8, align 8
  %96 = icmp ugt i64 %95, 0
  br i1 %96, label %97, label %199

97:                                               ; preds = %94
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TapeBlockPayloadSize, align 8
  %102 = icmp sge i64 %100, %101
  br i1 %102, label %103, label %146

103:                                              ; preds = %97
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @ERROR, align 4
  %110 = call i32 @elog(i32 %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = call i8* @ltsGetFreeBlock(%struct.TYPE_7__* %112)
  %114 = ptrtoint i8* %113 to i64
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call %struct.TYPE_9__* @TapeBlockGetTrailer(i8* %118)
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  store i64 %115, i64* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @ltsWriteBlock(%struct.TYPE_7__* %121, i32 %124, i8* %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call %struct.TYPE_9__* @TapeBlockGetTrailer(i8* %135)
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store i64 %132, i64* %137, align 8
  %138 = load i64, i64* %11, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 6
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 8
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %111, %97
  %147 = load i64, i64* @TapeBlockPayloadSize, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  store i64 %151, i64* %10, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* %8, align 8
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load i64, i64* %8, align 8
  store i64 %156, i64* %10, align 8
  br label %157

157:                                              ; preds = %155, %146
  %158 = load i64, i64* %10, align 8
  %159 = icmp ugt i64 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @Assert(i32 %160)
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = load i8*, i8** %7, align 8
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @memcpy(i8* %168, i8* %169, i64 %170)
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 7
  store i32 1, i32* %173, align 8
  %174 = load i64, i64* %10, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 8
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %181, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %157
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 8
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %186, %157
  %193 = load i8*, i8** %7, align 8
  %194 = load i64, i64* %10, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8* %195, i8** %7, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* %8, align 8
  %198 = sub i64 %197, %196
  store i64 %198, i64* %8, align 8
  br label %94

199:                                              ; preds = %94
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i8* @ltsGetFreeBlock(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_9__* @TapeBlockGetTrailer(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ltsWriteBlock(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
