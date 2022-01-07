; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datum.c_datumGetSize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datum.c_datumGetSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlena = type opaque

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_EXCEPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid Datum pointer\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid typLen: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @datumGetSize(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.varlena*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ule i64 %17, 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  br label %79

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %7, align 8
  br label %78

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @DatumGetPointer(i32 %35)
  %37 = inttoptr i64 %36 to %struct.varlena*
  store %struct.varlena* %37, %struct.varlena** %8, align 8
  %38 = load %struct.varlena*, %struct.varlena** %8, align 8
  %39 = bitcast %struct.varlena* %38 to i8*
  %40 = call i32 @PointerIsValid(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_DATA_EXCEPTION, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %34
  %49 = load %struct.varlena*, %struct.varlena** %8, align 8
  %50 = bitcast %struct.varlena* %49 to i8*
  %51 = call i64 @VARSIZE_ANY(i8* %50)
  store i64 %51, i64* %7, align 8
  br label %77

52:                                               ; preds = %31
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, -2
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @DatumGetPointer(i32 %56)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @PointerIsValid(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_DATA_EXCEPTION, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %67 = call i32 @ereport(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %55
  %69 = load i8*, i8** %9, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %76

72:                                               ; preds = %52
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @elog(i32 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i64 0, i64* %7, align 8
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %28
  br label %79

79:                                               ; preds = %78, %19
  %80 = load i64, i64* %7, align 8
  ret i64 %80
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @PointerIsValid(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @VARSIZE_ANY(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
