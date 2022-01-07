; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageRepairFragmentation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageRepairFragmentation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@MaxHeapTuplesPerPage = common dso_local global i32 0, align 4
@SizeOfPageHeaderData = common dso_local global i64 0, align 8
@BLCKSZ = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"corrupted page pointers: lower = %u, upper = %u, special = %u\00", align 1
@FirstOffsetNumber = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"corrupted line pointer: %u\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"corrupted item lengths: total %u, available space %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PageRepairFragmentation(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %2, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %2, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* @MaxHeapTuplesPerPage, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %6, align 8
  %30 = alloca %struct.TYPE_5__, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @SizeOfPageHeaderData, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %51, label %34

34:                                               ; preds = %1
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @BLCKSZ, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @MAXALIGN(i64 %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %46, %42, %38, %34, %1
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load i64, i64* %3, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %56, i64 %57, i64 %58)
  %60 = call i32 @ereport(i32 %52, i32 %59)
  br label %61

61:                                               ; preds = %51, %46
  %62 = load i64, i64* %2, align 8
  %63 = call i32 @PageGetMaxOffsetNumber(i64 %62)
  store i32 %63, i32* %10, align 4
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %8, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %12, align 4
  %64 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %136, %61
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %139

69:                                               ; preds = %65
  %70 = load i64, i64* %2, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @PageGetItemId(i64 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @ItemIdIsUsed(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %130

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @ItemIdHasStorage(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %129

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ItemIdGetOffset(i32 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %4, align 8
  %93 = trunc i64 %92 to i32
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %80
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %5, align 8
  %100 = trunc i64 %99 to i32
  %101 = icmp sge i32 %98, %100
  br label %102

102:                                              ; preds = %95, %80
  %103 = phi i1 [ true, %80 ], [ %101, %95 ]
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i32, i32* @ERROR, align 4
  %109 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %110 = call i32 @errcode(i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = call i32 @ereport(i32 %108, i32 %114)
  br label %116

116:                                              ; preds = %107, %102
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @ItemIdGetLength(i32 %117)
  %119 = call i64 @MAXALIGN(i64 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %14, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %14, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 1
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %8, align 8
  br label %129

129:                                              ; preds = %116, %76
  br label %135

130:                                              ; preds = %69
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @ItemIdSetUnused(i32 %131)
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %130, %129
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %65

139:                                              ; preds = %65
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %141 = ptrtoint %struct.TYPE_5__* %140 to i64
  %142 = ptrtoint %struct.TYPE_5__* %30 to i64
  %143 = sub i64 %141, %142
  %144 = sdiv exact i64 %143, 16
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %139
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* %2, align 8
  %151 = inttoptr i64 %150 to %struct.TYPE_6__*
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i64 %149, i64* %152, align 8
  br label %174

153:                                              ; preds = %139
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* %5, align 8
  %156 = load i64, i64* %3, align 8
  %157 = sub nsw i64 %155, %156
  %158 = icmp sgt i64 %154, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %153
  %160 = load i32, i32* @ERROR, align 4
  %161 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %162 = call i32 @errcode(i32 %161)
  %163 = load i64, i64* %14, align 8
  %164 = trunc i64 %163 to i32
  %165 = load i64, i64* %5, align 8
  %166 = load i64, i64* %3, align 8
  %167 = sub nsw i64 %165, %166
  %168 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %164, i64 %167)
  %169 = call i32 @ereport(i32 %160, i32 %168)
  br label %170

170:                                              ; preds = %159, %153
  %171 = load i32, i32* %11, align 4
  %172 = load i64, i64* %2, align 8
  %173 = call i32 @compactify_tuples(%struct.TYPE_5__* %30, i32 %171, i64 %172)
  br label %174

174:                                              ; preds = %170, %148
  %175 = load i32, i32* %12, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i64, i64* %2, align 8
  %179 = call i32 @PageSetHasFreeLinePointers(i64 %178)
  br label %183

180:                                              ; preds = %174
  %181 = load i64, i64* %2, align 8
  %182 = call i32 @PageClearHasFreeLinePointers(i64 %181)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %184)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MAXALIGN(i64) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32, ...) #2

declare dso_local i32 @PageGetMaxOffsetNumber(i64) #2

declare dso_local i32 @PageGetItemId(i64, i32) #2

declare dso_local i64 @ItemIdIsUsed(i32) #2

declare dso_local i64 @ItemIdHasStorage(i32) #2

declare dso_local i32 @ItemIdGetOffset(i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @ItemIdGetLength(i32) #2

declare dso_local i32 @ItemIdSetUnused(i32) #2

declare dso_local i32 @compactify_tuples(%struct.TYPE_5__*, i32, i64) #2

declare dso_local i32 @PageSetHasFreeLinePointers(i64) #2

declare dso_local i32 @PageClearHasFreeLinePointers(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
