; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_skip_schema.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_skip_schema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@skip_schema.its_schema = internal constant [4 x i8] c"its:", align 1
@skip_schema.msits_schema = internal constant [7 x i8] c"ms-its:", align 1
@skip_schema.mk_schema = internal constant [14 x i8] c"mk:@MSITStore:", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @skip_schema(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @skip_schema.its_schema, i64 0, i64 0))
  %6 = call i32 @_wcsnicmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @skip_schema.its_schema, i64 0, i64 0), i64 %4, i64 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @skip_schema.its_schema, i64 0, i64 0))
  %11 = add nsw i64 %9, %10
  store i64 %11, i64* %2, align 8
  br label %32

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @skip_schema.msits_schema, i64 0, i64 0))
  %15 = call i32 @_wcsnicmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @skip_schema.msits_schema, i64 0, i64 0), i64 %13, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @skip_schema.msits_schema, i64 0, i64 0))
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %2, align 8
  br label %32

21:                                               ; preds = %12
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @skip_schema.mk_schema, i64 0, i64 0))
  %24 = call i32 @_wcsnicmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @skip_schema.mk_schema, i64 0, i64 0), i64 %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @skip_schema.mk_schema, i64 0, i64 0))
  %29 = add nsw i64 %27, %28
  store i64 %29, i64* %2, align 8
  br label %32

30:                                               ; preds = %21
  %31 = load i64, i64* %3, align 8
  store i64 %31, i64* %2, align 8
  br label %32

32:                                               ; preds = %30, %26, %17, %8
  %33 = load i64, i64* %2, align 8
  ret i64 %33
}

declare dso_local i32 @_wcsnicmp(i8*, i64, i64) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
