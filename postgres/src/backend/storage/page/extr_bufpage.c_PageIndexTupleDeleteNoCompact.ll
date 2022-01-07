; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageIndexTupleDeleteNoCompact.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageIndexTupleDeleteNoCompact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }

@SizeOfPageHeaderData = common dso_local global i64 0, align 8
@BLCKSZ = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"corrupted page pointers: lower = %u, upper = %u, special = %u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid index offnum: %u\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"corrupted line pointer: offset = %u, size = %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PageIndexTupleDeleteNoCompact(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SizeOfPageHeaderData, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %52, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %52, label %27

27:                                               ; preds = %19
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %52, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BLCKSZ, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @MAXALIGN(i32 %48)
  %50 = zext i32 %49 to i64
  %51 = icmp ne i64 %44, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %41, %35, %27, %19, %2
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63, i64 %66)
  %68 = call i32 @ereport(i32 %53, i32 %67)
  br label %69

69:                                               ; preds = %52, %41
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = call i32 @PageGetMaxOffsetNumber(%struct.TYPE_13__* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74, %69
  %79 = load i32, i32* @ERROR, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @elog(i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call %struct.TYPE_14__* @PageGetItemId(%struct.TYPE_13__* %83, i32 %84)
  store %struct.TYPE_14__* %85, %struct.TYPE_14__** %7, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %87 = call i64 @ItemIdHasStorage(%struct.TYPE_14__* %86)
  %88 = call i32 @Assert(i64 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = call i32 @ItemIdGetLength(%struct.TYPE_14__* %89)
  store i32 %90, i32* %8, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = call i32 @ItemIdGetOffset(%struct.TYPE_14__* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %113, label %99

99:                                               ; preds = %82
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %100, %101
  %103 = zext i32 %102 to i64
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %99
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @MAXALIGN(i32 %110)
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %108, %99, %82
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %116 = call i32 @errcode(i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  %120 = call i32 @ereport(i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %113, %108
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @MAXALIGN(i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %129 = call i32 @ItemIdSetUnused(%struct.TYPE_14__* %128)
  br label %137

130:                                              ; preds = %121
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub i64 %133, 4
  store i64 %134, i64* %132, align 8
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %130, %127
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %139 = bitcast %struct.TYPE_13__* %138 to i8*
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8* %143, i8** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %145, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %137
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* %8, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8*, i8** %6, align 8
  %156 = load i32, i32* %9, align 4
  %157 = zext i32 %156 to i64
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %157, %160
  %162 = trunc i64 %161 to i32
  %163 = call i32 @memmove(i8* %154, i8* %155, i32 %162)
  br label %164

164:                                              ; preds = %150, %137
  %165 = load i32, i32* %8, align 4
  %166 = zext i32 %165 to i64
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, %166
  store i64 %170, i64* %168, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %172 = call i32 @PageIsEmpty(%struct.TYPE_13__* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %202, label %174

174:                                              ; preds = %164
  store i32 1, i32* %11, align 4
  br label %175

175:                                              ; preds = %198, %174
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %201

179:                                              ; preds = %175
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %181 = load i32, i32* %11, align 4
  %182 = call %struct.TYPE_14__* @PageGetItemId(%struct.TYPE_13__* %180, i32 %181)
  store %struct.TYPE_14__* %182, %struct.TYPE_14__** %12, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %184 = call i64 @ItemIdHasStorage(%struct.TYPE_14__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %179
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %188 = call i32 @ItemIdGetOffset(%struct.TYPE_14__* %187)
  %189 = load i32, i32* %9, align 4
  %190 = icmp ule i32 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = add i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %191, %186, %179
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %175

201:                                              ; preds = %175
  br label %202

202:                                              ; preds = %201, %164
  ret void
}

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, ...) #1

declare dso_local i32 @PageGetMaxOffsetNumber(%struct.TYPE_13__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @PageGetItemId(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Assert(i64) #1

declare dso_local i64 @ItemIdHasStorage(%struct.TYPE_14__*) #1

declare dso_local i32 @ItemIdGetLength(%struct.TYPE_14__*) #1

declare dso_local i32 @ItemIdGetOffset(%struct.TYPE_14__*) #1

declare dso_local i32 @ItemIdSetUnused(%struct.TYPE_14__*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @PageIsEmpty(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
