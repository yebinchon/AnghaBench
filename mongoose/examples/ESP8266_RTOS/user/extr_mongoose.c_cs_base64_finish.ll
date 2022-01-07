; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_cs_base64_finish.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_cs_base64_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_base64_ctx = type { i64, i32, i32 (i8, i32)*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cs_base64_finish(%struct.cs_base64_ctx* %0) #0 {
  %2 = alloca %struct.cs_base64_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.cs_base64_ctx* %0, %struct.cs_base64_ctx** %2, align 8
  %4 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 3, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32* %15, i32 0, i32 %20)
  %22 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %23 = call i32 @cs_base64_emit_chunk(%struct.cs_base64_ctx* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %40, %8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 3, %29
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %33, i32 0, i32 2
  %35 = load i32 (i8, i32)*, i32 (i8, i32)** %34, align 8
  %36 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %35(i8 signext 61, i32 %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %24

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cs_base64_emit_chunk(%struct.cs_base64_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
