; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_detoast.c_toast_decompress_datum_slice.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_detoast.c_toast_decompress_datum_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlena = type { i32 }

@VARHDRSZ = common dso_local global i64 0, align 8
@TOAST_COMPRESS_HDRSZ = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"compressed data is corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.varlena* (%struct.varlena*, i64)* @toast_decompress_datum_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.varlena* @toast_decompress_datum_slice(%struct.varlena* %0, i64 %1) #0 {
  %3 = alloca %struct.varlena*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.varlena*, align 8
  %6 = alloca i64, align 8
  store %struct.varlena* %0, %struct.varlena** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.varlena*, %struct.varlena** %3, align 8
  %8 = call i32 @VARATT_IS_COMPRESSED(%struct.varlena* %7)
  %9 = call i32 @Assert(i32 %8)
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @VARHDRSZ, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i64 @palloc(i64 %12)
  %14 = inttoptr i64 %13 to %struct.varlena*
  store %struct.varlena* %14, %struct.varlena** %5, align 8
  %15 = load %struct.varlena*, %struct.varlena** %3, align 8
  %16 = call i32 @TOAST_COMPRESS_RAWDATA(%struct.varlena* %15)
  %17 = load %struct.varlena*, %struct.varlena** %3, align 8
  %18 = call i64 @VARSIZE(%struct.varlena* %17)
  %19 = load i64, i64* @TOAST_COMPRESS_HDRSZ, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load %struct.varlena*, %struct.varlena** %5, align 8
  %22 = call i32 @VARDATA(%struct.varlena* %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @pglz_decompress(i32 %16, i64 %20, i32 %22, i64 %23, i32 0)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.varlena*, %struct.varlena** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @VARHDRSZ, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @SET_VARSIZE(%struct.varlena* %31, i64 %34)
  %36 = load %struct.varlena*, %struct.varlena** %5, align 8
  ret %struct.varlena* %36
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @VARATT_IS_COMPRESSED(%struct.varlena*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i64 @pglz_decompress(i32, i64, i32, i64, i32) #1

declare dso_local i32 @TOAST_COMPRESS_RAWDATA(%struct.varlena*) #1

declare dso_local i64 @VARSIZE(%struct.varlena*) #1

declare dso_local i32 @VARDATA(%struct.varlena*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @SET_VARSIZE(%struct.varlena*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
