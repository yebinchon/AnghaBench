; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_ParallelBackupStart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_ParallelBackupStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__*, i32** }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64, i64, i32, i32*, i32*, i32*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@shutdown_info = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@.str = private unnamed_addr constant [44 x i8] c"could not create communication channels: %m\00", align 1
@WRKR_IDLE = common dso_local global i32 0, align 4
@PIPE_READ = common dso_local global i64 0, align 8
@PIPE_WRITE = common dso_local global i64 0, align 8
@signal_info = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not create worker process: %m\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@getLocalPQExpBuffer = common dso_local global i32 0, align 4
@getThreadLocalPQExpBuffer = common dso_local global i32 0, align 4
@init_spawned_worker_win32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ParallelBackupStart(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = call i64 @pg_malloc(i32 24)
  %19 = inttoptr i64 %18 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %4, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  store i32** null, i32*** %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %29, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %2, align 8
  br label %199

37:                                               ; preds = %1
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @pg_malloc0(i32 %43)
  %45 = inttoptr i64 %44 to i32**
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  store i32** %45, i32*** %47, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 72
  %53 = trunc i64 %52 to i32
  %54 = call i64 @pg_malloc0(i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_18__*
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %57, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %58, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @shutdown_info, i32 0, i32 0), align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %60 = call i32 @set_archive_cancel_info(%struct.TYPE_19__* %59, i32* null)
  %61 = call i32 @fflush(i32* null)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %184, %37
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %187

68:                                               ; preds = %62
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i64 %73
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %7, align 8
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %76 = call i64 @pgpipe(i32* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %68
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %80 = call i64 @pgpipe(i32* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %68
  %83 = call i32 @fatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %78
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 2
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* @WRKR_IDLE, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 10
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 9
  store i32* null, i32** %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 8
  store i32* null, i32** %97, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 7
  store i32* null, i32** %99, align 8
  %100 = load i64, i64* @PIPE_READ, align 8
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i64, i64* @PIPE_WRITE, align 8
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i64, i64* @PIPE_READ, align 8
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load i64, i64* @PIPE_WRITE, align 8
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = call i64 (...) @fork()
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %6, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %166

123:                                              ; preds = %84
  %124 = call i64 (...) @getpid()
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 5
  store i64 %124, i64* %126, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @signal_info, i32 0, i32 0), align 4
  %127 = load i64, i64* @PIPE_READ, align 8
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @closesocket(i32 %129)
  %131 = load i64, i64* @PIPE_WRITE, align 8
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @closesocket(i32 %133)
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %158, %123
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %135
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @closesocket(i32 %147)
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @closesocket(i32 %156)
  br label %158

158:                                              ; preds = %139
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %135

161:                                              ; preds = %135
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %164 = call i32 @RunWorker(%struct.TYPE_19__* %162, %struct.TYPE_18__* %163)
  %165 = call i32 @exit(i32 0) #3
  unreachable

166:                                              ; preds = %84
  %167 = load i64, i64* %6, align 8
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %166
  br label %172

172:                                              ; preds = %171
  %173 = load i64, i64* %6, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 5
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* @PIPE_READ, align 8
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @closesocket(i32 %178)
  %180 = load i64, i64* @PIPE_WRITE, align 8
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @closesocket(i32 %182)
  br label %184

184:                                              ; preds = %172
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %62

187:                                              ; preds = %62
  %188 = load i32, i32* @SIGPIPE, align 4
  %189 = load i32, i32* @SIG_IGN, align 4
  %190 = call i32 @pqsignal(i32 %188, i32 %189)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @set_archive_cancel_info(%struct.TYPE_19__* %191, i32* %194)
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %197 = call i32 @set_cancel_pstate(%struct.TYPE_17__* %196)
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %198, %struct.TYPE_17__** %2, align 8
  br label %199

199:                                              ; preds = %187, %35
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %200
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i64 @pg_malloc0(i32) #1

declare dso_local i32 @set_archive_cancel_info(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @pgpipe(i32*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @RunWorker(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @set_cancel_pstate(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
