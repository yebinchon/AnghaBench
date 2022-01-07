; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_name.c_HPDF_Name_SetValue.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_name.c_HPDF_Name_SetValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@HPDF_NAME_INVALID_VALUE = common dso_local global i32 0, align 4
@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i64 0, align 8
@HPDF_NAME_OUT_OF_RANGE = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Name_SetValue(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8, %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HPDF_NAME_INVALID_VALUE, align 4
  %19 = call i32 @HPDF_SetError(i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i64 @HPDF_StrLen(i8* %21, i64 %23)
  %25 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HPDF_NAME_OUT_OF_RANGE, align 4
  %32 = call i32 @HPDF_SetError(i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %20
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @HPDF_StrCpy(i64 %36, i8* %37, i64 %42)
  %44 = load i32, i32* @HPDF_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %33, %27, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @HPDF_StrLen(i8*, i64) #1

declare dso_local i32 @HPDF_StrCpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
