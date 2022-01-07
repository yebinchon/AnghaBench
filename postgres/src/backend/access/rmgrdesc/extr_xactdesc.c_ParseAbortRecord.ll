; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_xactdesc.c_ParseAbortRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_xactdesc.c_ParseAbortRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@MinSizeOfXactAbort = common dso_local global i32 0, align 4
@XLOG_XACT_HAS_INFO = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_DBINFO = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_SUBXACTS = common dso_local global i32 0, align 4
@MinSizeOfXactSubxacts = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_RELFILENODES = common dso_local global i32 0, align 4
@MinSizeOfXactRelfilenodes = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_TWOPHASE = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_GID = common dso_local global i32 0, align 4
@XACT_XINFO_HAS_ORIGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ParseAbortRecord(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_18__, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = bitcast %struct.TYPE_20__* %14 to i8*
  %16 = load i32, i32* @MinSizeOfXactAbort, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %7, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = call i32 @memset(%struct.TYPE_17__* %19, i32 0, i32 48)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @XLOG_XACT_HAS_INFO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %8, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %32, %3
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @XACT_XINFO_HAS_DBINFO, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %51, %struct.TYPE_19__** %9, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  store i8* %63, i8** %7, align 8
  br label %64

64:                                               ; preds = %49, %42
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @XACT_XINFO_HAS_SUBXACTS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %64
  %72 = load i8*, i8** %7, align 8
  %73 = bitcast i8* %72 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %73, %struct.TYPE_15__** %10, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @MinSizeOfXactSubxacts, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %7, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 %92
  store i8* %94, i8** %7, align 8
  br label %95

95:                                               ; preds = %71, %64
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @XACT_XINFO_HAS_RELFILENODES, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %95
  %103 = load i8*, i8** %7, align 8
  %104 = bitcast i8* %103 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %104, %struct.TYPE_16__** %11, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @MinSizeOfXactRelfilenodes, align 4
  %116 = load i8*, i8** %7, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %7, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 %123
  store i8* %125, i8** %7, align 8
  br label %126

126:                                              ; preds = %102, %95
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @XACT_XINFO_HAS_TWOPHASE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %161

133:                                              ; preds = %126
  %134 = load i8*, i8** %7, align 8
  %135 = bitcast i8* %134 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %12, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 4
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 4
  store i8* %142, i8** %7, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @XACT_XINFO_HAS_GID, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %133
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 @strlcpy(i32 %152, i8* %153, i32 4)
  %155 = load i8*, i8** %7, align 8
  %156 = call i64 @strlen(i8* %155)
  %157 = add nsw i64 %156, 1
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 %157
  store i8* %159, i8** %7, align 8
  br label %160

160:                                              ; preds = %149, %133
  br label %161

161:                                              ; preds = %160, %126
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @XACT_XINFO_HAS_ORIGIN, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %161
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @memcpy(%struct.TYPE_18__* %13, i8* %169, i32 8)
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 4
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 8
  store i8* %180, i8** %7, align 8
  br label %181

181:                                              ; preds = %168, %161
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
