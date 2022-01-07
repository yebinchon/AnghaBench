; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_autoprewarm_database_main.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_autoprewarm_database_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@SIGTERM = common dso_local global i32 0, align 4
@die = common dso_local global i32 0, align 4
@apw_state = common dso_local global %struct.TYPE_11__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"could not map dynamic shared memory segment\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@InvalidForkNumber = common dso_local global i64 0, align 8
@MAX_FORKNUM = common dso_local global i64 0, align 8
@RBM_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autoprewarm_database_main(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  %12 = load i32, i32* @SIGTERM, align 4
  %13 = load i32, i32* @die, align 4
  %14 = call i32 @pqsignal(i32 %12, i32 %13)
  %15 = call i32 (...) @BackgroundWorkerUnblockSignals()
  %16 = call i32 (...) @apw_init_shmem()
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @apw_state, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @dsm_attach(i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @apw_state, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @InvalidOid, align 4
  %34 = call i32 @BackgroundWorkerInitializeConnectionByOid(i32 %32, i32 %33, i32 0)
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @dsm_segment_address(i32* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %4, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @apw_state, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %214, %192, %134, %29
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @apw_state, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = call i64 (...) @have_free_buffer()
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i1 [ false, %41 ], [ %49, %47 ]
  br i1 %51, label %52, label %216

52:                                               ; preds = %50
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %56
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %9, align 8
  %58 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %52
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %216

75:                                               ; preds = %69, %61, %52
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = icmp ne %struct.TYPE_10__* %76, null
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = icmp ne %struct.TYPE_9__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = load i32, i32* @AccessShareLock, align 4
  %92 = call i32 @relation_close(%struct.TYPE_9__* %90, i32 %91)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  %93 = call i32 (...) @CommitTransactionCommand()
  br label %94

94:                                               ; preds = %89, %86, %78, %75
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = icmp eq %struct.TYPE_10__* %95, null
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %131

105:                                              ; preds = %97, %94
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = icmp eq %struct.TYPE_9__* %106, null
  %108 = zext i1 %107 to i32
  %109 = call i32 @Assert(i32 %108)
  %110 = call i32 (...) @StartTransactionCommand()
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @RelidByRelfilenode(i32 %113, i64 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i64 @OidIsValid(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %105
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @AccessShareLock, align 4
  %124 = call %struct.TYPE_9__* @try_relation_open(i32 %122, i32 %123)
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %5, align 8
  br label %125

125:                                              ; preds = %121, %105
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = icmp ne %struct.TYPE_9__* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = call i32 (...) @CommitTransactionCommand()
  br label %130

130:                                              ; preds = %128, %125
  br label %131

131:                                              ; preds = %130, %97
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = icmp ne %struct.TYPE_9__* %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %7, align 8
  br label %41

136:                                              ; preds = %131
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %138 = icmp eq %struct.TYPE_10__* %137, null
  br i1 %138, label %155, label %139

139:                                              ; preds = %136
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %155, label %147

147:                                              ; preds = %139
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %150, %153
  br i1 %154, label %155, label %186

155:                                              ; preds = %147, %139, %136
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = call i32 @RelationOpenSmgr(%struct.TYPE_9__* %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @InvalidForkNumber, align 8
  %162 = icmp sgt i64 %160, %161
  br i1 %162, label %163, label %184

163:                                              ; preds = %155
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MAX_FORKNUM, align 8
  %168 = icmp sle i64 %166, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %163
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @smgrexists(i32 %172, i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %169
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @RelationGetNumberOfBlocksInFork(%struct.TYPE_9__* %179, i64 %182)
  store i64 %183, i64* %6, align 8
  br label %185

184:                                              ; preds = %169, %163, %155
  store i64 0, i64* %6, align 8
  br label %185

185:                                              ; preds = %184, %178
  br label %186

186:                                              ; preds = %185, %147
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %6, align 8
  %191 = icmp sge i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %193, %struct.TYPE_10__** %7, align 8
  br label %41

194:                                              ; preds = %186
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* @RBM_NORMAL, align 4
  %203 = call i32 @ReadBufferExtended(%struct.TYPE_9__* %195, i64 %198, i64 %201, i32 %202, i32* null)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i64 @BufferIsValid(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %194
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** @apw_state, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @ReleaseBuffer(i32 %212)
  br label %214

214:                                              ; preds = %207, %194
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %215, %struct.TYPE_10__** %7, align 8
  br label %41

216:                                              ; preds = %74, %50
  %217 = load i32*, i32** %8, align 8
  %218 = call i32 @dsm_detach(i32* %217)
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %220 = icmp ne %struct.TYPE_9__* %219, null
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %223 = load i32, i32* @AccessShareLock, align 4
  %224 = call i32 @relation_close(%struct.TYPE_9__* %222, i32 %223)
  %225 = call i32 (...) @CommitTransactionCommand()
  br label %226

226:                                              ; preds = %221, %216
  ret void
}

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @BackgroundWorkerUnblockSignals(...) #1

declare dso_local i32 @apw_init_shmem(...) #1

declare dso_local i32* @dsm_attach(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @BackgroundWorkerInitializeConnectionByOid(i32, i32, i32) #1

declare dso_local i64 @dsm_segment_address(i32*) #1

declare dso_local i64 @have_free_buffer(...) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @relation_close(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @RelidByRelfilenode(i32, i64) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local %struct.TYPE_9__* @try_relation_open(i32, i32) #1

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_9__*) #1

declare dso_local i64 @smgrexists(i32, i64) #1

declare dso_local i64 @RelationGetNumberOfBlocksInFork(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @ReadBufferExtended(%struct.TYPE_9__*, i64, i64, i32, i32*) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @dsm_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
