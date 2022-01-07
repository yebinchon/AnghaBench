; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_buffer_turnover.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_buffer_turnover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.buffer*, %struct.buffer*, %struct.buffer*)* @buffer_turnover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_turnover(i32* %0, %struct.buffer* %1, %struct.buffer* %2, %struct.buffer* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca %struct.buffer*, align 8
  %8 = alloca %struct.buffer*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store %struct.buffer* %2, %struct.buffer** %7, align 8
  store %struct.buffer* %3, %struct.buffer** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.buffer*, %struct.buffer** %7, align 8
  %11 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %4
  %15 = load %struct.buffer*, %struct.buffer** %7, align 8
  %16 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.buffer*, %struct.buffer** %8, align 8
  %19 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %17, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct.buffer*, %struct.buffer** %8, align 8
  %24 = load %struct.buffer*, %struct.buffer** %7, align 8
  %25 = call i32 @buf_assign(%struct.buffer* %23, %struct.buffer* %24)
  %26 = load %struct.buffer*, %struct.buffer** %6, align 8
  %27 = load %struct.buffer*, %struct.buffer** %8, align 8
  %28 = bitcast %struct.buffer* %26 to i8*
  %29 = bitcast %struct.buffer* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  br label %35

30:                                               ; preds = %14, %4
  %31 = load %struct.buffer*, %struct.buffer** %6, align 8
  %32 = load %struct.buffer*, %struct.buffer** %7, align 8
  %33 = bitcast %struct.buffer* %31 to i8*
  %34 = bitcast %struct.buffer* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  br label %35

35:                                               ; preds = %30, %22
  ret void
}

declare dso_local i32 @buf_assign(%struct.buffer*, %struct.buffer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
