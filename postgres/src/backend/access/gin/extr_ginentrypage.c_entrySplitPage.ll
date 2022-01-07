; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_entrySplitPage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_entrySplitPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i32 }

@InvalidOffsetNumber = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to add item to index page in \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, %struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*, i32*)* @entrySplitPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entrySplitPage(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_13__* %2, %struct.TYPE_14__* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [2 x %struct.TYPE_12__], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %32, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @BufferGetPage(i32 %33)
  %35 = call i32 @PageGetTempPageCopy(i32 %34)
  store i32 %35, i32* %25, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @BufferGetPage(i32 %36)
  %38 = call i32 @PageGetTempPageCopy(i32 %37)
  store i32 %38, i32* %26, align 4
  %39 = load i32, i32* %25, align 4
  %40 = call i32 @PageGetPageSize(i32 %39)
  store i32 %40, i32* %27, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = load i32, i32* %25, align 4
  %43 = load i64, i64* %15, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @entryPreparePage(%struct.TYPE_15__* %41, i32 %42, i64 %43, %struct.TYPE_14__* %44, i32 %45)
  %47 = load i32, i32* %25, align 4
  %48 = call i64 @PageGetMaxOffsetNumber(i32 %47)
  store i64 %48, i64* %17, align 8
  %49 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %28, i64 0, i64 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 16
  store i8* %51, i8** %22, align 8
  %52 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %52, i64* %16, align 8
  br label %53

53:                                               ; preds = %108, %7
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %17, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %111

57:                                               ; preds = %53
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @IndexTupleSize(i64 %64)
  %66 = call i32 @MAXALIGN(i32 %65)
  store i32 %66, i32* %21, align 4
  %67 = load i8*, i8** %22, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %21, align 4
  %72 = call i32 @memcpy(i8* %67, i64 %70, i32 %71)
  %73 = load i32, i32* %21, align 4
  %74 = load i8*, i8** %22, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %22, align 8
  %77 = load i32, i32* %21, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, 4
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %19, align 4
  br label %84

84:                                               ; preds = %61, %57
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i64, i64* %16, align 8
  %88 = call i32 @PageGetItemId(i32 %86, i64 %87)
  %89 = call i64 @PageGetItem(i32 %85, i32 %88)
  store i64 %89, i64* %23, align 8
  %90 = load i64, i64* %23, align 8
  %91 = call i32 @IndexTupleSize(i64 %90)
  %92 = call i32 @MAXALIGN(i32 %91)
  store i32 %92, i32* %21, align 4
  %93 = load i8*, i8** %22, align 8
  %94 = load i64, i64* %23, align 8
  %95 = load i32, i32* %21, align 4
  %96 = call i32 @memcpy(i8* %93, i64 %94, i32 %95)
  %97 = load i32, i32* %21, align 4
  %98 = load i8*, i8** %22, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %22, align 8
  %101 = load i32, i32* %21, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, 4
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %84
  %109 = load i64, i64* %16, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %16, align 8
  br label %53

111:                                              ; preds = %53
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %17, align 8
  %114 = add nsw i64 %113, 1
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %116, label %139

116:                                              ; preds = %111
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @IndexTupleSize(i64 %119)
  %121 = call i32 @MAXALIGN(i32 %120)
  store i32 %121, i32* %21, align 4
  %122 = load i8*, i8** %22, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %21, align 4
  %127 = call i32 @memcpy(i8* %122, i64 %125, i32 %126)
  %128 = load i32, i32* %21, align 4
  %129 = load i8*, i8** %22, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %22, align 8
  %132 = load i32, i32* %21, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %133, 4
  %135 = load i32, i32* %19, align 4
  %136 = sext i32 %135 to i64
  %137 = add i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %19, align 4
  br label %139

139:                                              ; preds = %116, %111
  %140 = load i32, i32* %26, align 4
  %141 = load i32, i32* %25, align 4
  %142 = call %struct.TYPE_11__* @GinPageGetOpaque(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %27, align 4
  %146 = call i32 @GinInitPage(i32 %140, i32 %144, i32 %145)
  %147 = load i32, i32* %25, align 4
  %148 = load i32, i32* %26, align 4
  %149 = call %struct.TYPE_11__* @GinPageGetOpaque(i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %27, align 4
  %153 = call i32 @GinInitPage(i32 %147, i32 %151, i32 %152)
  %154 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %28, i64 0, i64 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 16
  store i8* %156, i8** %22, align 8
  %157 = load i64, i64* %17, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %17, align 8
  store i32 0, i32* %20, align 4
  %159 = load i32, i32* %25, align 4
  store i32 %159, i32* %24, align 4
  %160 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %160, i64* %16, align 8
  br label %161

161:                                              ; preds = %215, %139
  %162 = load i64, i64* %16, align 8
  %163 = load i64, i64* %17, align 8
  %164 = icmp sle i64 %162, %163
  br i1 %164, label %165, label %218

165:                                              ; preds = %161
  %166 = load i8*, i8** %22, align 8
  %167 = ptrtoint i8* %166 to i64
  store i64 %167, i64* %23, align 8
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %19, align 4
  %170 = sdiv i32 %169, 2
  %171 = icmp sgt i32 %168, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %165
  %173 = load i64, i64* %18, align 8
  %174 = load i64, i64* @InvalidOffsetNumber, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i64, i64* %16, align 8
  %178 = sub nsw i64 %177, 1
  store i64 %178, i64* %18, align 8
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i32, i32* %26, align 4
  store i32 %180, i32* %24, align 4
  br label %191

181:                                              ; preds = %165
  %182 = load i64, i64* %23, align 8
  %183 = call i32 @IndexTupleSize(i64 %182)
  %184 = call i32 @MAXALIGN(i32 %183)
  %185 = sext i32 %184 to i64
  %186 = add i64 %185, 4
  %187 = load i32, i32* %20, align 4
  %188 = sext i32 %187 to i64
  %189 = add i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %20, align 4
  br label %191

191:                                              ; preds = %181, %179
  %192 = load i32, i32* %24, align 4
  %193 = load i64, i64* %23, align 8
  %194 = trunc i64 %193 to i32
  %195 = load i64, i64* %23, align 8
  %196 = call i32 @IndexTupleSize(i64 %195)
  %197 = load i64, i64* @InvalidOffsetNumber, align 8
  %198 = call i64 @PageAddItem(i32 %192, i32 %194, i32 %196, i64 %197, i32 0, i32 0)
  %199 = load i64, i64* @InvalidOffsetNumber, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %191
  %202 = load i32, i32* @ERROR, align 4
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @RelationGetRelationName(i32 %205)
  %207 = call i32 @elog(i32 %202, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %201, %191
  %209 = load i64, i64* %23, align 8
  %210 = call i32 @IndexTupleSize(i64 %209)
  %211 = call i32 @MAXALIGN(i32 %210)
  %212 = load i8*, i8** %22, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8* %214, i8** %22, align 8
  br label %215

215:                                              ; preds = %208
  %216 = load i64, i64* %16, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %16, align 8
  br label %161

218:                                              ; preds = %161
  %219 = load i32, i32* %25, align 4
  %220 = load i32*, i32** %13, align 8
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* %26, align 4
  %222 = load i32*, i32** %14, align 8
  store i32 %221, i32* %222, align 4
  ret void
}

declare dso_local i32 @PageGetTempPageCopy(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @PageGetPageSize(i32) #1

declare dso_local i32 @entryPreparePage(%struct.TYPE_15__*, i32, i64, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @IndexTupleSize(i64) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @GinInitPage(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @GinPageGetOpaque(i32) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
