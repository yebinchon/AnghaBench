; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_getRowDescriptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_getRowDescriptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32, i32, i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_17__ = type { i32 }

@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"out of memory for query result\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PGRES_FATAL_ERROR = common dso_local global i32 0, align 4
@PGASYNC_READY = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @getRowDescriptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getRowDescriptions(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %13 = call i8* @PQmakeEmptyPGresult(%struct.TYPE_16__* %11, i32 %12)
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i8* null, i8** %6, align 8
  br label %164

18:                                               ; preds = %1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = call i64 @pqGetInt(i32* %20, i32 2, %struct.TYPE_16__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %190

25:                                               ; preds = %18
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 48
  %36 = trunc i64 %35 to i32
  %37 = call i64 @pqResultAlloc(%struct.TYPE_14__* %32, i32 %36, i32 1)
  %38 = inttoptr i64 %37 to %struct.TYPE_15__*
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = icmp ne %struct.TYPE_15__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  store i8* null, i8** %6, align 8
  br label %164

46:                                               ; preds = %31
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 48
  %53 = trunc i64 %52 to i32
  %54 = call i32 @MemSet(%struct.TYPE_15__* %49, i32 0, i32 %53)
  br label %55

55:                                               ; preds = %46, %25
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %152, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %155

60:                                               ; preds = %56
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 6
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = call i64 @pqGets(%struct.TYPE_17__* %62, %struct.TYPE_16__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = call i64 @pqGetInt(i32* %8, i32 4, %struct.TYPE_16__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = call i64 @pqGetInt(i32* %9, i32 2, %struct.TYPE_16__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = call i64 @pqGetInt(i32* %10, i32 4, %struct.TYPE_16__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %70, %66, %60
  br label %190

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pqResultStrdup(%struct.TYPE_14__* %83, i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 6
  store i32 %88, i32* %95, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %79
  store i8* null, i8** %6, align 8
  br label %164

106:                                              ; preds = %79
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 5
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  store i32 %128, i32* %135, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  store i32 %136, i32* %143, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  store i32 %144, i32* %151, align 8
  br label %152

152:                                              ; preds = %106
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %56

155:                                              ; preds = %56
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  store %struct.TYPE_14__* %156, %struct.TYPE_14__** %158, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 4
  store i32 0, i32* %2, align 4
  br label %204

164:                                              ; preds = %105, %45, %17
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %171 = call i32 @pqClearAsyncResult(%struct.TYPE_16__* %170)
  %172 = load i8*, i8** %6, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %164
  %175 = call i8* @libpq_gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* %175, i8** %6, align 8
  br label %176

176:                                              ; preds = %174, %164
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 2
  %179 = load i8*, i8** %6, align 8
  %180 = call i32 @printfPQExpBuffer(i32* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %182 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  %183 = call i8* @PQmakeEmptyPGresult(%struct.TYPE_16__* %181, i32 %182)
  %184 = bitcast i8* %183 to %struct.TYPE_14__*
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  store %struct.TYPE_14__* %184, %struct.TYPE_14__** %186, align 8
  %187 = load i32, i32* @PGASYNC_READY, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %176, %78, %24
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %192 = icmp ne %struct.TYPE_14__* %191, null
  br i1 %192, label %193, label %202

193:                                              ; preds = %190
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = icmp ne %struct.TYPE_14__* %194, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %201 = call i32 @PQclear(%struct.TYPE_14__* %200)
  br label %202

202:                                              ; preds = %199, %193, %190
  %203 = load i32, i32* @EOF, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %202, %155
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i8* @PQmakeEmptyPGresult(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @pqGetInt(i32*, i32, %struct.TYPE_16__*) #1

declare dso_local i64 @pqResultAlloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @pqGets(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @pqResultStrdup(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @pqClearAsyncResult(%struct.TYPE_16__*) #1

declare dso_local i8* @libpq_gettext(i8*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i8*, i8*) #1

declare dso_local i32 @PQclear(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
