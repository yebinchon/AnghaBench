; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_xactdesc.c_ParseCommitRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_xactdesc.c_ParseCommitRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@MinSizeOfXactCommit = common dso_local global i32 0, align 4
@XLOG_XACT_HAS_INFO = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_DBINFO = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_SUBXACTS = common dso_local global i32 0, align 4
@MinSizeOfXactSubxacts = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_RELFILENODES = common dso_local global i32 0, align 4
@MinSizeOfXactRelfilenodes = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_INVALS = common dso_local global i32 0, align 4
@MinSizeOfXactInvals = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_TWOPHASE = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_GID = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_ORIGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ParseCommitRecord(i32 %0, %struct.TYPE_22__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_19__, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = bitcast %struct.TYPE_22__* %15 to i8*
  %17 = load i32, i32* @MinSizeOfXactCommit, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %7, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = call i32 @memset(%struct.TYPE_18__* %20, i32 0, i32 56)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 13
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @XLOG_XACT_HAS_INFO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %8, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %33, %3
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @XACT_XINFO_HAS_DBINFO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %9, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 8
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %50, %43
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @XACT_XINFO_HAS_SUBXACTS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %65
  %73 = load i8*, i8** %7, align 8
  %74 = bitcast i8* %73 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %10, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @MinSizeOfXactSubxacts, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %7, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %7, align 8
  br label %96

96:                                               ; preds = %72, %65
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @XACT_XINFO_HAS_RELFILENODES, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %96
  %104 = load i8*, i8** %7, align 8
  %105 = bitcast i8* %104 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %105, %struct.TYPE_17__** %11, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 9
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @MinSizeOfXactRelfilenodes, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %7, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8* %126, i8** %7, align 8
  br label %127

127:                                              ; preds = %103, %96
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @XACT_XINFO_HAS_INVALS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %127
  %135 = load i8*, i8** %7, align 8
  %136 = bitcast i8* %135 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %136, %struct.TYPE_20__** %12, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @MinSizeOfXactInvals, align 4
  %148 = load i8*, i8** %7, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** %7, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 %155
  store i8* %157, i8** %7, align 8
  br label %158

158:                                              ; preds = %134, %127
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @XACT_XINFO_HAS_TWOPHASE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %193

165:                                              ; preds = %158
  %166 = load i8*, i8** %7, align 8
  %167 = bitcast i8* %166 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %167, %struct.TYPE_15__** %13, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 4
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 4
  store i8* %174, i8** %7, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @XACT_XINFO_HAS_GID, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %165
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @strlcpy(i32 %184, i8* %185, i32 4)
  %187 = load i8*, i8** %7, align 8
  %188 = call i64 @strlen(i8* %187)
  %189 = add nsw i64 %188, 1
  %190 = load i8*, i8** %7, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 %189
  store i8* %191, i8** %7, align 8
  br label %192

192:                                              ; preds = %181, %165
  br label %193

193:                                              ; preds = %192, %158
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @XACT_XINFO_HAS_ORIGIN, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %193
  %201 = load i8*, i8** %7, align 8
  %202 = call i32 @memcpy(%struct.TYPE_19__* %14, i8* %201, i32 8)
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 4
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 4
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 8
  store i8* %212, i8** %7, align 8
  br label %213

213:                                              ; preds = %200, %193
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
