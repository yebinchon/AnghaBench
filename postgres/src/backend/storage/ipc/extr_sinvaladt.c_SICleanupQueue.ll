; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_sinvaladt.c_SICleanupQueue.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_sinvaladt.c_SICleanupQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i64 }

@shmInvalBuffer = common dso_local global %struct.TYPE_4__* null, align 8
@SInvalWriteLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@SInvalReadLock = common dso_local global i32 0, align 4
@SIG_THRESHOLD = common dso_local global i32 0, align 4
@MAXNUMMESSAGES = common dso_local global i32 0, align 4
@MSGNUMWRAPAROUND = common dso_local global i32 0, align 4
@CLEANUP_MIN = common dso_local global i32 0, align 4
@CLEANUP_QUANTUM = common dso_local global i32 0, align 4
@DEBUG4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"sending sinval catchup signal to PID %d\00", align 1
@PROCSIG_CATCHUP_INTERRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SICleanupQueue(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shmInvalBuffer, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @SInvalWriteLock, align 4
  %21 = load i32, i32* @LW_EXCLUSIVE, align 4
  %22 = call i32 @LWLockAcquire(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* @SInvalReadLock, align 4
  %25 = load i32, i32* @LW_EXCLUSIVE, align 4
  %26 = call i32 @LWLockAcquire(i32 %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SIG_THRESHOLD, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MAXNUMMESSAGES, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %95, %23
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %98

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %12, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %44
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58, %44
  br label %95

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  br label %95

76:                                               ; preds = %69
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %7, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %11, align 8
  br label %94

94:                                               ; preds = %91, %86, %82
  br label %95

95:                                               ; preds = %94, %73, %68
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %38

98:                                               ; preds = %38
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @MSGNUMWRAPAROUND, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %98
  %106 = load i32, i32* @MSGNUMWRAPAROUND, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @MSGNUMWRAPAROUND, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %133, %105
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %116
  %123 = load i32, i32* @MSGNUMWRAPAROUND, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, %123
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %116

136:                                              ; preds = %116
  br label %137

137:                                              ; preds = %136, %98
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %140, %143
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @CLEANUP_MIN, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load i32, i32* @CLEANUP_MIN, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  br label %161

152:                                              ; preds = %137
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @CLEANUP_QUANTUM, align 4
  %155 = sdiv i32 %153, %154
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* @CLEANUP_QUANTUM, align 4
  %158 = mul nsw i32 %156, %157
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %152, %148
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %163 = icmp ne %struct.TYPE_5__* %162, null
  br i1 %163, label %164, label %200

164:                                              ; preds = %161
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %14, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 0
  %173 = ptrtoint %struct.TYPE_5__* %168 to i64
  %174 = ptrtoint %struct.TYPE_5__* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sdiv exact i64 %175, 32
  %177 = add nsw i64 %176, 1
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %15, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 3
  store i32 1, i32* %180, align 4
  %181 = load i32, i32* @SInvalReadLock, align 4
  %182 = call i32 @LWLockRelease(i32 %181)
  %183 = load i32, i32* @SInvalWriteLock, align 4
  %184 = call i32 @LWLockRelease(i32 %183)
  %185 = load i32, i32* @DEBUG4, align 4
  %186 = load i64, i64* %14, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @elog(i32 %185, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = load i64, i64* %14, align 8
  %190 = load i32, i32* @PROCSIG_CATCHUP_INTERRUPT, align 4
  %191 = load i32, i32* %15, align 4
  %192 = call i32 @SendProcSignal(i64 %189, i32 %190, i32 %191)
  %193 = load i32, i32* %3, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %164
  %196 = load i32, i32* @SInvalWriteLock, align 4
  %197 = load i32, i32* @LW_EXCLUSIVE, align 4
  %198 = call i32 @LWLockAcquire(i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %164
  br label %209

200:                                              ; preds = %161
  %201 = load i32, i32* @SInvalReadLock, align 4
  %202 = call i32 @LWLockRelease(i32 %201)
  %203 = load i32, i32* %3, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = load i32, i32* @SInvalWriteLock, align 4
  %207 = call i32 @LWLockRelease(i32 %206)
  br label %208

208:                                              ; preds = %205, %200
  br label %209

209:                                              ; preds = %208, %199
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @SendProcSignal(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
