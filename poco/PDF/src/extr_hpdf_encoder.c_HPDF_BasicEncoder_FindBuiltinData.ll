; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder.c_HPDF_BasicEncoder_FindBuiltinData.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder.c_HPDF_BasicEncoder_FindBuiltinData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c" HPDF_BasicEncoder_FindBuiltinData\0A\00", align 1
@HPDF_BUILTIN_ENCODINGS = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @HPDF_BasicEncoder_FindBuiltinData(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %22, %1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @HPDF_BUILTIN_ENCODINGS, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %5
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @HPDF_BUILTIN_ENCODINGS, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @HPDF_StrCmp(i64 %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %25

22:                                               ; preds = %12
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %5

25:                                               ; preds = %21, %5
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @HPDF_BUILTIN_ENCODINGS, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  ret %struct.TYPE_4__* %28
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_StrCmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
