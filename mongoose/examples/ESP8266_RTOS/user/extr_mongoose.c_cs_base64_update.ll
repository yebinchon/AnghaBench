; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_cs_base64_update.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_cs_base64_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_base64_ctx = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cs_base64_update(%struct.cs_base64_ctx* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.cs_base64_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.cs_base64_ctx* %0, %struct.cs_base64_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %38, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %21, i64 %26
  store i8 %18, i8* %27, align 1
  %28 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %37

32:                                               ; preds = %14
  %33 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %4, align 8
  %34 = call i32 @cs_base64_emit_chunk(%struct.cs_base64_ctx* %33)
  %35 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %35, i32 0, i32 1
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %32, %14
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %10

41:                                               ; preds = %10
  ret void
}

declare dso_local i32 @cs_base64_emit_chunk(%struct.cs_base64_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
