; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datum.c_datumCopy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datum.c_datumCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlena = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @datumCopy(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.varlena*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %7, align 4
  br label %72

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.varlena* @DatumGetPointer(i32 %24)
  store %struct.varlena* %25, %struct.varlena** %8, align 8
  %26 = load %struct.varlena*, %struct.varlena** %8, align 8
  %27 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(%struct.varlena* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = call i32* @DatumGetEOHP(i32 %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @EOH_get_flat_size(i32* %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @palloc(i64 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %11, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @EOH_flatten_into(i32* %37, i8* %38, i64 %39)
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @PointerGetDatum(i8* %41)
  store i32 %42, i32* %7, align 4
  br label %55

43:                                               ; preds = %23
  %44 = load %struct.varlena*, %struct.varlena** %8, align 8
  %45 = call i64 @VARSIZE_ANY(%struct.varlena* %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @palloc(i64 %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load %struct.varlena*, %struct.varlena** %8, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @memcpy(i8* %49, %struct.varlena* %50, i64 %51)
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @PointerGetDatum(i8* %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %43, %29
  br label %71

56:                                               ; preds = %20
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @datumGetSize(i32 %57, i32 %58, i32 %59)
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i64 @palloc(i64 %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %15, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call %struct.varlena* @DatumGetPointer(i32 %65)
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @memcpy(i8* %64, %struct.varlena* %66, i64 %67)
  %69 = load i8*, i8** %15, align 8
  %70 = call i32 @PointerGetDatum(i8* %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %56, %55
  br label %72

72:                                               ; preds = %71, %18
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local %struct.varlena* @DatumGetPointer(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(%struct.varlena*) #1

declare dso_local i32* @DatumGetEOHP(i32) #1

declare dso_local i64 @EOH_get_flat_size(i32*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i32 @EOH_flatten_into(i32*, i8*, i64) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i64 @VARSIZE_ANY(%struct.varlena*) #1

declare dso_local i32 @memcpy(i8*, %struct.varlena*, i64) #1

declare dso_local i64 @datumGetSize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
