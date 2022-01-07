; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQputCopyEnd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQputCopyEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32 }

@PGASYNC_COPY_IN = common dso_local global i64 0, align 8
@PGASYNC_COPY_BOTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"no COPY in progress\0A\00", align 1
@PGQUERY_SIMPLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"function requires at least protocol version 3.0\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\\.\0A\00", align 1
@PGASYNC_COPY_OUT = common dso_local global i64 0, align 8
@PGASYNC_BUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PQputCopyEnd(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %123

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PGASYNC_COPY_IN, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PGASYNC_COPY_BOTH, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = call i32 @libpq_gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @printfPQExpBuffer(i32* %23, i32 %24)
  store i32 -1, i32* %3, align 4
  br label %123

26:                                               ; preds = %15, %9
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PG_PROTOCOL_MAJOR(i32 %29)
  %31 = icmp sge i32 %30, 3
  br i1 %31, label %32, label %77

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = call i64 @pqPutMsgStart(i8 signext 102, i32 0, %struct.TYPE_8__* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = call i64 @pqPuts(i8* %40, %struct.TYPE_8__* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = call i64 @pqPutMsgEnd(%struct.TYPE_8__* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %39, %35
  store i32 -1, i32* %3, align 4
  br label %123

49:                                               ; preds = %44
  br label %60

50:                                               ; preds = %32
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = call i64 @pqPutMsgStart(i8 signext 99, i32 0, %struct.TYPE_8__* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = call i64 @pqPutMsgEnd(%struct.TYPE_8__* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %50
  store i32 -1, i32* %3, align 4
  br label %123

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %49
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PGQUERY_SIMPLE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = call i64 @pqPutMsgStart(i8 signext 83, i32 0, %struct.TYPE_8__* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = call i64 @pqPutMsgEnd(%struct.TYPE_8__* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %66
  store i32 -1, i32* %3, align 4
  br label %123

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %60
  br label %100

77:                                               ; preds = %26
  %78 = load i8*, i8** %5, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = call i32 @libpq_gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %84 = call i32 @printfPQExpBuffer(i32* %82, i32 %83)
  store i32 -1, i32* %3, align 4
  br label %123

85:                                               ; preds = %77
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = call i64 @pqPutMsgStart(i8 signext 0, i32 0, %struct.TYPE_8__* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = call i64 @pqPutnchar(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3, %struct.TYPE_8__* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = call i64 @pqPutMsgEnd(%struct.TYPE_8__* %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %89, %85
  store i32 -1, i32* %3, align 4
  br label %123

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %76
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PGASYNC_COPY_BOTH, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i64, i64* @PGASYNC_COPY_OUT, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %114

110:                                              ; preds = %100
  %111 = load i64, i64* @PGASYNC_BUSY, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = call i32 @resetPQExpBuffer(i32* %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = call i64 @pqFlush(%struct.TYPE_8__* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 -1, i32* %3, align 4
  br label %123

122:                                              ; preds = %114
  store i32 1, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %121, %97, %80, %74, %58, %48, %21, %8
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i64 @pqPutMsgStart(i8 signext, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @pqPuts(i8*, %struct.TYPE_8__*) #1

declare dso_local i64 @pqPutMsgEnd(%struct.TYPE_8__*) #1

declare dso_local i64 @pqPutnchar(i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @resetPQExpBuffer(i32*) #1

declare dso_local i64 @pqFlush(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
