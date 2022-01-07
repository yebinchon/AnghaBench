; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQsendPrepare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQsendPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"statement name is a null pointer\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"command string is a null pointer\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"number of parameters must be between 0 and 65535\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"function requires at least protocol version 3.0\0A\00", align 1
@PGQUERY_PREPARE = common dso_local global i32 0, align 4
@PGASYNC_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PQsendPrepare(%struct.TYPE_9__* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = call i32 @PQsendQueryStart(%struct.TYPE_9__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %149

17:                                               ; preds = %5
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = call i32 @libpq_gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @printfPQExpBuffer(i32* %22, i32 %23)
  store i32 0, i32* %6, align 4
  br label %149

25:                                               ; preds = %17
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = call i32 @libpq_gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @printfPQExpBuffer(i32* %30, i32 %31)
  store i32 0, i32* %6, align 4
  br label %149

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 65535
  br i1 %38, label %39, label %44

39:                                               ; preds = %36, %33
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  %42 = call i32 @libpq_gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @printfPQExpBuffer(i32* %41, i32 %42)
  store i32 0, i32* %6, align 4
  br label %149

44:                                               ; preds = %36
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PG_PROTOCOL_MAJOR(i32 %47)
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = call i32 @libpq_gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i32 @printfPQExpBuffer(i32* %52, i32 %53)
  store i32 0, i32* %6, align 4
  br label %149

55:                                               ; preds = %44
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = call i64 @pqPutMsgStart(i8 signext 80, i32 0, %struct.TYPE_9__* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = call i64 @pqPuts(i8* %60, %struct.TYPE_9__* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = call i64 @pqPuts(i8* %65, %struct.TYPE_9__* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59, %55
  br label %148

70:                                               ; preds = %64
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %70
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %102

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = call i64 @pqPutInt(i32 %77, i32 2, %struct.TYPE_9__* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %148

82:                                               ; preds = %76
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %98, %82
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = call i64 @pqPutInt(i32 %92, i32 4, %struct.TYPE_9__* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %148

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %83

101:                                              ; preds = %83
  br label %108

102:                                              ; preds = %73, %70
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = call i64 @pqPutInt(i32 0, i32 2, %struct.TYPE_9__* %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %148

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %101
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = call i64 @pqPutMsgEnd(%struct.TYPE_9__* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %148

113:                                              ; preds = %108
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = call i64 @pqPutMsgStart(i8 signext 83, i32 0, %struct.TYPE_9__* %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %119 = call i64 @pqPutMsgEnd(%struct.TYPE_9__* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117, %113
  br label %148

122:                                              ; preds = %117
  %123 = load i32, i32* @PGQUERY_PREPARE, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @free(i64 %133)
  br label %135

135:                                              ; preds = %130, %122
  %136 = load i8*, i8** %9, align 8
  %137 = call i64 @strdup(i8* %136)
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %141 = call i64 @pqFlush(%struct.TYPE_9__* %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %148

144:                                              ; preds = %135
  %145 = load i32, i32* @PGASYNC_BUSY, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  store i32 1, i32* %6, align 4
  br label %149

148:                                              ; preds = %143, %121, %112, %106, %96, %81, %69
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %148, %144, %50, %39, %28, %20, %16
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32 @PQsendQueryStart(%struct.TYPE_9__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i64 @pqPutMsgStart(i8 signext, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @pqPuts(i8*, %struct.TYPE_9__*) #1

declare dso_local i64 @pqPutInt(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @pqPutMsgEnd(%struct.TYPE_9__*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i64 @pqFlush(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
