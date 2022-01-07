; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_cs_base64_emit_chunk.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_cs_base64_emit_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_base64_ctx = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_base64_ctx*)* @cs_base64_emit_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_base64_emit_chunk(%struct.cs_base64_ctx* %0) #0 {
  %2 = alloca %struct.cs_base64_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cs_base64_ctx* %0, %struct.cs_base64_ctx** %2, align 8
  %6 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 2
  %24 = call i32 @cs_base64_emit_code(%struct.cs_base64_ctx* %21, i32 %23)
  %25 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 3
  %28 = shl i32 %27, 4
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 4
  %31 = or i32 %28, %30
  %32 = call i32 @cs_base64_emit_code(%struct.cs_base64_ctx* %25, i32 %31)
  %33 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %46

37:                                               ; preds = %1
  %38 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 15
  %41 = shl i32 %40, 2
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 6
  %44 = or i32 %41, %43
  %45 = call i32 @cs_base64_emit_code(%struct.cs_base64_ctx* %38, i32 %44)
  br label %46

46:                                               ; preds = %37, %1
  %47 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 63
  %55 = call i32 @cs_base64_emit_code(%struct.cs_base64_ctx* %52, i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  ret void
}

declare dso_local i32 @cs_base64_emit_code(%struct.cs_base64_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
