; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqEndcopy3.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqEndcopy3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_14__ = type { i64 }

@PGASYNC_COPY_IN = common dso_local global i64 0, align 8
@PGASYNC_COPY_OUT = common dso_local global i64 0, align 8
@PGASYNC_COPY_BOTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"no COPY in progress\0A\00", align 1
@PGQUERY_SIMPLE = common dso_local global i64 0, align 8
@PGASYNC_BUSY = common dso_local global i64 0, align 8
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqEndcopy3(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8, align 1
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PGASYNC_COPY_IN, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PGASYNC_COPY_OUT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PGASYNC_COPY_BOTH, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = call i32 @libpq_gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @printfPQExpBuffer(%struct.TYPE_16__* %25, i32 %26)
  store i32 1, i32* %2, align 4
  br label %161

28:                                               ; preds = %17, %11, %1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PGASYNC_COPY_IN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PGASYNC_COPY_BOTH, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %34, %28
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = call i64 @pqPutMsgStart(i8 signext 99, i32 0, %struct.TYPE_15__* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = call i64 @pqPutMsgEnd(%struct.TYPE_15__* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40
  store i32 1, i32* %2, align 4
  br label %161

49:                                               ; preds = %44
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PGQUERY_SIMPLE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = call i64 @pqPutMsgStart(i8 signext 83, i32 0, %struct.TYPE_15__* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = call i64 @pqPutMsgEnd(%struct.TYPE_15__* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55
  store i32 1, i32* %2, align 4
  br label %161

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %34
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = call i64 @pqFlush(%struct.TYPE_15__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = call i64 @pqIsnonblocking(%struct.TYPE_15__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 1, i32* %2, align 4
  br label %161

75:                                               ; preds = %70, %66
  %76 = load i64, i64* @PGASYNC_BUSY, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = call i32 @resetPQExpBuffer(%struct.TYPE_16__* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = call i64 @pqIsnonblocking(%struct.TYPE_15__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = call i64 @PQisBusy(%struct.TYPE_15__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 1, i32* %2, align 4
  br label %161

90:                                               ; preds = %85, %75
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = call %struct.TYPE_14__* @PQgetResult(%struct.TYPE_15__* %91)
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %4, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = icmp ne %struct.TYPE_14__* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = call i32 @PQclear(%struct.TYPE_14__* %102)
  store i32 0, i32* %2, align 4
  br label %161

104:                                              ; preds = %95, %90
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %158

110:                                              ; preds = %104
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %114, i64 %120
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %5, align 1
  %123 = load i8, i8* %5, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 10
  br i1 %125, label %126, label %138

126:                                              ; preds = %110
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %130, i64 %136
  store i8 0, i8* %137, align 1
  br label %138

138:                                              ; preds = %126, %110
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @pqInternalNotice(i32* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %144)
  %146 = load i8, i8* %5, align 1
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %150, i64 %156
  store i8 %146, i8* %157, align 1
  br label %158

158:                                              ; preds = %138, %104
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %160 = call i32 @PQclear(%struct.TYPE_14__* %159)
  store i32 1, i32* %2, align 4
  br label %161

161:                                              ; preds = %158, %101, %89, %74, %63, %48, %23
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i64 @pqPutMsgStart(i8 signext, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @pqPutMsgEnd(%struct.TYPE_15__*) #1

declare dso_local i64 @pqFlush(%struct.TYPE_15__*) #1

declare dso_local i64 @pqIsnonblocking(%struct.TYPE_15__*) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_16__*) #1

declare dso_local i64 @PQisBusy(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @PQgetResult(%struct.TYPE_15__*) #1

declare dso_local i32 @PQclear(%struct.TYPE_14__*) #1

declare dso_local i32 @pqInternalNotice(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
