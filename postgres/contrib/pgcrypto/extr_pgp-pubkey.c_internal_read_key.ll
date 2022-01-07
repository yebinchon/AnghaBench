; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubkey.c_internal_read_key.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubkey.c_internal_read_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@PXE_PGP_MULTIPLE_KEYS = common dso_local global i32 0, align 4
@PXE_PGP_EXPECT_SECRET_KEY = common dso_local global i32 0, align 4
@PXE_PGP_EXPECT_PUBLIC_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unknown/unexpected packet: %d\00", align 1
@PXE_PGP_UNEXPECTED_PKT = common dso_local global i32 0, align 4
@PXE_PGP_MULTIPLE_SUBKEYS = common dso_local global i32 0, align 4
@PXE_PGP_NO_USABLE_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__**, i32*, i32, i32)* @internal_read_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_read_key(i32* %0, %struct.TYPE_6__** %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %5, %102
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @pgp_parse_pkt_hdr(i32* %20, i32* %14, i32* %15, i32 0)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %103

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @pgp_create_pkt_reader(i32** %12, i32* %26, i32 %27, i32 %28, i32* null)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %103

33:                                               ; preds = %25
  %34 = load i32, i32* %14, align 4
  switch i32 %34, label %66 [
    i32 135, label %35
    i32 133, label %35
    i32 134, label %43
    i32 132, label %52
    i32 131, label %63
    i32 137, label %63
    i32 130, label %63
    i32 128, label %63
    i32 129, label %63
    i32 136, label %63
  ]

35:                                               ; preds = %33, %33
  %36 = load i32, i32* %18, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @PXE_PGP_MULTIPLE_KEYS, align 4
  store i32 %39, i32* %13, align 4
  br label %70

40:                                               ; preds = %35
  store i32 1, i32* %18, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @pgp_skip_packet(i32* %41)
  store i32 %42, i32* %13, align 4
  br label %70

43:                                               ; preds = %33
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @PXE_PGP_EXPECT_SECRET_KEY, align 4
  store i32 %47, i32* %13, align 4
  br label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @_pgp_read_public_key(i32* %49, %struct.TYPE_6__** %17)
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %48, %46
  br label %70

52:                                               ; preds = %33
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @PXE_PGP_EXPECT_PUBLIC_KEY, align 4
  store i32 %56, i32* %13, align 4
  br label %62

57:                                               ; preds = %52
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @process_secret_key(i32* %58, %struct.TYPE_6__** %17, i32* %59, i32 %60)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %57, %55
  br label %70

63:                                               ; preds = %33, %33, %33, %33, %33, %33
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @pgp_skip_packet(i32* %64)
  store i32 %65, i32* %13, align 4
  br label %70

66:                                               ; preds = %33
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @px_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @PXE_PGP_UNEXPECTED_PKT, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %66, %63, %62, %51, %40, %38
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @pullf_free(i32* %71)
  store i32* null, i32** %12, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %85 = icmp eq %struct.TYPE_6__* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  br label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @PXE_PGP_MULTIPLE_SUBKEYS, align 4
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %78, %75
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %93 = icmp ne %struct.TYPE_6__* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %96 = call i32 @pgp_key_free(%struct.TYPE_6__* %95)
  br label %97

97:                                               ; preds = %94, %91
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  br label %98

98:                                               ; preds = %97, %70
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %103

102:                                              ; preds = %98
  br label %19

103:                                              ; preds = %101, %32, %24
  %104 = load i32*, i32** %12, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @pullf_free(i32* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %114 = icmp ne %struct.TYPE_6__* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %117 = call i32 @pgp_key_free(%struct.TYPE_6__* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %6, align 4
  br label %130

120:                                              ; preds = %109
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %122 = icmp ne %struct.TYPE_6__* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* @PXE_PGP_NO_USABLE_KEY, align 4
  store i32 %124, i32* %13, align 4
  br label %128

125:                                              ; preds = %120
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %127 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %126, %struct.TYPE_6__** %127, align 8
  br label %128

128:                                              ; preds = %125, %123
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %118
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @pgp_parse_pkt_hdr(i32*, i32*, i32*, i32) #1

declare dso_local i32 @pgp_create_pkt_reader(i32**, i32*, i32, i32, i32*) #1

declare dso_local i32 @pgp_skip_packet(i32*) #1

declare dso_local i32 @_pgp_read_public_key(i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @process_secret_key(i32*, %struct.TYPE_6__**, i32*, i32) #1

declare dso_local i32 @px_debug(i8*, i32) #1

declare dso_local i32 @pullf_free(i32*) #1

declare dso_local i32 @pgp_key_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
