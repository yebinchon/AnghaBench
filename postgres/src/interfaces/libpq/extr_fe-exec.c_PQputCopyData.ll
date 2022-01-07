; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQputCopyData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQputCopyData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }

@PGASYNC_COPY_IN = common dso_local global i64 0, align 8
@PGASYNC_COPY_BOTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"no COPY in progress\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PQputCopyData(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %109

11:                                               ; preds = %3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PGASYNC_COPY_IN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PGASYNC_COPY_BOTH, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = call i32 @libpq_gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @printfPQExpBuffer(i32* %25, i32 %26)
  store i32 -1, i32* %4, align 4
  br label %109

28:                                               ; preds = %17, %11
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = call i32 @parseInput(%struct.TYPE_10__* %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %108

33:                                               ; preds = %28
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = sub nsw i32 %40, 5
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %33
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = call i64 @pqFlush(%struct.TYPE_10__* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %109

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 5
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = call i64 @pqCheckOutBufferSpace(i32 %58, %struct.TYPE_10__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = call i64 @pqIsnonblocking(%struct.TYPE_10__* %63)
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 -1
  store i32 %67, i32* %4, align 4
  br label %109

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %33
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PG_PROTOCOL_MAJOR(i32 %72)
  %74 = icmp sge i32 %73, 3
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = call i64 @pqPutMsgStart(i8 signext 100, i32 0, %struct.TYPE_10__* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = call i64 @pqPutnchar(i8* %80, i32 %81, %struct.TYPE_10__* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = call i64 @pqPutMsgEnd(%struct.TYPE_10__* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %79, %75
  store i32 -1, i32* %4, align 4
  br label %109

90:                                               ; preds = %85
  br label %107

91:                                               ; preds = %69
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = call i64 @pqPutMsgStart(i8 signext 0, i32 0, %struct.TYPE_10__* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = call i64 @pqPutnchar(i8* %96, i32 %97, %struct.TYPE_10__* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = call i64 @pqPutMsgEnd(%struct.TYPE_10__* %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %95, %91
  store i32 -1, i32* %4, align 4
  br label %109

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %90
  br label %108

108:                                              ; preds = %107, %28
  store i32 1, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %105, %89, %62, %48, %23, %10
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @parseInput(%struct.TYPE_10__*) #1

declare dso_local i64 @pqFlush(%struct.TYPE_10__*) #1

declare dso_local i64 @pqCheckOutBufferSpace(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @pqIsnonblocking(%struct.TYPE_10__*) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i64 @pqPutMsgStart(i8 signext, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @pqPutnchar(i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @pqPutMsgEnd(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
