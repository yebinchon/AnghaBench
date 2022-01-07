; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_process_data_packets.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_process_data_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@ALLOW_CTX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"process_data_packets: data after mdc\00", align 1
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@PKT_CONTEXT = common dso_local global i32 0, align 4
@mdcbuf_filter = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"process_data_packets: unexpected compression\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"process_data_packets: only one cmpr pkt allowed\00", align 1
@NO_MDC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"process_data_packets: unexpected MDC\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"process_data_packets: unexpected pkt tag=%d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"process_data_packets: no data\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"process_data_packets: got no mdc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*, i32, i32)* @process_data_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_data_packets(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %5, %104
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* @ALLOW_CTX_SIZE, align 4
  %21 = call i32 @pgp_parse_pkt_hdr(i32* %19, i32* %12, i32* %13, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %105

25:                                               ; preds = %18
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %30, i32* %14, align 4
  br label %105

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @PKT_CONTEXT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @pullf_create(i32** %17, i32* @mdcbuf_filter, %struct.TYPE_8__* %39, i32* %40)
  store i32 %41, i32* %14, align 4
  br label %48

42:                                               ; preds = %34, %31
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = call i32 @pgp_create_pkt_reader(i32** %17, i32* %43, i32 %44, i32 %45, %struct.TYPE_8__* %46)
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %42, %38
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %105

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  switch i32 %53, label %94 [
    i32 129, label %54
    i32 130, label %59
    i32 128, label %78
  ]

54:                                               ; preds = %52
  store i32 1, i32* %15, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = call i32 @parse_literal_data(%struct.TYPE_8__* %55, i32* %56, i32* %57)
  store i32 %58, i32* %14, align 4
  br label %98

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %64, i32* %14, align 4
  br label %77

65:                                               ; preds = %59
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %70, i32* %14, align 4
  br label %76

71:                                               ; preds = %65
  store i32 1, i32* %15, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = call i32 @parse_compressed_data(%struct.TYPE_8__* %72, i32* %73, i32* %74)
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %71, %68
  br label %77

77:                                               ; preds = %76, %62
  br label %98

78:                                               ; preds = %52
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @NO_MDC, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %84, i32* %14, align 4
  br label %98

85:                                               ; preds = %78
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @mdc_finish(%struct.TYPE_8__* %86, i32* %87, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 1, i32* %16, align 4
  br label %93

93:                                               ; preds = %92, %85
  br label %98

94:                                               ; preds = %52
  %95 = load i32, i32* %12, align 4
  %96 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %93, %82, %77, %54
  %99 = load i32*, i32** %17, align 8
  %100 = call i32 @pullf_free(i32* %99)
  store i32* null, i32** %17, align 8
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %105

104:                                              ; preds = %98
  br label %18

105:                                              ; preds = %103, %51, %28, %24
  %106 = load i32*, i32** %17, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32*, i32** %17, align 8
  %110 = call i32 @pullf_free(i32* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %6, align 4
  br label %138

116:                                              ; preds = %111
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %133, %128, %125, %122
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %114
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @pgp_parse_pkt_hdr(i32*, i32*, i32*, i32) #1

declare dso_local i32 @px_debug(i8*, ...) #1

declare dso_local i32 @pullf_create(i32**, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @pgp_create_pkt_reader(i32**, i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @parse_literal_data(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @parse_compressed_data(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @mdc_finish(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @pullf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
