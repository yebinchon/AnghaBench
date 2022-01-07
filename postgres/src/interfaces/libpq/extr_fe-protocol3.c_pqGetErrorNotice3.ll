; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqGetErrorNotice3.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqGetErrorNotice3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_24__*, i32, i32, i8*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__, i8*, i8*, i32 }
%struct.TYPE_22__ = type { i32, i32 (i32, %struct.TYPE_24__*)* }
%struct.TYPE_23__ = type { i8* }

@PGRES_EMPTY_QUERY = common dso_local global i32 0, align 4
@PGRES_FATAL_ERROR = common dso_local global i32 0, align 4
@PGRES_NONFATAL_ERROR = common dso_local global i32 0, align 4
@PG_DIAG_SQLSTATE = common dso_local global i8 0, align 1
@PG_DIAG_STATEMENT_POSITION = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqGetErrorNotice3(%struct.TYPE_25__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca i8, align 1
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %14 = call i32 @pqClearAsyncResult(%struct.TYPE_25__* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = call i32 @initPQExpBuffer(%struct.TYPE_23__* %8)
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = load i32, i32* @PGRES_EMPTY_QUERY, align 4
  %19 = call %struct.TYPE_24__* @PQmakeEmptyPGresult(%struct.TYPE_25__* %17, i32 %18)
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %6, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = icmp ne %struct.TYPE_24__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @PGRES_NONFATAL_ERROR, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %15
  br label %34

34:                                               ; preds = %75, %33
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %36 = call i64 @pqGetc(i8* %9, %struct.TYPE_25__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %169

39:                                               ; preds = %34
  %40 = load i8, i8* %9, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %76

44:                                               ; preds = %39
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %46 = call i64 @pqGets(%struct.TYPE_23__* %8, %struct.TYPE_25__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %169

49:                                               ; preds = %44
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %51 = load i8, i8* %9, align 1
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @pqSaveMessageField(%struct.TYPE_24__* %50, i8 signext %51, i8* %53)
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @PG_DIAG_SQLSTATE, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlcpy(i32 %63, i8* %65, i32 4)
  br label %75

67:                                               ; preds = %49
  %68 = load i8, i8* %9, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* @PG_DIAG_STATEMENT_POSITION, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 1, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %67
  br label %75

75:                                               ; preds = %74, %60
  br label %34

76:                                               ; preds = %43
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %86 = icmp ne %struct.TYPE_24__* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @pqResultStrdup(%struct.TYPE_24__* %88, i8* %91)
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %87, %84, %79, %76
  %96 = call i32 @resetPQExpBuffer(%struct.TYPE_23__* %8)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @pqBuildErrorMessage3(%struct.TYPE_23__* %8, %struct.TYPE_24__* %97, i32 %100, i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %139

107:                                              ; preds = %95
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %109 = icmp ne %struct.TYPE_24__* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @pqResultStrdup(%struct.TYPE_24__* %111, i8* %113)
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %110, %107
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %119 = call i32 @pqClearAsyncResult(%struct.TYPE_25__* %118)
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 1
  store %struct.TYPE_24__* %120, %struct.TYPE_24__** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @PQExpBufferDataBroken(i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %117
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = call i32 @libpq_gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %131 = call i32 @printfPQExpBuffer(i32* %129, i32 %130)
  br label %138

132:                                              ; preds = %117
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @appendPQExpBufferStr(i32* %134, i8* %136)
  br label %138

138:                                              ; preds = %132, %127
  br label %167

139:                                              ; preds = %95
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %141 = icmp ne %struct.TYPE_24__* %140, null
  br i1 %141, label %142, label %166

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 1
  %150 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %149, align 8
  %151 = icmp ne i32 (i32, %struct.TYPE_24__*)* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %142
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 1
  %156 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %155, align 8
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %162 = call i32 %156(i32 %160, %struct.TYPE_24__* %161)
  br label %163

163:                                              ; preds = %152, %142
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %165 = call i32 @PQclear(%struct.TYPE_24__* %164)
  br label %166

166:                                              ; preds = %163, %139
  br label %167

167:                                              ; preds = %166, %138
  %168 = call i32 @termPQExpBuffer(%struct.TYPE_23__* %8)
  store i32 0, i32* %3, align 4
  br label %174

169:                                              ; preds = %48, %38
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %171 = call i32 @PQclear(%struct.TYPE_24__* %170)
  %172 = call i32 @termPQExpBuffer(%struct.TYPE_23__* %8)
  %173 = load i32, i32* @EOF, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %169, %167
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @pqClearAsyncResult(%struct.TYPE_25__*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @PQmakeEmptyPGresult(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @pqGetc(i8*, %struct.TYPE_25__*) #1

declare dso_local i64 @pqGets(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @pqSaveMessageField(%struct.TYPE_24__*, i8 signext, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @pqResultStrdup(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_23__*) #1

declare dso_local i32 @pqBuildErrorMessage3(%struct.TYPE_23__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i64 @PQExpBufferDataBroken(i8*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @appendPQExpBufferStr(i32*, i8*) #1

declare dso_local i32 @PQclear(%struct.TYPE_24__*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
