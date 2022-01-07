; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_pg_base64_decode.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_pg_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PXE_PGP_CORRUPT_ARMOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @pg_base64_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_base64_decode(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %164, %114, %3
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ult i32* %23, %24
  br i1 %25, label %26, label %165

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* %27, align 4
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %11, align 1
  %31 = load i8, i8* %11, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 65
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i8, i8* %11, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 %36, 90
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8, i8* %11, align 1
  %40 = sext i8 %39 to i32
  %41 = sub nsw i32 %40, 65
  store i32 %41, i32* %12, align 4
  br label %122

42:                                               ; preds = %34, %26
  %43 = load i8, i8* %11, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sge i32 %44, 97
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i8, i8* %11, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 122
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8, i8* %11, align 1
  %52 = sext i8 %51 to i32
  %53 = sub nsw i32 %52, 97
  %54 = add nsw i32 %53, 26
  store i32 %54, i32* %12, align 4
  br label %121

55:                                               ; preds = %46, %42
  %56 = load i8, i8* %11, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sge i32 %57, 48
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i8, i8* %11, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %61, 57
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8, i8* %11, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 48
  %67 = add nsw i32 %66, 52
  store i32 %67, i32* %12, align 4
  br label %120

68:                                               ; preds = %59, %55
  %69 = load i8, i8* %11, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 43
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 62, i32* %12, align 4
  br label %119

73:                                               ; preds = %68
  %74 = load i8, i8* %11, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 47
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 63, i32* %12, align 4
  br label %118

78:                                               ; preds = %73
  %79 = load i8, i8* %11, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 61
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %14, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 1, i32* %15, align 4
  br label %96

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 2, i32* %15, align 4
  br label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %94, i32* %4, align 4
  br label %178

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %95, %88
  br label %97

97:                                               ; preds = %96, %82
  store i32 0, i32* %12, align 4
  br label %117

98:                                               ; preds = %78
  %99 = load i8, i8* %11, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 32
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = load i8, i8* %11, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 9
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load i8, i8* %11, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i8, i8* %11, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 13
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %106, %102, %98
  br label %22

115:                                              ; preds = %110
  %116 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %116, i32* %4, align 4
  br label %178

117:                                              ; preds = %97
  br label %118

118:                                              ; preds = %117, %77
  br label %119

119:                                              ; preds = %118, %72
  br label %120

120:                                              ; preds = %119, %63
  br label %121

121:                                              ; preds = %120, %50
  br label %122

122:                                              ; preds = %121, %38
  %123 = load i64, i64* %13, align 8
  %124 = shl i64 %123, 6
  %125 = load i32, i32* %12, align 4
  %126 = zext i32 %125 to i64
  %127 = add i64 %124, %126
  store i64 %127, i64* %13, align 8
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp eq i32 %130, 4
  br i1 %131, label %132, label %164

132:                                              ; preds = %122
  %133 = load i64, i64* %13, align 8
  %134 = lshr i64 %133, 16
  %135 = and i64 %134, 255
  %136 = trunc i64 %135 to i32
  %137 = load i32*, i32** %10, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %10, align 8
  store i32 %136, i32* %137, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %15, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %151

144:                                              ; preds = %141, %132
  %145 = load i64, i64* %13, align 8
  %146 = lshr i64 %145, 8
  %147 = and i64 %146, 255
  %148 = trunc i64 %147 to i32
  %149 = load i32*, i32** %10, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %10, align 8
  store i32 %148, i32* %149, align 4
  br label %151

151:                                              ; preds = %144, %141
  %152 = load i32, i32* %15, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %15, align 4
  %156 = icmp sgt i32 %155, 2
  br i1 %156, label %157, label %163

157:                                              ; preds = %154, %151
  %158 = load i64, i64* %13, align 8
  %159 = and i64 %158, 255
  %160 = trunc i64 %159 to i32
  %161 = load i32*, i32** %10, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %10, align 8
  store i32 %160, i32* %161, align 4
  br label %163

163:                                              ; preds = %157, %154
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %164

164:                                              ; preds = %163, %122
  br label %22

165:                                              ; preds = %22
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %169, i32* %4, align 4
  br label %178

170:                                              ; preds = %165
  %171 = load i32*, i32** %10, align 8
  %172 = load i32*, i32** %7, align 8
  %173 = ptrtoint i32* %171 to i64
  %174 = ptrtoint i32* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sdiv exact i64 %175, 4
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %170, %168, %115, %93
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
