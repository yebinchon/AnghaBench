; ModuleID = '/home/carl/AnghaBench/lz4/ossfuzz/extr_fuzz_data_producer.c_FUZZ_dataProducer_frameInfo.c'
source_filename = "/home/carl/AnghaBench/lz4/ossfuzz/extr_fuzz_data_producer.c_FUZZ_dataProducer_frameInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8*, i8* }

@LZ4F_INIT_FRAMEINFO = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LZ4F_max64KB = common dso_local global i64 0, align 8
@LZ4F_max4MB = common dso_local global i32 0, align 4
@LZ4F_default = common dso_local global i64 0, align 8
@LZ4F_blockLinked = common dso_local global i64 0, align 8
@LZ4F_blockIndependent = common dso_local global i32 0, align 4
@LZ4F_noContentChecksum = common dso_local global i64 0, align 8
@LZ4F_contentChecksumEnabled = common dso_local global i32 0, align 4
@LZ4F_noBlockChecksum = common dso_local global i64 0, align 8
@LZ4F_blockChecksumEnabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FUZZ_dataProducer_frameInfo(%struct.TYPE_4__* noalias sret %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  store i32* %1, i32** %3, align 8
  %4 = bitcast %struct.TYPE_4__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_4__* @LZ4F_INIT_FRAMEINFO to i8*), i64 32, i1 false)
  %5 = load i32*, i32** %3, align 8
  %6 = load i64, i64* @LZ4F_max64KB, align 8
  %7 = sub nsw i64 %6, 1
  %8 = load i32, i32* @LZ4F_max4MB, align 4
  %9 = call i8* @FUZZ_dataProducer_range32(i32* %5, i64 %7, i32 %8)
  %10 = ptrtoint i8* %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LZ4F_max64KB, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i64, i64* @LZ4F_default, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i64, i64* @LZ4F_blockLinked, align 8
  %22 = load i32, i32* @LZ4F_blockIndependent, align 4
  %23 = call i8* @FUZZ_dataProducer_range32(i32* %20, i64 %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i64, i64* @LZ4F_noContentChecksum, align 8
  %27 = load i32, i32* @LZ4F_contentChecksumEnabled, align 4
  %28 = call i8* @FUZZ_dataProducer_range32(i32* %25, i64 %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i64, i64* @LZ4F_noBlockChecksum, align 8
  %32 = load i32, i32* @LZ4F_blockChecksumEnabled, align 4
  %33 = call i8* @FUZZ_dataProducer_range32(i32* %30, i64 %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @FUZZ_dataProducer_range32(i32*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
