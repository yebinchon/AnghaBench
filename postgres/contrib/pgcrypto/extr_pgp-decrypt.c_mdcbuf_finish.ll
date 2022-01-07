; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_mdcbuf_finish.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_mdcbuf_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MDCBufData = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"mdcbuf_finish: bad MDC pkt hdr\00", align 1
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"mdcbuf_finish: MDC does not match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MDCBufData*)* @mdcbuf_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdcbuf_finish(%struct.MDCBufData* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MDCBufData*, align 8
  %4 = alloca [20 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.MDCBufData* %0, %struct.MDCBufData** %3, align 8
  %6 = load %struct.MDCBufData*, %struct.MDCBufData** %3, align 8
  %7 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.MDCBufData*, %struct.MDCBufData** %3, align 8
  %9 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 211
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.MDCBufData*, %struct.MDCBufData** %3, align 8
  %16 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 20
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %1
  %22 = call i32 @px_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %14
  %25 = load %struct.MDCBufData*, %struct.MDCBufData** %3, align 8
  %26 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.MDCBufData*, %struct.MDCBufData** %3, align 8
  %31 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @px_md_update(i32 %29, i32* %32, i32 2)
  %34 = load %struct.MDCBufData*, %struct.MDCBufData** %3, align 8
  %35 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %40 = call i32 @px_md_finish(i32 %38, i32* %39)
  %41 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %42 = load %struct.MDCBufData*, %struct.MDCBufData** %3, align 8
  %43 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = call i32 @memcmp(i32* %41, i32* %45, i32 20)
  store i32 %46, i32* %5, align 4
  %47 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %48 = call i32 @px_memset(i32* %47, i32 0, i32 20)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %24
  %52 = call i32 @px_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %24
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %21
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @px_debug(i8*) #1

declare dso_local i32 @px_md_update(i32, i32*, i32) #1

declare dso_local i32 @px_md_finish(i32, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @px_memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
