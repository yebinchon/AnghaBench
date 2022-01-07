; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-info.c_pgp_get_keyid.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-info.c_pgp_get_keyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PXE_PGP_MULTIPLE_KEYS = common dso_local global i32 0, align 4
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@any_key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ANYKEY\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SYMKEY\00", align 1
@PXE_PGP_NO_USABLE_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_get_keyid(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8 x i32], align 16
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @pullf_create_mbuf_reader(i32** %7, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %157

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %91
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @pgp_parse_pkt_hdr(i32* %25, i32* %10, i32* %9, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %92

30:                                               ; preds = %24
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @pgp_create_pkt_reader(i32** %8, i32* %31, i32 %32, i32 %33, i32* null)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %92

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %76 [
    i32 136, label %40
    i32 138, label %40
    i32 135, label %49
    i32 137, label %49
    i32 139, label %63
    i32 133, label %69
    i32 132, label %69
    i32 131, label %70
    i32 134, label %73
    i32 141, label %73
    i32 130, label %73
    i32 128, label %73
    i32 129, label %73
    i32 140, label %73
  ]

40:                                               ; preds = %38, %38
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  store i32 1, i32* %16, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @pgp_skip_packet(i32* %44)
  store i32 %45, i32* %6, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @PXE_PGP_MULTIPLE_KEYS, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %43
  br label %78

49:                                               ; preds = %38, %38
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %52 = call i32 @read_pubkey_keyid(i32* %50, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %78

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %78

63:                                               ; preds = %38
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %68 = call i32 @read_pubenc_keyid(i32* %66, i32* %67)
  store i32 %68, i32* %6, align 4
  br label %78

69:                                               ; preds = %38, %38
  store i32 1, i32* %14, align 4
  br label %78

70:                                               ; preds = %38
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %38, %38, %38, %38, %38, %38, %70
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @pgp_skip_packet(i32* %74)
  store i32 %75, i32* %6, align 4
  br label %78

76:                                               ; preds = %38
  %77 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %73, %69, %63, %62, %55, %48
  %79 = load i32*, i32** %8, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @pullf_free(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  store i32* null, i32** %8, align 8
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %84
  br label %92

91:                                               ; preds = %87
  br label %24

92:                                               ; preds = %90, %37, %29
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @pullf_free(i32* %93)
  %95 = load i32*, i32** %8, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @pullf_free(i32* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %157

105:                                              ; preds = %100
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %108, %105
  %114 = load i32, i32* %11, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @PXE_PGP_MULTIPLE_KEYS, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %113
  %119 = load i32, i32* %13, align 4
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* @PXE_PGP_MULTIPLE_KEYS, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %121, %118
  %124 = load i32, i32* %6, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %129, %126
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %134 = load i32, i32* @any_key, align 4
  %135 = call i64 @memcmp(i32* %133, i32 %134, i32 8)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @memcpy(i8* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 7)
  store i32 6, i32* %6, align 4
  br label %144

140:                                              ; preds = %132
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %142 = load i8*, i8** %5, align 8
  %143 = call i32 @print_key(i32* %141, i8* %142)
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %140, %137
  br label %154

145:                                              ; preds = %129
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i8*, i8** %5, align 8
  %150 = call i32 @memcpy(i8* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 7)
  store i32 6, i32* %6, align 4
  br label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @PXE_PGP_NO_USABLE_KEY, align 4
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %151, %148
  br label %154

154:                                              ; preds = %153, %144
  br label %155

155:                                              ; preds = %154, %123
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %103, %21
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @pullf_create_mbuf_reader(i32**, i32*) #1

declare dso_local i32 @pgp_parse_pkt_hdr(i32*, i32*, i32*, i32) #1

declare dso_local i32 @pgp_create_pkt_reader(i32**, i32*, i32, i32, i32*) #1

declare dso_local i32 @pgp_skip_packet(i32*) #1

declare dso_local i32 @read_pubkey_keyid(i32*, i32*) #1

declare dso_local i32 @read_pubenc_keyid(i32*, i32*) #1

declare dso_local i32 @pullf_free(i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @print_key(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
