; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_standard_ExecutorStart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_standard_ExecutorStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8*, i8*, i32, i32, i32*, i32, i32 }

@XactReadOnly = common dso_local global i64 0, align 8
@EXEC_FLAG_EXPLAIN_ONLY = common dso_local global i32 0, align 4
@NIL = common dso_local global i64 0, align 8
@EXEC_FLAG_SKIP_TRIGGERS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unrecognized operation code: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @standard_ExecutorStart(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load i64, i64* @XactReadOnly, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = call i64 (...) @IsInParallelMode()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EXEC_FLAG_EXPLAIN_ONLY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = call i32 @ExecCheckXactReadOnly(%struct.TYPE_9__* %31)
  br label %33

33:                                               ; preds = %28, %23, %20
  %34 = call %struct.TYPE_8__* (...) @CreateExecutorState()
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %5, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 8
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MemoryContextSwitchTo(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NIL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %33
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @list_length(i64 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call i64 @palloc0(i32 %64)
  %66 = inttoptr i64 %65 to i32*
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 8
  store i32* %66, i32** %68, align 8
  br label %69

69:                                               ; preds = %54, %33
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %118 [
    i32 129, label %83
    i32 130, label %114
    i32 131, label %114
    i32 128, label %114
  ]

83:                                               ; preds = %69
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NIL, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %98, label %91

91:                                               ; preds = %83
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91, %83
  %99 = call i8* @GetCurrentCommandId(i32 1)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %98, %91
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* @EXEC_FLAG_SKIP_TRIGGERS, align 4
  %111 = load i32, i32* %4, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %102
  br label %124

114:                                              ; preds = %69, %69, %69
  %115 = call i8* @GetCurrentCommandId(i32 1)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  br label %124

118:                                              ; preds = %69
  %119 = load i32, i32* @ERROR, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @elog(i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %118, %114, %113
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @RegisterSnapshot(i32 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @RegisterSnapshot(i32 %133)
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @EXEC_FLAG_SKIP_TRIGGERS, align 4
  %154 = load i32, i32* @EXEC_FLAG_EXPLAIN_ONLY, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %124
  %159 = call i32 (...) @AfterTriggerBeginQuery()
  br label %160

160:                                              ; preds = %158, %124
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @InitPlan(%struct.TYPE_7__* %161, i32 %162)
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @MemoryContextSwitchTo(i32 %164)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @ExecCheckXactReadOnly(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_8__* @CreateExecutorState(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @list_length(i64) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i8* @GetCurrentCommandId(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i8* @RegisterSnapshot(i32) #1

declare dso_local i32 @AfterTriggerBeginQuery(...) #1

declare dso_local i32 @InitPlan(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
