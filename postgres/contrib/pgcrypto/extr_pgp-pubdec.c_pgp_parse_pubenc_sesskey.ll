; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubdec.c_pgp_parse_pubenc_sesskey.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubdec.c_pgp_parse_pubenc_sesskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }

@.str = private unnamed_addr constant [11 x i8] c"no pubkey?\00", align 1
@PXE_BUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unknown pubenc_sesskey pkt ver=%d\00", align 1
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@any_key = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"key_id's does not match\00", align 1
@PXE_PGP_WRONG_KEY = common dso_local global i32 0, align 4
@PXE_PGP_UNKNOWN_PUBALGO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"check_eme_pkcs1_v15 failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_parse_pubenc_sesskey(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %10, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @PXE_BUG, align 4
  store i32 %21, i32* %3, align 4
  br label %137

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @GETBYTE(i32* %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %31, i32* %3, align 4
  br label %137

32:                                               ; preds = %22
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %35 = call i32 @pullf_read_fixed(i32* %33, i32 8, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %137

40:                                               ; preds = %32
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %42 = load i32, i32* @any_key, align 4
  %43 = call i64 @memcmp(i32* %41, i32 %42, i32 8)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @memcmp(i32* %46, i32 %49, i32 8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @PXE_PGP_WRONG_KEY, align 4
  store i32 %54, i32* %3, align 4
  br label %137

55:                                               ; preds = %45, %40
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @GETBYTE(i32* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  switch i32 %59, label %68 [
    i32 130, label %60
    i32 129, label %64
    i32 128, label %64
  ]

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @decrypt_elgamal(%struct.TYPE_10__* %61, i32* %62, %struct.TYPE_11__** %13)
  store i32 %63, i32* %8, align 4
  br label %70

64:                                               ; preds = %55, %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @decrypt_rsa(%struct.TYPE_10__* %65, i32* %66, %struct.TYPE_11__** %13)
  store i32 %67, i32* %8, align 4
  br label %70

68:                                               ; preds = %55
  %69 = load i32, i32* @PXE_PGP_UNKNOWN_PUBALGO, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %68, %64, %60
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %137

75:                                               ; preds = %70
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32* @check_eme_pkcs1_v15(i32* %78, i32 %81)
  store i32* %82, i32** %11, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @PXE_PGP_WRONG_KEY, align 4
  store i32 %87, i32* %8, align 4
  br label %127

88:                                               ; preds = %75
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = load i32*, i32** %11, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = ptrtoint i32* %93 to i64
  %98 = ptrtoint i32* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 4
  %101 = sub nsw i64 %92, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %12, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @control_cksum(i32* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %88
  br label %127

109:                                              ; preds = %88
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sub nsw i32 %114, 3
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %11, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @memcpy(i32 %120, i32* %122, i32 %125)
  br label %127

127:                                              ; preds = %109, %108, %85
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %129 = call i32 @pgp_mpi_free(%struct.TYPE_11__* %128)
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %3, align 4
  br label %137

134:                                              ; preds = %127
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @pgp_expect_packet_end(i32* %135)
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %134, %132, %73, %52, %38, %28, %19
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @px_debug(i8*, ...) #1

declare dso_local i32 @GETBYTE(i32*, i32) #1

declare dso_local i32 @pullf_read_fixed(i32*, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @decrypt_elgamal(%struct.TYPE_10__*, i32*, %struct.TYPE_11__**) #1

declare dso_local i32 @decrypt_rsa(%struct.TYPE_10__*, i32*, %struct.TYPE_11__**) #1

declare dso_local i32* @check_eme_pkcs1_v15(i32*, i32) #1

declare dso_local i32 @control_cksum(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @pgp_mpi_free(%struct.TYPE_11__*) #1

declare dso_local i32 @pgp_expect_packet_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
