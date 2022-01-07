; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqEndcopy2.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqEndcopy2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_14__ = type { i64 }

@PGASYNC_COPY_IN = common dso_local global i64 0, align 8
@PGASYNC_COPY_OUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"no COPY in progress\0A\00", align 1
@PGASYNC_BUSY = common dso_local global i64 0, align 8
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"lost synchronization with server, resetting connection\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqEndcopy2(%struct.TYPE_15__* %0) #0 {
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
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PGASYNC_COPY_OUT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = call i32 @libpq_gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @printfPQExpBuffer(%struct.TYPE_16__* %19, i32 %20)
  store i32 1, i32* %2, align 4
  br label %130

22:                                               ; preds = %11, %1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = call i64 @pqFlush(%struct.TYPE_15__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = call i64 @pqIsnonblocking(%struct.TYPE_15__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %130

31:                                               ; preds = %26, %22
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = call i64 @pqIsnonblocking(%struct.TYPE_15__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = call i64 @PQisBusy(%struct.TYPE_15__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %130

40:                                               ; preds = %35, %31
  %41 = load i64, i64* @PGASYNC_BUSY, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = call i32 @resetPQExpBuffer(%struct.TYPE_16__* %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = call %struct.TYPE_14__* @PQgetResult(%struct.TYPE_15__* %47)
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %4, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = call i32 @PQclear(%struct.TYPE_14__* %58)
  store i32 0, i32* %2, align 4
  br label %130

60:                                               ; preds = %51, %40
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %60
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %70, i64 %76
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %5, align 1
  %79 = load i8, i8* %5, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %94

82:                                               ; preds = %66
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %86, i64 %92
  store i8 0, i8* %93, align 1
  br label %94

94:                                               ; preds = %82, %66
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i32*, i8*, ...) @pqInternalNotice(i32* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %100)
  %102 = load i8, i8* %5, align 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %106, i64 %112
  store i8 %102, i8* %113, align 1
  br label %114

114:                                              ; preds = %94, %60
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %116 = call i32 @PQclear(%struct.TYPE_14__* %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = call i32 (i32*, i8*, ...) @pqInternalNotice(i32* %118, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = call i64 @pqIsnonblocking(%struct.TYPE_15__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = call i32 @PQresetStart(%struct.TYPE_15__* %124)
  br label %129

126:                                              ; preds = %114
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = call i32 @PQreset(%struct.TYPE_15__* %127)
  br label %129

129:                                              ; preds = %126, %123
  store i32 1, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %57, %39, %30, %17
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i64 @pqFlush(%struct.TYPE_15__*) #1

declare dso_local i64 @pqIsnonblocking(%struct.TYPE_15__*) #1

declare dso_local i64 @PQisBusy(%struct.TYPE_15__*) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_14__* @PQgetResult(%struct.TYPE_15__*) #1

declare dso_local i32 @PQclear(%struct.TYPE_14__*) #1

declare dso_local i32 @pqInternalNotice(i32*, i8*, ...) #1

declare dso_local i32 @PQresetStart(%struct.TYPE_15__*) #1

declare dso_local i32 @PQreset(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
