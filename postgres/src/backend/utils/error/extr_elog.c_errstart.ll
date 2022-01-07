; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_errstart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_errstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32*, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@CritSectionCount = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@PG_exception_stack = common dso_local global i32* null, align 8
@ExitOnAnyError = common dso_local global i64 0, align 8
@proc_exit_inprogress = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@errordata_stack_depth = common dso_local global i32 0, align 4
@errordata = common dso_local global %struct.TYPE_4__* null, align 8
@log_min_messages = common dso_local global i32 0, align 4
@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@LOG_SERVER_ONLY = common dso_local global i32 0, align 4
@ClientAuthInProgress = common dso_local global i64 0, align 8
@client_min_messages = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@ErrorContext = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [70 x i8] c"error occurred at %s:%d before error message processing is available\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"(unknown file)\00", align 1
@recursion_depth = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global i32* null, align 8
@debug_query_string = common dso_local global i32* null, align 8
@ERRORDATA_STACK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"ERRORDATA_STACK_SIZE exceeded\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_WARNING = common dso_local global i32 0, align 4
@ERRCODE_SUCCESSFUL_COMPLETION = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @errstart(i32 %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ERROR, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %5
  %21 = load i64, i64* @CritSectionCount, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @PANIC, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ERROR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32*, i32** @PG_exception_stack, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* @ExitOnAnyError, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @proc_exit_inprogress, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %32, %29
  %39 = load i32, i32* @FATAL, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %35
  br label %41

41:                                               ; preds = %40, %25
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @errordata_stack_depth, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @errordata, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @Max(i32 %47, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %42

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %5
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @log_min_messages, align 4
  %62 = call i32 @is_log_level_output(i32 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i64, i64* @whereToSendOutput, align 8
  %64 = load i64, i64* @DestRemote, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @LOG_SERVER_ONLY, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load i64, i64* @ClientAuthInProgress, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ERROR, align 4
  %76 = icmp sge i32 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %14, align 4
  br label %89

78:                                               ; preds = %70
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @client_min_messages, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @INFO, align 4
  %85 = icmp eq i32 %83, %84
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i1 [ true, %78 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %86, %73
  br label %90

90:                                               ; preds = %89, %66, %59
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @ERROR, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %220

101:                                              ; preds = %97, %94, %90
  %102 = load i32*, i32** @ErrorContext, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i8*, i8** %8, align 8
  br label %110

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i8* [ %108, %107 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %109 ]
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @write_stderr(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %111, i32 %112)
  %114 = call i32 @exit(i32 2) #3
  unreachable

115:                                              ; preds = %101
  %116 = load i32, i32* @recursion_depth, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @recursion_depth, align 4
  %118 = icmp sgt i32 %116, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @ERROR, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i32*, i32** @ErrorContext, align 8
  %125 = call i32 @MemoryContextReset(i32* %124)
  %126 = call i64 (...) @in_error_recursion_trouble()
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32* null, i32** @error_context_stack, align 8
  store i32* null, i32** @debug_query_string, align 8
  br label %129

129:                                              ; preds = %128, %123
  br label %130

130:                                              ; preds = %129, %119, %115
  %131 = load i32, i32* @errordata_stack_depth, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @errordata_stack_depth, align 4
  %133 = load i32, i32* @ERRORDATA_STACK_SIZE, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  store i32 -1, i32* @errordata_stack_depth, align 4
  %136 = load i32, i32* @PANIC, align 4
  %137 = call i32 @errmsg_internal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %138 = call i32 @ereport(i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %130
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @errordata, align 8
  %141 = load i32, i32* @errordata_stack_depth, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %12, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %145 = call i32 @MemSet(%struct.TYPE_4__* %144, i32 0, i32 72)
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %139
  %158 = load i8*, i8** %8, align 8
  %159 = call i8* @strrchr(i8* %158, i8 signext 47)
  store i8* %159, i8** %16, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i8*, i8** %16, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  store i8* %164, i8** %8, align 8
  br label %165

165:                                              ; preds = %162, %157
  br label %166

166:                                              ; preds = %165, %139
  %167 = load i8*, i8** %8, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 5
  store i8* %173, i8** %175, align 8
  %176 = load i8*, i8** %11, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %166
  %179 = load i8*, i8** %11, align 8
  br label %182

180:                                              ; preds = %166
  %181 = call i8* @PG_TEXTDOMAIN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i8* [ %179, %178 ], [ %181, %180 ]
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 6
  store i8* %183, i8** %185, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 6
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 7
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @ERROR, align 4
  %193 = icmp sge i32 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %182
  %195 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 10
  store i32 %195, i32* %197, align 4
  br label %211

198:                                              ; preds = %182
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @WARNING, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32, i32* @ERRCODE_WARNING, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 10
  store i32 %203, i32* %205, align 4
  br label %210

206:                                              ; preds = %198
  %207 = load i32, i32* @ERRCODE_SUCCESSFUL_COMPLETION, align 4
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 10
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %206, %202
  br label %211

211:                                              ; preds = %210, %194
  %212 = load i32, i32* @errno, align 4
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 9
  store i32 %212, i32* %214, align 8
  %215 = load i32*, i32** @ErrorContext, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 8
  store i32* %215, i32** %217, align 8
  %218 = load i32, i32* @recursion_depth, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* @recursion_depth, align 4
  store i32 1, i32* %6, align 4
  br label %220

220:                                              ; preds = %211, %100
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @is_log_level_output(i32, i32) #1

declare dso_local i32 @write_stderr(i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @MemoryContextReset(i32*) #1

declare dso_local i64 @in_error_recursion_trouble(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*) #1

declare dso_local i32 @MemSet(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @PG_TEXTDOMAIN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
