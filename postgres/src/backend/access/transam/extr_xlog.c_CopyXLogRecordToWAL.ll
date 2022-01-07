; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CopyXLogRecordToWAL.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CopyXLogRecordToWAL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }

@XLOG_BLCKSZ = common dso_local global i32 0, align 4
@SizeOfXLogShortPHD = common dso_local global i32 0, align 4
@XLP_FIRST_IS_CONTRECORD = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@SizeOfXLogLongPHD = common dso_local global i64 0, align 8
@SizeOfXLogRecord = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"space reserved for WAL record does not match what was written\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_4__*, i32, i32)* @CopyXLogRecordToWAL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyXLogRecordToWAL(i32 %0, i32 %1, %struct.TYPE_4__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = call i8* @GetXLogBuffer(i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @INSERT_FREESPACE(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp uge i64 %24, 4
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %119, %5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %143

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %16, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %17, align 4
  br label %38

38:                                               ; preds = %107, %31
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %110

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @XLOG_BLCKSZ, align 4
  %45 = srem i32 %43, %44
  %46 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 0
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i1 [ true, %42 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @Assert(i32 %53)
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @memcpy(i8* %55, i8* %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i8*, i8** %16, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %16, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %17, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i8* @GetXLogBuffer(i32 %72)
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = bitcast i8* %74 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %15, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @XLP_FIRST_IS_CONTRECORD, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @wal_segment_size, align 4
  %88 = call i64 @XLogSegmentOffset(i32 %86, i32 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %51
  %91 = load i64, i64* @SizeOfXLogLongPHD, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load i64, i64* @SizeOfXLogLongPHD, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 %96
  store i8* %98, i8** %11, align 8
  br label %107

99:                                               ; preds = %51
  %100 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %104 = load i8*, i8** %11, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %11, align 8
  br label %107

107:                                              ; preds = %99, %90
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @INSERT_FREESPACE(i32 %108)
  store i32 %109, i32* %12, align 4
  br label %38

110:                                              ; preds = %38
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @XLOG_BLCKSZ, align 4
  %113 = srem i32 %111, %112
  %114 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %17, align 4
  %118 = icmp eq i32 %117, 0
  br label %119

119:                                              ; preds = %116, %110
  %120 = phi i1 [ true, %110 ], [ %118, %116 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @Assert(i32 %121)
  %123 = load i8*, i8** %11, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @memcpy(i8* %123, i8* %124, i32 %125)
  %127 = load i32, i32* %17, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %11, align 8
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %12, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %13, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  store %struct.TYPE_4__* %142, %struct.TYPE_4__** %8, align 8
  br label %28

143:                                              ; preds = %28
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @Assert(i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %185

151:                                              ; preds = %143
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @wal_segment_size, align 4
  %154 = call i64 @XLogSegmentOffset(i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %185

156:                                              ; preds = %151
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @SizeOfXLogRecord, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @Assert(i32 %160)
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @wal_segment_size, align 4
  %164 = call i64 @XLogSegmentOffset(i32 %162, i32 %163)
  %165 = icmp eq i64 %164, 0
  %166 = zext i1 %165 to i32
  %167 = call i32 @Assert(i32 %166)
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %175, %156
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %171
  %176 = load i32, i32* %14, align 4
  %177 = call i8* @GetXLogBuffer(i32 %176)
  store i8* %177, i8** %11, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %180 = call i32 @MemSet(i8* %178, i32 0, i32 %179)
  %181 = load i32, i32* @XLOG_BLCKSZ, align 4
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %14, align 4
  br label %171

184:                                              ; preds = %171
  br label %188

185:                                              ; preds = %151, %143
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @MAXALIGN64(i32 %186)
  store i32 %187, i32* %14, align 4
  br label %188

188:                                              ; preds = %185, %184
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i32, i32* @PANIC, align 4
  %194 = call i32 @elog(i32 %193, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %195

195:                                              ; preds = %192, %188
  ret void
}

declare dso_local i8* @GetXLogBuffer(i32) #1

declare dso_local i32 @INSERT_FREESPACE(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @XLogSegmentOffset(i32, i32) #1

declare dso_local i32 @MemSet(i8*, i32, i32) #1

declare dso_local i32 @MAXALIGN64(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
