; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_pgp_decrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_pgp_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64 }

@NO_CTX_SIZE = common dso_local global i32 0, align 4
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pgp_decrypt: using first of several keys\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"pgp_decrypt: have data but no key\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"pgp_decrypt: got second data packet\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"pgp_decrypt: several data pkts not supported\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"pgp_decrypt: unknown tag: 0x%02x\00", align 1
@PXE_PGP_UNSUPPORTED_COMPR = common dso_local global i32 0, align 4
@PXE_PGP_NOT_TEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_decrypt(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @pullf_create_mbuf_reader(i32** %9, i32* %15)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %97, %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %100

20:                                               ; preds = %17
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @NO_CTX_SIZE, align 4
  %23 = call i32 @pgp_parse_pkt_hdr(i32* %21, i32* %11, i32* %12, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %100

27:                                               ; preds = %20
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = call i32 @pgp_create_pkt_reader(i32** %10, i32* %28, i32 %29, i32 %30, %struct.TYPE_8__* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %100

36:                                               ; preds = %27
  %37 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %94 [
    i32 132, label %39
    i32 131, label %42
    i32 128, label %46
    i32 130, label %56
    i32 129, label %75
  ]

39:                                               ; preds = %36
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @pgp_skip_packet(i32* %40)
  store i32 %41, i32* %8, align 4
  br label %97

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @pgp_parse_pubenc_sesskey(%struct.TYPE_8__* %43, i32* %44)
  store i32 %45, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %97

46:                                               ; preds = %36
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %55

51:                                               ; preds = %46
  store i32 1, i32* %13, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @parse_symenc_sesskey(%struct.TYPE_8__* %52, i32* %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %49
  br label %97

56:                                               ; preds = %36
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %74

61:                                               ; preds = %56
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %73

66:                                               ; preds = %61
  store i32 1, i32* %14, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @parse_symenc_data(%struct.TYPE_8__* %69, i32* %70, i32* %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %66, %64
  br label %74

74:                                               ; preds = %73, %59
  br label %97

75:                                               ; preds = %36
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %93

80:                                               ; preds = %75
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %92

85:                                               ; preds = %80
  store i32 1, i32* %14, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @parse_symenc_mdc_data(%struct.TYPE_8__* %88, i32* %89, i32* %90)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %85, %83
  br label %93

93:                                               ; preds = %92, %78
  br label %97

94:                                               ; preds = %36
  %95 = load i32, i32* %11, align 4
  %96 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %93, %74, %55, %42, %39
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @pullf_free(i32* %98)
  store i32* null, i32** %10, align 8
  br label %17

100:                                              ; preds = %35, %26, %17
  %101 = load i32*, i32** %10, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @pullf_free(i32* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32*, i32** %9, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @pullf_free(i32* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %4, align 4
  br label %143

117:                                              ; preds = %112
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120, %117
  %126 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %126, i32* %4, align 4
  br label %143

127:                                              ; preds = %120
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @PXE_PGP_UNSUPPORTED_COMPR, align 4
  store i32 %133, i32* %4, align 4
  br label %143

134:                                              ; preds = %127
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @PXE_PGP_NOT_TEXT, align 4
  store i32 %140, i32* %4, align 4
  br label %143

141:                                              ; preds = %134
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %139, %132, %125, %115
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @pullf_create_mbuf_reader(i32**, i32*) #1

declare dso_local i32 @pgp_parse_pkt_hdr(i32*, i32*, i32*, i32) #1

declare dso_local i32 @pgp_create_pkt_reader(i32**, i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pgp_skip_packet(i32*) #1

declare dso_local i32 @pgp_parse_pubenc_sesskey(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @px_debug(i8*, ...) #1

declare dso_local i32 @parse_symenc_sesskey(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @parse_symenc_data(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @parse_symenc_mdc_data(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @pullf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
