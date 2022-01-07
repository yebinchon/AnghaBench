; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/protocol/extr_transport.c_transport_recv_frame.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/protocol/extr_transport.c_transport_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64* }

@num_remote_objects = common dso_local global i64 0, align 8
@remote_objects = common dso_local global %struct.TYPE_3__** null, align 8
@MASTER_TO_ALL_SLAVES = common dso_local global i64 0, align 8
@SLAVE_TO_MASTER = common dso_local global i64 0, align 8
@NUM_SLAVES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_recv_frame(i64 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i64*, i64** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @num_remote_objects, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %102

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @remote_objects, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %8, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %101

32:                                               ; preds = %21
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MASTER_TO_ALL_SLAVES, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @LOCAL_OBJECT_SIZE(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %41, i64 %46
  store i64* %47, i64** %9, align 8
  br label %86

48:                                               ; preds = %32
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SLAVE_TO_MASTER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @LOCAL_OBJECT_SIZE(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %57, i64 %62
  store i64* %63, i64** %9, align 8
  %64 = load i64, i64* %4, align 8
  %65 = sub i64 %64, 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @REMOTE_OBJECT_SIZE(i32 %68)
  %70 = mul i64 %65, %69
  %71 = load i64*, i64** %9, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 %70
  store i64* %72, i64** %9, align 8
  br label %85

73:                                               ; preds = %48
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* @NUM_SLAVES, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @LOCAL_OBJECT_SIZE(i32 %80)
  %82 = mul nsw i32 %77, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %76, i64 %83
  store i64* %84, i64** %9, align 8
  br label %85

85:                                               ; preds = %73, %54
  br label %86

86:                                               ; preds = %85, %38
  %87 = load i64*, i64** %9, align 8
  %88 = bitcast i64* %87 to i32*
  store i32* %88, i32** %10, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i8* @triple_buffer_begin_write_internal(i32 %91, i32* %92)
  store i8* %93, i8** %11, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i64*, i64** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %96, 1
  %98 = call i32 @memcpy(i8* %94, i64* %95, i32 %97)
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @triple_buffer_end_write_internal(i32* %99)
  br label %101

101:                                              ; preds = %86, %21
  br label %102

102:                                              ; preds = %101, %3
  ret void
}

declare dso_local i32 @LOCAL_OBJECT_SIZE(i32) #1

declare dso_local i64 @REMOTE_OBJECT_SIZE(i32) #1

declare dso_local i8* @triple_buffer_begin_write_internal(i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @triple_buffer_end_write_internal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
