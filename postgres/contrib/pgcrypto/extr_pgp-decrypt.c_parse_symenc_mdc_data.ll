; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_parse_symenc_mdc_data.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_parse_symenc_mdc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"parse_symenc_mdc_data: pkt ver != 1\00", align 1
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@pgp_decrypt_filter = common dso_local global i32 0, align 4
@mdc_filter = common dso_local global i32 0, align 4
@prefix_filter = common dso_local global i32 0, align 4
@ALLOW_COMPR = common dso_local global i32 0, align 4
@NEED_MDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*)* @parse_symenc_mdc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_symenc_mdc_data(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %13, align 4
  %16 = call i32 @GETBYTE(i32* %14, i32 %15)
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = call i32 @px_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %21, i32* %4, align 4
  br label %90

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pgp_cfb_create(%struct.TYPE_8__** %9, i32 %25, i32 %28, i32 %31, i32 0, i32* null)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %64

36:                                               ; preds = %22
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @pullf_create(i32** %10, i32* @pgp_decrypt_filter, %struct.TYPE_8__* %37, i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %64

43:                                               ; preds = %36
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @pullf_create(i32** %12, i32* @mdc_filter, %struct.TYPE_8__* %44, i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %64

50:                                               ; preds = %43
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @pullf_create(i32** %11, i32* @prefix_filter, %struct.TYPE_8__* %51, i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %64

57:                                               ; preds = %50
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* @ALLOW_COMPR, align 4
  %62 = load i32, i32* @NEED_MDC, align 4
  %63 = call i32 @process_data_packets(%struct.TYPE_8__* %58, i32* %59, i32* %60, i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %57, %56, %49, %42, %35
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @pullf_free(i32* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32*, i32** %12, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @pullf_free(i32* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32*, i32** %10, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @pullf_free(i32* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %87 = call i32 @pgp_cfb_free(%struct.TYPE_8__* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @GETBYTE(i32*, i32) #1

declare dso_local i32 @px_debug(i8*) #1

declare dso_local i32 @pgp_cfb_create(%struct.TYPE_8__**, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pullf_create(i32**, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @process_data_packets(%struct.TYPE_8__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @pullf_free(i32*) #1

declare dso_local i32 @pgp_cfb_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
