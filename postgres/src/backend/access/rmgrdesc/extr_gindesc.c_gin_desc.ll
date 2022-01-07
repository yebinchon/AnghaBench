; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_gindesc.c_gin_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_gindesc.c_gin_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i8 }

@XLR_INFO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"isdata: %c isleaf: %c\00", align 1
@GIN_INSERT_ISDATA = common dso_local global i32 0, align 4
@GIN_INSERT_ISLEAF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c" children: %u/%u\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c" (full page image)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c" (full page image, for WAL verification)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" isdelete: %c\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c" pitem: %u-%u/%u\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"isrootsplit: %c\00", align 1
@GIN_SPLIT_ROOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c" isdata: %c isleaf: %c\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"ndeleted: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gin_desc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @XLogRecGetData(i32* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @XLogRecGetInfo(i32* %17)
  %19 = load i32, i32* @XLR_INFO_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %206 [
    i32 136, label %23
    i32 133, label %24
    i32 131, label %137
    i32 128, label %171
    i32 129, label %172
    i32 134, label %196
    i32 130, label %197
    i32 132, label %198
    i32 135, label %199
  ]

23:                                               ; preds = %2
  br label %206

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %7, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GIN_INSERT_ISDATA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 84, i32 70
  %36 = trunc i32 %35 to i8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GIN_INSERT_ISLEAF, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 84, i32 70
  %45 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 signext %36, i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @GIN_INSERT_ISLEAF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %24
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = call i32 @BlockIdGetBlockNumber(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = call i32 @BlockIdGetBlockNumber(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %64, i8** %8, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %9, align 4
  %67 = trunc i32 %66 to i8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8 signext %67, i32 %68)
  br label %70

70:                                               ; preds = %52, %24
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @XLogRecHasBlockImage(i32* %71, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @XLogRecBlockImageApply(i32* %75, i32 0)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @appendStringInfoString(i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @appendStringInfoString(i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78
  br label %136

85:                                               ; preds = %70
  %86 = load i32*, i32** %4, align 8
  %87 = call i8* @XLogRecGetBlockData(i32* %86, i32 0, i32* null)
  store i8* %87, i8** %11, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @GIN_INSERT_ISDATA, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %3, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = bitcast i8* %96 to %struct.TYPE_10__*
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 84, i32 70
  %103 = trunc i32 %102 to i8
  %104 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8 signext %103)
  br label %135

105:                                              ; preds = %85
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @GIN_INSERT_ISLEAF, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load i32, i32* %3, align 4
  %114 = load i8*, i8** %11, align 8
  %115 = bitcast i8* %114 to i32*
  %116 = call i32 @desc_recompress_leaf(i32 %113, i32* %115)
  br label %134

117:                                              ; preds = %105
  %118 = load i8*, i8** %11, align 8
  %119 = bitcast i8* %118 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %12, align 8
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = call i32 @PostingItemGetBlockNumber(%struct.TYPE_14__* %122)
  %124 = trunc i32 %123 to i8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = call i32 @ItemPointerGetBlockNumber(i32* %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = call i32 @ItemPointerGetOffsetNumber(i32* %131)
  %133 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8 signext %124, i32 %128, i32 %132)
  br label %134

134:                                              ; preds = %117, %112
  br label %135

135:                                              ; preds = %134, %94
  br label %136

136:                                              ; preds = %135, %84
  br label %206

137:                                              ; preds = %2
  %138 = load i8*, i8** %5, align 8
  %139 = bitcast i8* %138 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %13, align 8
  %140 = load i32, i32* %3, align 4
  %141 = load i8*, i8** %5, align 8
  %142 = bitcast i8* %141 to %struct.TYPE_9__*
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @GIN_SPLIT_ROOT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 84, i32 70
  %150 = trunc i32 %149 to i8
  %151 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8 signext %150)
  %152 = load i32, i32* %3, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @GIN_INSERT_ISDATA, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 84, i32 70
  %161 = trunc i32 %160 to i8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @GIN_INSERT_ISLEAF, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 84, i32 70
  %170 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8 signext %161, i32 %169)
  br label %206

171:                                              ; preds = %2
  br label %206

172:                                              ; preds = %2
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @XLogRecHasBlockImage(i32* %173, i32 0)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = load i32*, i32** %4, align 8
  %178 = call i32 @XLogRecBlockImageApply(i32* %177, i32 0)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @appendStringInfoString(i32 %181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %186

183:                                              ; preds = %176
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @appendStringInfoString(i32 %184, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %180
  br label %195

187:                                              ; preds = %172
  %188 = load i32*, i32** %4, align 8
  %189 = call i8* @XLogRecGetBlockData(i32* %188, i32 0, i32* null)
  %190 = bitcast i8* %189 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %190, %struct.TYPE_8__** %14, align 8
  %191 = load i32, i32* %3, align 4
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = call i32 @desc_recompress_leaf(i32 %191, i32* %193)
  br label %195

195:                                              ; preds = %187, %186
  br label %206

196:                                              ; preds = %2
  br label %206

197:                                              ; preds = %2
  br label %206

198:                                              ; preds = %2
  br label %206

199:                                              ; preds = %2
  %200 = load i32, i32* %3, align 4
  %201 = load i8*, i8** %5, align 8
  %202 = bitcast i8* %201 to %struct.TYPE_13__*
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i8, i8* %203, align 1
  %205 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8 signext %204)
  br label %206

206:                                              ; preds = %2, %199, %198, %197, %196, %195, %171, %137, %136, %23
  ret void
}

declare dso_local i8* @XLogRecGetData(i32*) #1

declare dso_local i32 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8 signext, ...) #1

declare dso_local i32 @BlockIdGetBlockNumber(i32) #1

declare dso_local i32 @XLogRecHasBlockImage(i32*, i32) #1

declare dso_local i32 @XLogRecBlockImageApply(i32*, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i8* @XLogRecGetBlockData(i32*, i32, i32*) #1

declare dso_local i32 @desc_recompress_leaf(i32, i32*) #1

declare dso_local i32 @PostingItemGetBlockNumber(%struct.TYPE_14__*) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
