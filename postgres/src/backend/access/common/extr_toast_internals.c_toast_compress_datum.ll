; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_toast_internals.c_toast_compress_datum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_toast_internals.c_toast_compress_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.varlena = type { i32 }

@PGLZ_strategy_default = common dso_local global %struct.TYPE_3__* null, align 8
@TOAST_COMPRESS_HDRSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @toast_compress_datum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.varlena*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @DatumGetPointer(i32 %7)
  %9 = call i64 @VARSIZE_ANY_EXHDR(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @DatumGetPointer(i32 %10)
  %12 = call i32 @VARATT_IS_EXTERNAL(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @DatumGetPointer(i32 %17)
  %19 = call i32 @VARATT_IS_COMPRESSED(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @PGLZ_strategy_default, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @PGLZ_strategy_default, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %1
  %36 = call i32 @PointerGetDatum(%struct.varlena* null)
  store i32 %36, i32* %2, align 4
  br label %76

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @PGLZ_MAX_OUTPUT(i64 %38)
  %40 = load i64, i64* @TOAST_COMPRESS_HDRSZ, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i64 @palloc(i64 %41)
  %43 = inttoptr i64 %42 to %struct.varlena*
  store %struct.varlena* %43, %struct.varlena** %4, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @DatumGetPointer(i32 %44)
  %46 = call i32 @VARDATA_ANY(i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.varlena*, %struct.varlena** %4, align 8
  %49 = call i32 @TOAST_COMPRESS_RAWDATA(%struct.varlena* %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @PGLZ_strategy_default, align 8
  %51 = call i64 @pglz_compress(i32 %46, i64 %47, i32 %49, %struct.TYPE_3__* %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %37
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @TOAST_COMPRESS_HDRSZ, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* %5, align 8
  %59 = sub nsw i64 %58, 2
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.varlena*, %struct.varlena** %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @TOAST_COMPRESS_SET_RAWSIZE(%struct.varlena* %62, i64 %63)
  %65 = load %struct.varlena*, %struct.varlena** %4, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @TOAST_COMPRESS_HDRSZ, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @SET_VARSIZE_COMPRESSED(%struct.varlena* %65, i64 %68)
  %70 = load %struct.varlena*, %struct.varlena** %4, align 8
  %71 = call i32 @PointerGetDatum(%struct.varlena* %70)
  store i32 %71, i32* %2, align 4
  br label %76

72:                                               ; preds = %54, %37
  %73 = load %struct.varlena*, %struct.varlena** %4, align 8
  %74 = call i32 @pfree(%struct.varlena* %73)
  %75 = call i32 @PointerGetDatum(%struct.varlena* null)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %61, %35
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @VARSIZE_ANY_EXHDR(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @VARATT_IS_EXTERNAL(i32) #1

declare dso_local i32 @VARATT_IS_COMPRESSED(i32) #1

declare dso_local i32 @PointerGetDatum(%struct.varlena*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i64 @PGLZ_MAX_OUTPUT(i64) #1

declare dso_local i64 @pglz_compress(i32, i64, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @VARDATA_ANY(i32) #1

declare dso_local i32 @TOAST_COMPRESS_RAWDATA(%struct.varlena*) #1

declare dso_local i32 @TOAST_COMPRESS_SET_RAWSIZE(%struct.varlena*, i64) #1

declare dso_local i32 @SET_VARSIZE_COMPRESSED(%struct.varlena*, i64) #1

declare dso_local i32 @pfree(%struct.varlena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
