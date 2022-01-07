; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_pqRowProcessor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_pqRowProcessor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i64, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i8*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i8* }

@PG_COPYRES_ATTRS = common dso_local global i32 0, align 4
@PG_COPYRES_EVENTS = common dso_local global i32 0, align 4
@PG_COPYRES_NOTICEHOOKS = common dso_local global i32 0, align 4
@NULL_LEN = common dso_local global i32 0, align 4
@PGRES_SINGLE_TUPLE = common dso_local global i32 0, align 4
@PGASYNC_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqRowProcessor(%struct.TYPE_17__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %8, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = load i32, i32* @PG_COPYRES_ATTRS, align 4
  %30 = load i32, i32* @PG_COPYRES_EVENTS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PG_COPYRES_NOTICEHOOKS, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.TYPE_14__* @PQcopyResult(%struct.TYPE_14__* %28, i32 %33)
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %6, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %167

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 16
  %44 = trunc i64 %43 to i32
  %45 = call i64 @pqResultAlloc(%struct.TYPE_14__* %40, i32 %44, i32 1)
  %46 = inttoptr i64 %45 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %9, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %48 = icmp eq %struct.TYPE_15__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %157

50:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %126, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %129

55:                                               ; preds = %51
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %55
  %65 = load i32, i32* @NULL_LEN, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  store i8* %73, i8** %78, align 8
  br label %125

79:                                               ; preds = %55
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %12, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %12, align 4
  %94 = call i64 @pqResultAlloc(%struct.TYPE_14__* %90, i32 %92, i32 %93)
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %13, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %79
  br label %157

99:                                               ; preds = %79
  %100 = load i8*, i8** %13, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @memcpy(i8* %100, i32 %106, i32 %107)
  %109 = load i8*, i8** %13, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  store i32 %113, i32* %118, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  store i8* %119, i8** %124, align 8
  br label %125

125:                                              ; preds = %99, %64
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %51

129:                                              ; preds = %51
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %132 = load i8**, i8*** %5, align 8
  %133 = call i32 @pqAddTuple(%struct.TYPE_14__* %130, %struct.TYPE_15__* %131, i8** %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  br label %157

136:                                              ; preds = %129
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %136
  %142 = load i32, i32* @PGRES_SINGLE_TUPLE, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 2
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %149, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  store %struct.TYPE_14__* %150, %struct.TYPE_14__** %152, align 8
  %153 = load i32, i32* @PGASYNC_READY, align 4
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %141, %136
  store i32 1, i32* %3, align 4
  br label %167

157:                                              ; preds = %135, %98, %49
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = icmp ne %struct.TYPE_14__* %158, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %165 = call i32 @PQclear(%struct.TYPE_14__* %164)
  br label %166

166:                                              ; preds = %163, %157
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %156, %37
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.TYPE_14__* @PQcopyResult(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @pqResultAlloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @pqAddTuple(%struct.TYPE_14__*, %struct.TYPE_15__*, i8**) #1

declare dso_local i32 @PQclear(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
