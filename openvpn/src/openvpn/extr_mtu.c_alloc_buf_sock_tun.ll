; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_mtu.c_alloc_buf_sock_tun.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_mtu.c_alloc_buf_sock_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.frame = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_buf_sock_tun(%struct.buffer* %0, %struct.frame* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca %struct.frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer, align 4
  store %struct.buffer* %0, %struct.buffer** %5, align 8
  store %struct.frame* %1, %struct.frame** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.buffer*, %struct.buffer** %5, align 8
  %11 = load %struct.frame*, %struct.frame** %6, align 8
  %12 = call i32 @BUF_SIZE(%struct.frame* %11)
  %13 = call i32 @alloc_buf(i32 %12)
  %14 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = bitcast %struct.buffer* %10 to i8*
  %16 = bitcast %struct.buffer* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.buffer*, %struct.buffer** %5, align 8
  %18 = load %struct.frame*, %struct.frame** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @FRAME_HEADROOM_ADJ(%struct.frame* %18, i32 %19)
  %21 = call i32 @buf_init(%struct.buffer* %17, i32 %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.frame*, %struct.frame** %6, align 8
  %27 = call i32 @MAX_RW_SIZE_TUN(%struct.frame* %26)
  br label %31

28:                                               ; preds = %4
  %29 = load %struct.frame*, %struct.frame** %6, align 8
  %30 = call i32 @MAX_RW_SIZE_LINK(%struct.frame* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ %27, %25 ], [ %30, %28 ]
  %33 = load %struct.buffer*, %struct.buffer** %5, align 8
  %34 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.buffer*, %struct.buffer** %5, align 8
  %36 = call i32 @buf_safe(%struct.buffer* %35, i32 0)
  %37 = call i32 @ASSERT(i32 %36)
  ret void
}

declare dso_local i32 @alloc_buf(i32) #1

declare dso_local i32 @BUF_SIZE(%struct.frame*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_init(%struct.buffer*, i32) #1

declare dso_local i32 @FRAME_HEADROOM_ADJ(%struct.frame*, i32) #1

declare dso_local i32 @MAX_RW_SIZE_TUN(%struct.frame*) #1

declare dso_local i32 @MAX_RW_SIZE_LINK(%struct.frame*) #1

declare dso_local i32 @buf_safe(%struct.buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
