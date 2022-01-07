; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_ReadPageInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_ReadPageInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_12__*, i64, i64, i32, i8*)*, i8*, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }

@XLOG_BLCKSZ = common dso_local global i64 0, align 8
@SizeOfXLogShortPHD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, i32)* @ReadPageInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadPageInternal(%struct.TYPE_12__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @XLOG_BLCKSZ, align 8
  %15 = srem i64 %13, %14
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @XLByteToSeg(i64 %19, i64 %20, i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @XLogSegmentOffset(i64 %26, i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %3
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sle i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %4, align 4
  br label %189

55:                                               ; preds = %45, %38, %3
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %101

62:                                               ; preds = %55
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %9, align 8
  %68 = sub nsw i64 %66, %67
  store i64 %68, i64* %12, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32 (%struct.TYPE_12__*, i64, i64, i32, i8*)*, i32 (%struct.TYPE_12__*, i64, i64, i32, i8*)** %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @XLOG_BLCKSZ, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 %71(%struct.TYPE_12__* %72, i64 %73, i64 %74, i32 %77, i8* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %65
  br label %186

85:                                               ; preds = %65
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @XLOG_BLCKSZ, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @Assert(i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @XLogReaderValidatePageHeader(%struct.TYPE_12__* %92, i64 %93, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %85
  br label %186

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100, %62, %55
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32 (%struct.TYPE_12__*, i64, i64, i32, i8*)*, i32 (%struct.TYPE_12__*, i64, i64, i32, i8*)** %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %109 = call i64 @Max(i32 %107, i32 %108)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 %104(%struct.TYPE_12__* %105, i64 %106, i64 %109, i32 %112, i8* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %101
  br label %186

120:                                              ; preds = %101
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @XLOG_BLCKSZ, align 8
  %124 = icmp sle i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @Assert(i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %186

131:                                              ; preds = %120
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp sge i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @Assert(i32 %135)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = ptrtoint i8* %139 to i64
  store i64 %140, i64* %11, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @XLogPageHeaderSize(i64 %142)
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %131
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32 (%struct.TYPE_12__*, i64, i64, i32, i8*)*, i32 (%struct.TYPE_12__*, i64, i64, i32, i8*)** %147, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %150 = load i64, i64* %6, align 8
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @XLogPageHeaderSize(i64 %151)
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 %148(%struct.TYPE_12__* %149, i64 %150, i64 %153, i32 %156, i8* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %145
  br label %186

164:                                              ; preds = %145
  br label %165

165:                                              ; preds = %164, %131
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* %11, align 8
  %169 = inttoptr i64 %168 to i8*
  %170 = call i32 @XLogReaderValidatePageHeader(%struct.TYPE_12__* %166, i64 %167, i8* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %165
  br label %186

173:                                              ; preds = %165
  %174 = load i64, i64* %10, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i64 %174, i64* %177, align 8
  %178 = load i64, i64* %9, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  store i64 %178, i64* %181, align 8
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %4, align 4
  br label %189

186:                                              ; preds = %172, %163, %130, %119, %99, %84
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %188 = call i32 @XLogReaderInvalReadState(%struct.TYPE_12__* %187)
  store i32 -1, i32* %4, align 4
  br label %189

189:                                              ; preds = %186, %173, %51
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLByteToSeg(i64, i64, i32) #1

declare dso_local i64 @XLogSegmentOffset(i64, i32) #1

declare dso_local i32 @XLogReaderValidatePageHeader(%struct.TYPE_12__*, i64, i8*) #1

declare dso_local i64 @Max(i32, i32) #1

declare dso_local i32 @XLogPageHeaderSize(i64) #1

declare dso_local i32 @XLogReaderInvalReadState(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
