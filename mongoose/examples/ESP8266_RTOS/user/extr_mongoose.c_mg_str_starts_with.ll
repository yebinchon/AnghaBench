; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_str_starts_with.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_str_starts_with.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_str_starts_with(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mg_str, align 8
  %7 = alloca %struct.mg_str, align 8
  %8 = alloca %struct.mg_str, align 8
  %9 = bitcast %struct.mg_str* %6 to { i64, i32 }*
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %1, i32* %11, align 8
  %12 = bitcast %struct.mg_str* %7 to { i64, i32 }*
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %3, i32* %14, align 8
  %15 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call { i64, i32 } @MG_MK_STR_N(i32 %16, i64 %18)
  %20 = bitcast %struct.mg_str* %8 to { i64, i32 }*
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %22 = extractvalue { i64, i32 } %19, 0
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %24 = extractvalue { i64, i32 } %19, 1
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

31:                                               ; preds = %4
  %32 = bitcast %struct.mg_str* %8 to { i64, i32 }*
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = bitcast %struct.mg_str* %7 to { i64, i32 }*
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @mg_strcmp(i64 %34, i32 %36, i64 %39, i32 %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %31, %30
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local { i64, i32 } @MG_MK_STR_N(i32, i64) #1

declare dso_local i64 @mg_strcmp(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
