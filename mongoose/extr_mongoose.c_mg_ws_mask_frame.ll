; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_ws_mask_frame.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_ws_mask_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i8* }
%struct.ws_mask_ctx = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.ws_mask_ctx*)* @mg_ws_mask_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_ws_mask_frame(%struct.mbuf* %0, %struct.ws_mask_ctx* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ws_mask_ctx*, align 8
  %5 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.ws_mask_ctx* %1, %struct.ws_mask_ctx** %4, align 8
  %6 = load %struct.ws_mask_ctx*, %struct.ws_mask_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.ws_mask_ctx, %struct.ws_mask_ctx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %47

11:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %44, %11
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ws_mask_ctx*, %struct.ws_mask_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.ws_mask_ctx, %struct.ws_mask_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  %21 = icmp ult i64 %13, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %12
  %23 = load %struct.ws_mask_ctx*, %struct.ws_mask_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.ws_mask_ctx, %struct.ws_mask_ctx* %23, i32 0, i32 1
  %25 = bitcast i32* %24 to i8*
  %26 = load i64, i64* %5, align 8
  %27 = urem i64 %26, 4
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.ws_mask_ctx*, %struct.ws_mask_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.ws_mask_ctx, %struct.ws_mask_ctx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %36, %37
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = xor i32 %41, %30
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %39, align 1
  br label %44

44:                                               ; preds = %22
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %12

47:                                               ; preds = %10, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
