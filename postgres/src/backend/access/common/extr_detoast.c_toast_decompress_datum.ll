; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_detoast.c_toast_decompress_datum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_detoast.c_toast_decompress_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlena = type { i32 }

@VARHDRSZ = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"compressed data is corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.varlena* (%struct.varlena*)* @toast_decompress_datum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.varlena* @toast_decompress_datum(%struct.varlena* %0) #0 {
  %2 = alloca %struct.varlena*, align 8
  %3 = alloca %struct.varlena*, align 8
  store %struct.varlena* %0, %struct.varlena** %2, align 8
  %4 = load %struct.varlena*, %struct.varlena** %2, align 8
  %5 = call i32 @VARATT_IS_COMPRESSED(%struct.varlena* %4)
  %6 = call i32 @Assert(i32 %5)
  %7 = load %struct.varlena*, %struct.varlena** %2, align 8
  %8 = call i64 @TOAST_COMPRESS_RAWSIZE(%struct.varlena* %7)
  %9 = load i64, i64* @VARHDRSZ, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @palloc(i64 %10)
  %12 = inttoptr i64 %11 to %struct.varlena*
  store %struct.varlena* %12, %struct.varlena** %3, align 8
  %13 = load %struct.varlena*, %struct.varlena** %3, align 8
  %14 = load %struct.varlena*, %struct.varlena** %2, align 8
  %15 = call i64 @TOAST_COMPRESS_RAWSIZE(%struct.varlena* %14)
  %16 = load i64, i64* @VARHDRSZ, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @SET_VARSIZE(%struct.varlena* %13, i64 %17)
  %19 = load %struct.varlena*, %struct.varlena** %2, align 8
  %20 = call i32 @TOAST_COMPRESS_RAWDATA(%struct.varlena* %19)
  %21 = load %struct.varlena*, %struct.varlena** %2, align 8
  %22 = call i32 @TOAST_COMPRESS_SIZE(%struct.varlena* %21)
  %23 = load %struct.varlena*, %struct.varlena** %3, align 8
  %24 = call i32 @VARDATA(%struct.varlena* %23)
  %25 = load %struct.varlena*, %struct.varlena** %2, align 8
  %26 = call i64 @TOAST_COMPRESS_RAWSIZE(%struct.varlena* %25)
  %27 = call i64 @pglz_decompress(i32 %20, i32 %22, i32 %24, i64 %26, i32 1)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @ERROR, align 4
  %31 = call i32 @elog(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.varlena*, %struct.varlena** %3, align 8
  ret %struct.varlena* %33
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @VARATT_IS_COMPRESSED(%struct.varlena*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i64 @TOAST_COMPRESS_RAWSIZE(%struct.varlena*) #1

declare dso_local i32 @SET_VARSIZE(%struct.varlena*, i64) #1

declare dso_local i64 @pglz_decompress(i32, i32, i32, i64, i32) #1

declare dso_local i32 @TOAST_COMPRESS_RAWDATA(%struct.varlena*) #1

declare dso_local i32 @TOAST_COMPRESS_SIZE(%struct.varlena*) #1

declare dso_local i32 @VARDATA(%struct.varlena*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
