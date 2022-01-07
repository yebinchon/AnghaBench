; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_hashdesc.c_hash_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_hashdesc.c_hash_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8, i8 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_13__ = type { i8, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i8, i8 }
%struct.TYPE_19__ = type { i8, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i8, i8 }

@XLR_INFO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"num_tuples %g, fillfactor %d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"bmsize %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"off %u\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"bmsize %d, bmpage_found %c\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"new_bucket %u, meta_page_masks_updated %c, issplitpoint_changed %c\00", align 1
@XLH_SPLIT_META_UPDATE_MASKS = common dso_local global i32 0, align 4
@XLH_SPLIT_META_UPDATE_SPLITPOINT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"old_bucket_flag %u, new_bucket_flag %u\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"ntups %d, is_primary %c\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"prevblkno %u, nextblkno %u, ntups %d, is_primary %c\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"clear_dead_marking %c, is_primary %c\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ntuples %g\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"ntuples %d, latest removed xid %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_desc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @XLogRecGetData(i32* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @XLogRecGetInfo(i32* %20)
  %22 = load i32, i32* @XLR_INFO_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %181 [
    i32 135, label %26
    i32 136, label %38
    i32 134, label %47
    i32 138, label %56
    i32 132, label %70
    i32 131, label %95
    i32 133, label %107
    i32 130, label %121
    i32 137, label %142
    i32 129, label %160
    i32 128, label %169
  ]

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %7, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 1
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 signext %32, i32 %36)
  br label %181

38:                                               ; preds = %2
  %39 = load i8*, i8** %5, align 8
  %40 = bitcast i8* %39 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %8, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = trunc i32 %44 to i8
  %46 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 signext %45)
  br label %181

47:                                               ; preds = %2
  %48 = load i8*, i8** %5, align 8
  %49 = bitcast i8* %48 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %9, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = trunc i32 %53 to i8
  %55 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8 signext %54)
  br label %181

56:                                               ; preds = %2
  %57 = load i8*, i8** %5, align 8
  %58 = bitcast i8* %57 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %10, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i8, i8* %61, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 84, i32 70
  %69 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8 signext %62, i32 %68)
  br label %181

70:                                               ; preds = %2
  %71 = load i8*, i8** %5, align 8
  %72 = bitcast i8* %71 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %72, %struct.TYPE_18__** %11, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = trunc i32 %76 to i8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @XLH_SPLIT_META_UPDATE_MASKS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 84, i32 70
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @XLH_SPLIT_META_UPDATE_SPLITPOINT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 84, i32 70
  %94 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %73, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i8 signext %77, i32 %85, i32 %93)
  br label %181

95:                                               ; preds = %2
  %96 = load i8*, i8** %5, align 8
  %97 = bitcast i8* %96 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %97, %struct.TYPE_17__** %12, align 8
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i8, i8* %100, align 1
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8 signext %101, i32 %105)
  br label %181

107:                                              ; preds = %2
  %108 = load i8*, i8** %5, align 8
  %109 = bitcast i8* %108 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %109, %struct.TYPE_19__** %13, align 8
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load i8, i8* %112, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 84, i32 70
  %120 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8 signext %113, i32 %119)
  br label %181

121:                                              ; preds = %2
  %122 = load i8*, i8** %5, align 8
  %123 = bitcast i8* %122 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %123, %struct.TYPE_16__** %14, align 8
  %124 = load i32, i32* %3, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = trunc i32 %127 to i8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 84, i32 70
  %141 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %124, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i8 signext %128, i32 %131, i32 %134, i32 %140)
  br label %181

142:                                              ; preds = %2
  %143 = load i8*, i8** %5, align 8
  %144 = bitcast i8* %143 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %144, %struct.TYPE_12__** %15, align 8
  %145 = load i32, i32* %3, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 84, i32 70
  %152 = trunc i32 %151 to i8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 84, i32 70
  %159 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8 signext %152, i32 %158)
  br label %181

160:                                              ; preds = %2
  %161 = load i8*, i8** %5, align 8
  %162 = bitcast i8* %161 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %162, %struct.TYPE_15__** %16, align 8
  %163 = load i32, i32* %3, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = trunc i32 %166 to i8
  %168 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8 signext %167)
  br label %181

169:                                              ; preds = %2
  %170 = load i8*, i8** %5, align 8
  %171 = bitcast i8* %170 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %171, %struct.TYPE_14__** %17, align 8
  %172 = load i32, i32* %3, align 4
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i8, i8* %174, align 1
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = call i32 (i32, i8*, i8, ...) @appendStringInfo(i32 %172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8 signext %175, i32 %179)
  br label %181

181:                                              ; preds = %2, %169, %160, %142, %121, %107, %95, %70, %56, %47, %38, %26
  ret void
}

declare dso_local i8* @XLogRecGetData(i32*) #1

declare dso_local i32 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
