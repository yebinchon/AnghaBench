; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_PGTYPEStimestamp_to_asc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_PGTYPEStimestamp_to_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@MAXDATELEN = common dso_local global i32 0, align 4
@PGTYPES_TS_BAD_TIMESTAMP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PGTYPEStimestamp_to_asc(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.tm* %4, %struct.tm** %5, align 8
  %11 = load i32, i32* @MAXDATELEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 1, i32* %9, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @TIMESTAMP_NOT_FINITE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @EncodeSpecialTimestamp(i32 %20, i8* %15)
  br label %35

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.tm*, %struct.tm** %5, align 8
  %25 = call i64 @timestamp2tm(i32 %23, i32* null, %struct.tm* %24, i32* %8, i32* null)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.tm*, %struct.tm** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @EncodeDateTime(%struct.tm* %28, i32 %29, i32 0, i32 0, i32* null, i32 %30, i8* %15, i32 0)
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @PGTYPES_TS_BAD_TIMESTAMP, align 4
  store i32 %33, i32* @errno, align 4
  store i8* null, i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %37

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %19
  %36 = call i8* @pgtypes_strdup(i8* %15)
  store i8* %36, i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @TIMESTAMP_NOT_FINITE(i32) #2

declare dso_local i32 @EncodeSpecialTimestamp(i32, i8*) #2

declare dso_local i64 @timestamp2tm(i32, i32*, %struct.tm*, i32*, i32*) #2

declare dso_local i32 @EncodeDateTime(%struct.tm*, i32, i32, i32, i32*, i32, i8*, i32) #2

declare dso_local i8* @pgtypes_strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
