; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_errfinish.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_errfinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 (i32)*, %struct.TYPE_7__* }

@errordata = common dso_local global %struct.TYPE_6__* null, align 8
@errordata_stack_depth = common dso_local global i64 0, align 8
@recursion_depth = common dso_local global i32 0, align 4
@ErrorContext = common dso_local global i32 0, align 4
@backtrace_functions = common dso_local global i64 0, align 8
@error_context_stack = common dso_local global %struct.TYPE_7__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@InterruptHoldoffCount = common dso_local global i64 0, align 8
@QueryCancelHoldoffCount = common dso_local global i64 0, align 8
@CritSectionCount = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@PG_exception_stack = common dso_local global i32* null, align 8
@DestNone = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @errfinish(i32 %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @errordata, align 8
  %8 = load i64, i64* @errordata_stack_depth, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 %8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  %10 = load i32, i32* @recursion_depth, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @recursion_depth, align 4
  %12 = call i32 (...) @CHECK_STACK_DEPTH()
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @ErrorContext, align 4
  %17 = call i32 @MemoryContextSwitchTo(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 13
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i64, i64* @backtrace_functions, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 13
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @matches_backtrace_functions(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = call i32 @set_backtrace(%struct.TYPE_6__* %37, i32 2)
  br label %39

39:                                               ; preds = %36, %30, %27, %22, %1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @error_context_stack, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %6, align 8
  br label %41

41:                                               ; preds = %52, %39
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %47(i32 %50)
  br label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %6, align 8
  br label %41

56:                                               ; preds = %41
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @ERROR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  store i64 0, i64* @InterruptHoldoffCount, align 8
  store i64 0, i64* @QueryCancelHoldoffCount, align 8
  store i64 0, i64* @CritSectionCount, align 8
  %61 = load i32, i32* @recursion_depth, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* @recursion_depth, align 4
  %63 = call i32 (...) @PG_RE_THROW()
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @FATAL, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i64, i64* @whereToSendOutput, align 8
  %70 = load i64, i64* @DestRemote, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @pq_endcopyout(i32 1)
  br label %74

74:                                               ; preds = %72, %68, %64
  %75 = call i32 (...) @EmitErrorReport()
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 12
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 12
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @pfree(i64 %83)
  br label %85

85:                                               ; preds = %80, %74
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 11
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 11
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @pfree(i64 %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 10
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 10
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @pfree(i64 %103)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 9
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 9
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @pfree(i64 %113)
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 8
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @pfree(i64 %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @pfree(i64 %133)
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @pfree(i64 %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @pfree(i64 %153)
  br label %155

155:                                              ; preds = %150, %145
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @pfree(i64 %163)
  br label %165

165:                                              ; preds = %160, %155
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @pfree(i64 %173)
  br label %175

175:                                              ; preds = %170, %165
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @pfree(i64 %183)
  br label %185

185:                                              ; preds = %180, %175
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @pfree(i64 %193)
  br label %195

195:                                              ; preds = %190, %185
  %196 = load i64, i64* @errordata_stack_depth, align 8
  %197 = add i64 %196, -1
  store i64 %197, i64* @errordata_stack_depth, align 8
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @MemoryContextSwitchTo(i32 %198)
  %200 = load i32, i32* @recursion_depth, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* @recursion_depth, align 4
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @FATAL, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %220

205:                                              ; preds = %195
  %206 = load i32*, i32** @PG_exception_stack, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load i64, i64* @whereToSendOutput, align 8
  %210 = load i64, i64* @DestRemote, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i64, i64* @DestNone, align 8
  store i64 %213, i64* @whereToSendOutput, align 8
  br label %214

214:                                              ; preds = %212, %208, %205
  %215 = load i32, i32* @stdout, align 4
  %216 = call i32 @fflush(i32 %215)
  %217 = load i32, i32* @stderr, align 4
  %218 = call i32 @fflush(i32 %217)
  %219 = call i32 @proc_exit(i32 1)
  br label %220

220:                                              ; preds = %214, %195
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @PANIC, align 4
  %223 = icmp sge i32 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %220
  %225 = load i32, i32* @stdout, align 4
  %226 = call i32 @fflush(i32 %225)
  %227 = load i32, i32* @stderr, align 4
  %228 = call i32 @fflush(i32 %227)
  %229 = call i32 (...) @abort() #3
  unreachable

230:                                              ; preds = %220
  %231 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  ret void
}

declare dso_local i32 @CHECK_STACK_DEPTH(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @matches_backtrace_functions(i64) #1

declare dso_local i32 @set_backtrace(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @pq_endcopyout(i32) #1

declare dso_local i32 @EmitErrorReport(...) #1

declare dso_local i32 @pfree(i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @proc_exit(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
