; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_strchr.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_strchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mg_strchr(i64 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mg_str, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = bitcast %struct.mg_str* %5 to { i64, i32* }*
  %9 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %8, i32 0, i32 1
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %31, %3
  %12 = load i64, i64* %7, align 8
  %13 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %4, align 8
  br label %35

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %11

34:                                               ; preds = %11
  store i8* null, i8** %4, align 8
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
