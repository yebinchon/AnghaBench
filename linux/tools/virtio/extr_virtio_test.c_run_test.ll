; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/extr_virtio_test.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/extr_virtio_test.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdev_info = type { i32, i64, i32 }
%struct.vq_info = type { i32 }
%struct.scatterlist = type { i32 }

@VHOST_TEST_RUN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"spurious wakeups: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdev_info*, %struct.vq_info*, i32, i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(%struct.vdev_info* %0, %struct.vq_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vdev_info*, align 8
  %6 = alloca %struct.vq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.vdev_info* %0, %struct.vdev_info** %5, align 8
  store %struct.vq_info* %1, %struct.vq_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 1, i32* %14, align 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.vdev_info*, %struct.vdev_info** %5, align 8
  %18 = getelementptr inbounds %struct.vdev_info, %struct.vdev_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VHOST_TEST_RUN, align 4
  %21 = call i32 @ioctl(i32 %19, i32 %20, i32* %14)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  br label %26

26:                                               ; preds = %137, %4
  %27 = load %struct.vq_info*, %struct.vq_info** %6, align 8
  %28 = getelementptr inbounds %struct.vq_info, %struct.vq_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @virtqueue_disable_cb(i32 %29)
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %86, %26
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %32
  %38 = load %struct.vdev_info*, %struct.vdev_info** %5, align 8
  %39 = getelementptr inbounds %struct.vdev_info, %struct.vdev_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vdev_info*, %struct.vdev_info** %5, align 8
  %42 = getelementptr inbounds %struct.vdev_info, %struct.vdev_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sg_init_one(%struct.scatterlist* %9, i64 %40, i32 %43)
  %45 = load %struct.vq_info*, %struct.vq_info** %6, align 8
  %46 = getelementptr inbounds %struct.vq_info, %struct.vq_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vdev_info*, %struct.vdev_info** %5, align 8
  %49 = getelementptr inbounds %struct.vdev_info, %struct.vdev_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call i32 @virtqueue_add_outbuf(i32 %47, %struct.scatterlist* %9, i32 1, i64 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %37
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %10, align 8
  %63 = load %struct.vq_info*, %struct.vq_info** %6, align 8
  %64 = getelementptr inbounds %struct.vq_info, %struct.vq_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @virtqueue_kick(i32 %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i32 -1, i32* %13, align 4
  br label %73

73:                                               ; preds = %72, %60
  br label %74

74:                                               ; preds = %73, %37
  br label %76

75:                                               ; preds = %32
  store i32 -1, i32* %13, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load %struct.vq_info*, %struct.vq_info** %6, align 8
  %78 = getelementptr inbounds %struct.vq_info, %struct.vq_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @virtqueue_get_buf(i32 %79, i32* %15)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i64, i64* %11, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %82, %76
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %32, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %12, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i64, i64* %16, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %16, align 8
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i64, i64* %11, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp sle i64 %97, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i64, i64* %10, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp sle i64 %103, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i64, i64* %11, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %96
  br label %138

114:                                              ; preds = %96
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load %struct.vq_info*, %struct.vq_info** %6, align 8
  %119 = getelementptr inbounds %struct.vq_info, %struct.vq_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @virtqueue_enable_cb_delayed(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.vdev_info*, %struct.vdev_info** %5, align 8
  %125 = call i32 @wait_for_interrupt(%struct.vdev_info* %124)
  br label %126

126:                                              ; preds = %123, %117
  br label %137

127:                                              ; preds = %114
  %128 = load %struct.vq_info*, %struct.vq_info** %6, align 8
  %129 = getelementptr inbounds %struct.vq_info, %struct.vq_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @virtqueue_enable_cb(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.vdev_info*, %struct.vdev_info** %5, align 8
  %135 = call i32 @wait_for_interrupt(%struct.vdev_info* %134)
  br label %136

136:                                              ; preds = %133, %127
  br label %137

137:                                              ; preds = %136, %126
  br label %26

138:                                              ; preds = %113
  store i32 0, i32* %14, align 4
  %139 = load %struct.vdev_info*, %struct.vdev_info** %5, align 8
  %140 = getelementptr inbounds %struct.vdev_info, %struct.vdev_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @VHOST_TEST_RUN, align 4
  %143 = call i32 @ioctl(i32 %141, i32 %142, i32* %14)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp sge i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i32, i32* @stderr, align 4
  %149 = load i64, i64* %16, align 8
  %150 = call i32 @fprintf(i32 %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %149)
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @virtqueue_disable_cb(i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i64, i32) #1

declare dso_local i32 @virtqueue_add_outbuf(i32, %struct.scatterlist*, i32, i64, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @virtqueue_kick(i32) #1

declare dso_local i64 @virtqueue_get_buf(i32, i32*) #1

declare dso_local i64 @virtqueue_enable_cb_delayed(i32) #1

declare dso_local i32 @wait_for_interrupt(%struct.vdev_info*) #1

declare dso_local i64 @virtqueue_enable_cb(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
