; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_cs_base64_emit_code.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_cs_base64_emit_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_base64_ctx = type { i32, i32 (i8, i32)* }

@NUM_UPPERCASES = common dso_local global i32 0, align 4
@NUM_LETTERS = common dso_local global i32 0, align 4
@NUM_DIGITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_base64_ctx*, i32)* @cs_base64_emit_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_base64_emit_code(%struct.cs_base64_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.cs_base64_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.cs_base64_ctx* %0, %struct.cs_base64_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NUM_UPPERCASES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %9, i32 0, i32 1
  %11 = load i32 (i8, i32)*, i32 (i8, i32)** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 65
  %14 = trunc i32 %13 to i8
  %15 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 %11(i8 signext %14, i32 %17)
  br label %74

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NUM_LETTERS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %24, i32 0, i32 1
  %26 = load i32 (i8, i32)*, i32 (i8, i32)** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NUM_UPPERCASES, align 4
  %29 = sub nsw i32 %27, %28
  %30 = add nsw i32 %29, 97
  %31 = trunc i32 %30 to i8
  %32 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %26(i8 signext %31, i32 %34)
  br label %73

36:                                               ; preds = %19
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @NUM_LETTERS, align 4
  %39 = load i32, i32* @NUM_DIGITS, align 4
  %40 = add nsw i32 %38, %39
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %43, i32 0, i32 1
  %45 = load i32 (i8, i32)*, i32 (i8, i32)** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @NUM_LETTERS, align 4
  %48 = sub nsw i32 %46, %47
  %49 = add nsw i32 %48, 48
  %50 = trunc i32 %49 to i8
  %51 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %45(i8 signext %50, i32 %53)
  br label %72

55:                                               ; preds = %36
  %56 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %56, i32 0, i32 1
  %58 = load i32 (i8, i32)*, i32 (i8, i32)** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @NUM_LETTERS, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* @NUM_DIGITS, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 43, i32 47
  %67 = trunc i32 %66 to i8
  %68 = load %struct.cs_base64_ctx*, %struct.cs_base64_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.cs_base64_ctx, %struct.cs_base64_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %58(i8 signext %67, i32 %70)
  br label %72

72:                                               ; preds = %55, %42
  br label %73

73:                                               ; preds = %72, %23
  br label %74

74:                                               ; preds = %73, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
