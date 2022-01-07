; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-array.c_lwan_array_reset.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-array.c_lwan_array_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_array = type { i8*, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwan_array_reset(%struct.lwan_array* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwan_array*, align 8
  %5 = alloca i8*, align 8
  store %struct.lwan_array* %0, %struct.lwan_array** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.lwan_array*, %struct.lwan_array** %4, align 8
  %7 = icmp ne %struct.lwan_array* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @UNLIKELY(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.lwan_array*, %struct.lwan_array** %4, align 8
  %17 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.lwan_array*, %struct.lwan_array** %4, align 8
  %23 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @free(i8* %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.lwan_array*, %struct.lwan_array** %4, align 8
  %28 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %27, i32 0, i32 0
  store i8* null, i8** %28, align 8
  %29 = load %struct.lwan_array*, %struct.lwan_array** %4, align 8
  %30 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
