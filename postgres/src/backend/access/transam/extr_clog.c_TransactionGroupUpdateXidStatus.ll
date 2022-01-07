; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionGroupUpdateXidStatus.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionGroupUpdateXidStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@ProcGlobal = common dso_local global %struct.TYPE_8__* null, align 8
@MyProc = common dso_local global %struct.TYPE_10__* null, align 8
@INVALID_PGPROCNO = common dso_local global i64 0, align 8
@WAIT_EVENT_CLOG_GROUP_UPDATE = common dso_local global i32 0, align 4
@CLogControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @TransactionGroupUpdateXidStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TransactionGroupUpdateXidStatus(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ProcGlobal, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %10, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MyProc, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %11, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @TransactionIdIsValid(i32 %20)
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = call i64 @pg_atomic_read_u32(i32* %38)
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %4, %72
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @INVALID_PGPROCNO, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ProcGlobal, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  store i32 0, i32* %5, align 4
  br label %199

59:                                               ; preds = %44, %40
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @pg_atomic_write_u32(i32* %61, i64 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @pg_atomic_compare_exchange_u32(i32* %65, i64* %12, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %73

72:                                               ; preds = %59
  br label %40

73:                                               ; preds = %71
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @INVALID_PGPROCNO, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %73
  store i32 0, i32* %14, align 4
  %78 = load i32, i32* @WAIT_EVENT_CLOG_GROUP_UPDATE, align 4
  %79 = call i32 @pgstat_report_wait_start(i32 %78)
  br label %80

80:                                               ; preds = %90, %77
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PGSemaphoreLock(i32 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  br label %93

90:                                               ; preds = %80
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %80

93:                                               ; preds = %89
  %94 = call i32 (...) @pgstat_report_wait_end()
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = call i64 @pg_atomic_read_u32(i32* %96)
  %98 = load i64, i64* @INVALID_PGPROCNO, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @Assert(i32 %100)
  br label %102

102:                                              ; preds = %106, %93
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %14, align 4
  %105 = icmp sgt i32 %103, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @PGSemaphoreUnlock(i32 %109)
  br label %102

111:                                              ; preds = %102
  store i32 1, i32* %5, align 4
  br label %199

112:                                              ; preds = %73
  %113 = load i32, i32* @CLogControlLock, align 4
  %114 = load i32, i32* @LW_EXCLUSIVE, align 4
  %115 = call i32 @LWLockAcquire(i32 %113, i32 %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i64, i64* @INVALID_PGPROCNO, align 8
  %119 = call i64 @pg_atomic_exchange_u32(i32* %117, i64 %118)
  store i64 %119, i64* %12, align 8
  %120 = load i64, i64* %12, align 8
  store i64 %120, i64* %13, align 8
  br label %121

121:                                              ; preds = %125, %112
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* @INVALID_PGPROCNO, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %166

125:                                              ; preds = %121
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ProcGlobal, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 %129
  store %struct.TYPE_10__* %130, %struct.TYPE_10__** %15, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ProcGlobal, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %134
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %16, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @Assert(i32 %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @TransactionIdSetPageStatusInternal(i32 %145, i32 %148, i32 %152, i32 %155, i32 %158, i32 %161)
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 3
  %165 = call i64 @pg_atomic_read_u32(i32* %164)
  store i64 %165, i64* %12, align 8
  br label %121

166:                                              ; preds = %121
  %167 = load i32, i32* @CLogControlLock, align 4
  %168 = call i32 @LWLockRelease(i32 %167)
  br label %169

169:                                              ; preds = %197, %166
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* @INVALID_PGPROCNO, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %198

173:                                              ; preds = %169
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ProcGlobal, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = load i64, i64* %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i64 %177
  store %struct.TYPE_10__* %178, %struct.TYPE_10__** %17, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 3
  %181 = call i64 @pg_atomic_read_u32(i32* %180)
  store i64 %181, i64* %13, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 3
  %184 = load i64, i64* @INVALID_PGPROCNO, align 8
  %185 = call i32 @pg_atomic_write_u32(i32* %183, i64 %184)
  %186 = call i32 (...) @pg_write_barrier()
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  store i32 0, i32* %188, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MyProc, align 8
  %191 = icmp ne %struct.TYPE_10__* %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %173
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @PGSemaphoreUnlock(i32 %195)
  br label %197

197:                                              ; preds = %192, %173
  br label %169

198:                                              ; preds = %169
  store i32 1, i32* %5, align 4
  br label %199

199:                                              ; preds = %198, %111, %56
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @pg_atomic_write_u32(i32*, i64) #1

declare dso_local i64 @pg_atomic_compare_exchange_u32(i32*, i64*, i64) #1

declare dso_local i32 @pgstat_report_wait_start(i32) #1

declare dso_local i32 @PGSemaphoreLock(i32) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

declare dso_local i32 @PGSemaphoreUnlock(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @pg_atomic_exchange_u32(i32*, i64) #1

declare dso_local i32 @TransactionIdSetPageStatusInternal(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @pg_write_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
