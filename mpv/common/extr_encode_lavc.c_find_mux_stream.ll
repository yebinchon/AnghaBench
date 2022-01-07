; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_find_mux_stream.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_find_mux_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_stream = type { i32 }
%struct.encode_lavc_context = type { %struct.encode_priv* }
%struct.encode_priv = type { i32, %struct.mux_stream** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mux_stream* (%struct.encode_lavc_context*, i32)* @find_mux_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mux_stream* @find_mux_stream(%struct.encode_lavc_context* %0, i32 %1) #0 {
  %3 = alloca %struct.mux_stream*, align 8
  %4 = alloca %struct.encode_lavc_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.encode_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mux_stream*, align 8
  store %struct.encode_lavc_context* %0, %struct.encode_lavc_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %4, align 8
  %10 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %9, i32 0, i32 0
  %11 = load %struct.encode_priv*, %struct.encode_priv** %10, align 8
  store %struct.encode_priv* %11, %struct.encode_priv** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.encode_priv*, %struct.encode_priv** %6, align 8
  %15 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load %struct.encode_priv*, %struct.encode_priv** %6, align 8
  %20 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %19, i32 0, i32 1
  %21 = load %struct.mux_stream**, %struct.mux_stream*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mux_stream*, %struct.mux_stream** %21, i64 %23
  %25 = load %struct.mux_stream*, %struct.mux_stream** %24, align 8
  store %struct.mux_stream* %25, %struct.mux_stream** %8, align 8
  %26 = load %struct.mux_stream*, %struct.mux_stream** %8, align 8
  %27 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load %struct.mux_stream*, %struct.mux_stream** %8, align 8
  store %struct.mux_stream* %32, %struct.mux_stream** %3, align 8
  br label %38

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %12

37:                                               ; preds = %12
  store %struct.mux_stream* null, %struct.mux_stream** %3, align 8
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.mux_stream*, %struct.mux_stream** %3, align 8
  ret %struct.mux_stream* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
