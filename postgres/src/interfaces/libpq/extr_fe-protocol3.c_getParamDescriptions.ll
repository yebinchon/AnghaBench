; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getParamDescriptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getParamDescriptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@PGRES_COMMAND_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"extraneous data in \22t\22 message\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @getParamDescriptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getParamDescriptions(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = load i32, i32* @PGRES_COMMAND_OK, align 4
  %13 = call %struct.TYPE_13__* @PQmakeEmptyPGresult(%struct.TYPE_15__* %11, i32 %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %103

17:                                               ; preds = %2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = call i64 @pqGetInt(i32* %19, i32 2, %struct.TYPE_15__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %99

24:                                               ; preds = %17
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i64 @pqResultAlloc(%struct.TYPE_13__* %31, i32 %35, i32 1)
  %37 = inttoptr i64 %36 to %struct.TYPE_14__*
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %30
  br label %103

45:                                               ; preds = %30
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @MemSet(%struct.TYPE_14__* %48, i32 0, i32 %52)
  br label %54

54:                                               ; preds = %45, %24
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = call i64 @pqGetInt(i32* %10, i32 4, %struct.TYPE_15__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %99

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 4
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %55

76:                                               ; preds = %55
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 5
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = icmp ne i64 %79, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = call i8* @libpq_gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* %89, i8** %7, align 8
  br label %103

90:                                               ; preds = %76
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %93, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  store i32 0, i32* %3, align 4
  br label %136

99:                                               ; preds = %63, %23
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = call i32 @PQclear(%struct.TYPE_13__* %100)
  %102 = load i32, i32* @EOF, align 4
  store i32 %102, i32* %3, align 4
  br label %136

103:                                              ; preds = %88, %44, %16
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = icmp ne %struct.TYPE_13__* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = icmp ne %struct.TYPE_13__* %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = call i32 @PQclear(%struct.TYPE_13__* %113)
  br label %115

115:                                              ; preds = %112, %106, %103
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 5, %116
  %118 = sext i32 %117 to i64
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = call i32 @pqClearAsyncResult(%struct.TYPE_15__* %123)
  %125 = load i8*, i8** %7, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %115
  %128 = call i8* @libpq_gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %128, i8** %7, align 8
  br label %129

129:                                              ; preds = %127, %115
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @printfPQExpBuffer(i32* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %132)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = call i32 @pqSaveErrorResult(%struct.TYPE_15__* %134)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %129, %99, %90
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_13__* @PQmakeEmptyPGresult(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @pqGetInt(i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @pqResultAlloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i8* @libpq_gettext(i8*) #1

declare dso_local i32 @PQclear(%struct.TYPE_13__*) #1

declare dso_local i32 @pqClearAsyncResult(%struct.TYPE_15__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i8*, i8*) #1

declare dso_local i32 @pqSaveErrorResult(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
