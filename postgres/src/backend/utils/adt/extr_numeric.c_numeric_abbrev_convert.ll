; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_abbrev_convert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_abbrev_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8* }

@VARHDRSZ_SHORT = common dso_local global i64 0, align 8
@VARATT_SHORT_MAX = common dso_local global i64 0, align 8
@VARHDRSZ = common dso_local global i64 0, align 8
@NUMERIC_ABBREV_NAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*)* @numeric_abbrev_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numeric_abbrev_convert(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i8* @PG_DETOAST_DATUM_PACKED(i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @VARATT_IS_SHORT(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @VARSIZE_SHORT(i8* %28)
  %30 = load i64, i64* @VARHDRSZ_SHORT, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @VARATT_SHORT_MAX, align 8
  %34 = load i64, i64* @VARHDRSZ_SHORT, align 8
  %35 = sub nsw i64 %33, %34
  %36 = icmp sle i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* @VARHDRSZ, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @SET_VARSIZE(i8* %39, i64 %42)
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @VARDATA(i8* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @VARDATA_SHORT(i8* %46)
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @memcpy(i32 %45, i32 %47, i64 %48)
  %50 = load i8*, i8** %9, align 8
  %51 = ptrtoint i8* %50 to i64
  store i64 %51, i64* %7, align 8
  br label %55

52:                                               ; preds = %2
  %53 = load i8*, i8** %6, align 8
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %52, %24
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @NUMERIC_IS_NAN(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @NUMERIC_ABBREV_NAN, align 4
  store i32 %60, i32* %8, align 4
  br label %66

61:                                               ; preds = %55
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @init_var_from_num(i64 %62, i32* %11)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = call i32 @numeric_abbrev_convert_var(i32* %11, %struct.TYPE_6__* %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %61, %59
  %67 = load i8*, i8** %6, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @DatumGetPointer(i32 %69)
  %71 = icmp ne i64 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @pfree(i8* %73)
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i8* @PG_DETOAST_DATUM_PACKED(i32) #1

declare dso_local i64 @VARATT_IS_SHORT(i8*) #1

declare dso_local i64 @VARSIZE_SHORT(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SET_VARSIZE(i8*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @VARDATA(i8*) #1

declare dso_local i32 @VARDATA_SHORT(i8*) #1

declare dso_local i64 @NUMERIC_IS_NAN(i64) #1

declare dso_local i32 @init_var_from_num(i64, i32*) #1

declare dso_local i32 @numeric_abbrev_convert_var(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
