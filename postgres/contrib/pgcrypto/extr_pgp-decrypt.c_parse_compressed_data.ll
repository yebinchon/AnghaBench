; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_parse_compressed_data.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_parse_compressed_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@NO_COMPR = common dso_local global i32 0, align 4
@NO_MDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"parse_compressed_data: bzip2 unsupported\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"parse_compressed_data: unknown compr type\00", align 1
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*)* @parse_compressed_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_compressed_data(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @GETBYTE(i32* %11, i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %53 [
    i32 130, label %18
    i32 129, label %25
    i32 128, label %25
    i32 131, label %41
  ]

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @NO_COMPR, align 4
  %23 = load i32, i32* @NO_MDC, align 4
  %24 = call i32 @process_data_packets(%struct.TYPE_5__* %19, i32* %20, i32* %21, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %56

25:                                               ; preds = %3, %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @pgp_decompress_filter(i32** %9, %struct.TYPE_5__* %26, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @NO_COMPR, align 4
  %36 = load i32, i32* @NO_MDC, align 4
  %37 = call i32 @process_data_packets(%struct.TYPE_5__* %32, i32* %33, i32* %34, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @pullf_free(i32* %38)
  br label %40

40:                                               ; preds = %31, %25
  br label %56

41:                                               ; preds = %3
  %42 = call i32 @px_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %51
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @pullf_read(i32* %46, i32 32768, i32** %10)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %52

51:                                               ; preds = %45
  br label %45

52:                                               ; preds = %50
  br label %56

53:                                               ; preds = %3
  %54 = call i32 @px_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %52, %40, %18
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @GETBYTE(i32*, i32) #1

declare dso_local i32 @process_data_packets(%struct.TYPE_5__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @pgp_decompress_filter(i32**, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @pullf_free(i32*) #1

declare dso_local i32 @px_debug(i8*) #1

declare dso_local i32 @pullf_read(i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
