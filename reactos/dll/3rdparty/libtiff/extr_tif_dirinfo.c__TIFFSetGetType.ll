; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirinfo.c__TIFFSetGetType.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirinfo.c__TIFFSetGetType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIFF_VARIABLE = common dso_local global i16 0, align 2
@TIFF_SETGET_ASCII = common dso_local global i32 0, align 4
@TIFF_SETGET_UINT8 = common dso_local global i32 0, align 4
@TIFF_SETGET_UINT16 = common dso_local global i32 0, align 4
@TIFF_SETGET_UINT32 = common dso_local global i32 0, align 4
@TIFF_SETGET_FLOAT = common dso_local global i32 0, align 4
@TIFF_SETGET_SINT8 = common dso_local global i32 0, align 4
@TIFF_SETGET_SINT16 = common dso_local global i32 0, align 4
@TIFF_SETGET_SINT32 = common dso_local global i32 0, align 4
@TIFF_SETGET_DOUBLE = common dso_local global i32 0, align 4
@TIFF_SETGET_IFD8 = common dso_local global i32 0, align 4
@TIFF_SETGET_UINT64 = common dso_local global i32 0, align 4
@TIFF_SETGET_SINT64 = common dso_local global i32 0, align 4
@TIFF_SETGET_UNDEFINED = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_UINT8 = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_ASCII = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_UINT16 = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_UINT32 = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_FLOAT = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_SINT8 = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_SINT16 = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_SINT32 = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_DOUBLE = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_IFD8 = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_UINT64 = common dso_local global i32 0, align 4
@TIFF_SETGET_C0_SINT64 = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_UINT8 = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_ASCII = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_UINT16 = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_UINT32 = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_FLOAT = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_SINT8 = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_SINT16 = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_SINT32 = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_DOUBLE = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_IFD8 = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_UINT64 = common dso_local global i32 0, align 4
@TIFF_SETGET_C16_SINT64 = common dso_local global i32 0, align 4
@TIFF_VARIABLE2 = common dso_local global i16 0, align 2
@TIFF_SETGET_C32_UINT8 = common dso_local global i32 0, align 4
@TIFF_SETGET_C32_ASCII = common dso_local global i32 0, align 4
@TIFF_SETGET_C32_UINT16 = common dso_local global i32 0, align 4
@TIFF_SETGET_C32_UINT32 = common dso_local global i32 0, align 4
@TIFF_SETGET_C32_FLOAT = common dso_local global i32 0, align 4
@TIFF_SETGET_C32_SINT8 = common dso_local global i32 0, align 4
@TIFF_SETGET_C32_SINT16 = common dso_local global i32 0, align 4
@TIFF_SETGET_C32_SINT32 = common dso_local global i32 0, align 4
@TIFF_SETGET_C32_DOUBLE = common dso_local global i32 0, align 4
@TIFF_SETGET_C32_IFD8 = common dso_local global i32 0, align 4
@TIFF_SETGET_C32_UINT64 = common dso_local global i32 0, align 4
@TIFF_SETGET_C32_SINT64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i16, i8)* @_TIFFSetGetType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_TIFFSetGetType(i32 %0, i16 signext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i16 %1, i16* %6, align 2
  store i8 %2, i8* %7, align 1
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 143
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load i16, i16* %6, align 2
  %12 = sext i16 %11 to i32
  %13 = load i16, i16* @TIFF_VARIABLE, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @TIFF_SETGET_ASCII, align 4
  store i32 %21, i32* %4, align 4
  br label %176

22:                                               ; preds = %16, %10, %3
  %23 = load i16, i16* %6, align 2
  %24 = sext i16 %23 to i32
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %56 [
    i32 142, label %32
    i32 128, label %32
    i32 143, label %34
    i32 133, label %36
    i32 137, label %38
    i32 135, label %40
    i32 130, label %40
    i32 140, label %40
    i32 134, label %42
    i32 129, label %44
    i32 132, label %46
    i32 141, label %48
    i32 139, label %50
    i32 138, label %50
    i32 136, label %52
    i32 131, label %54
  ]

32:                                               ; preds = %30, %30
  %33 = load i32, i32* @TIFF_SETGET_UINT8, align 4
  store i32 %33, i32* %4, align 4
  br label %176

34:                                               ; preds = %30
  %35 = load i32, i32* @TIFF_SETGET_ASCII, align 4
  store i32 %35, i32* %4, align 4
  br label %176

36:                                               ; preds = %30
  %37 = load i32, i32* @TIFF_SETGET_UINT16, align 4
  store i32 %37, i32* %4, align 4
  br label %176

38:                                               ; preds = %30
  %39 = load i32, i32* @TIFF_SETGET_UINT32, align 4
  store i32 %39, i32* %4, align 4
  br label %176

40:                                               ; preds = %30, %30, %30
  %41 = load i32, i32* @TIFF_SETGET_FLOAT, align 4
  store i32 %41, i32* %4, align 4
  br label %176

42:                                               ; preds = %30
  %43 = load i32, i32* @TIFF_SETGET_SINT8, align 4
  store i32 %43, i32* %4, align 4
  br label %176

44:                                               ; preds = %30
  %45 = load i32, i32* @TIFF_SETGET_SINT16, align 4
  store i32 %45, i32* %4, align 4
  br label %176

46:                                               ; preds = %30
  %47 = load i32, i32* @TIFF_SETGET_SINT32, align 4
  store i32 %47, i32* %4, align 4
  br label %176

48:                                               ; preds = %30
  %49 = load i32, i32* @TIFF_SETGET_DOUBLE, align 4
  store i32 %49, i32* %4, align 4
  br label %176

50:                                               ; preds = %30, %30
  %51 = load i32, i32* @TIFF_SETGET_IFD8, align 4
  store i32 %51, i32* %4, align 4
  br label %176

52:                                               ; preds = %30
  %53 = load i32, i32* @TIFF_SETGET_UINT64, align 4
  store i32 %53, i32* %4, align 4
  br label %176

54:                                               ; preds = %30
  %55 = load i32, i32* @TIFF_SETGET_SINT64, align 4
  store i32 %55, i32* %4, align 4
  br label %176

56:                                               ; preds = %30
  %57 = load i32, i32* @TIFF_SETGET_UNDEFINED, align 4
  store i32 %57, i32* %4, align 4
  br label %176

58:                                               ; preds = %26, %22
  %59 = load i16, i16* %6, align 2
  %60 = sext i16 %59 to i32
  %61 = icmp sge i32 %60, 1
  br i1 %61, label %62, label %94

62:                                               ; preds = %58
  %63 = load i8, i8* %7, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  switch i32 %67, label %92 [
    i32 142, label %68
    i32 128, label %68
    i32 143, label %70
    i32 133, label %72
    i32 137, label %74
    i32 135, label %76
    i32 130, label %76
    i32 140, label %76
    i32 134, label %78
    i32 129, label %80
    i32 132, label %82
    i32 141, label %84
    i32 139, label %86
    i32 138, label %86
    i32 136, label %88
    i32 131, label %90
  ]

68:                                               ; preds = %66, %66
  %69 = load i32, i32* @TIFF_SETGET_C0_UINT8, align 4
  store i32 %69, i32* %4, align 4
  br label %176

70:                                               ; preds = %66
  %71 = load i32, i32* @TIFF_SETGET_C0_ASCII, align 4
  store i32 %71, i32* %4, align 4
  br label %176

72:                                               ; preds = %66
  %73 = load i32, i32* @TIFF_SETGET_C0_UINT16, align 4
  store i32 %73, i32* %4, align 4
  br label %176

74:                                               ; preds = %66
  %75 = load i32, i32* @TIFF_SETGET_C0_UINT32, align 4
  store i32 %75, i32* %4, align 4
  br label %176

76:                                               ; preds = %66, %66, %66
  %77 = load i32, i32* @TIFF_SETGET_C0_FLOAT, align 4
  store i32 %77, i32* %4, align 4
  br label %176

78:                                               ; preds = %66
  %79 = load i32, i32* @TIFF_SETGET_C0_SINT8, align 4
  store i32 %79, i32* %4, align 4
  br label %176

80:                                               ; preds = %66
  %81 = load i32, i32* @TIFF_SETGET_C0_SINT16, align 4
  store i32 %81, i32* %4, align 4
  br label %176

82:                                               ; preds = %66
  %83 = load i32, i32* @TIFF_SETGET_C0_SINT32, align 4
  store i32 %83, i32* %4, align 4
  br label %176

84:                                               ; preds = %66
  %85 = load i32, i32* @TIFF_SETGET_C0_DOUBLE, align 4
  store i32 %85, i32* %4, align 4
  br label %176

86:                                               ; preds = %66, %66
  %87 = load i32, i32* @TIFF_SETGET_C0_IFD8, align 4
  store i32 %87, i32* %4, align 4
  br label %176

88:                                               ; preds = %66
  %89 = load i32, i32* @TIFF_SETGET_C0_UINT64, align 4
  store i32 %89, i32* %4, align 4
  br label %176

90:                                               ; preds = %66
  %91 = load i32, i32* @TIFF_SETGET_C0_SINT64, align 4
  store i32 %91, i32* %4, align 4
  br label %176

92:                                               ; preds = %66
  %93 = load i32, i32* @TIFF_SETGET_UNDEFINED, align 4
  store i32 %93, i32* %4, align 4
  br label %176

94:                                               ; preds = %62, %58
  %95 = load i16, i16* %6, align 2
  %96 = sext i16 %95 to i32
  %97 = load i16, i16* @TIFF_VARIABLE, align 2
  %98 = sext i16 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %132

100:                                              ; preds = %94
  %101 = load i8, i8* %7, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %132

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  switch i32 %105, label %130 [
    i32 142, label %106
    i32 128, label %106
    i32 143, label %108
    i32 133, label %110
    i32 137, label %112
    i32 135, label %114
    i32 130, label %114
    i32 140, label %114
    i32 134, label %116
    i32 129, label %118
    i32 132, label %120
    i32 141, label %122
    i32 139, label %124
    i32 138, label %124
    i32 136, label %126
    i32 131, label %128
  ]

106:                                              ; preds = %104, %104
  %107 = load i32, i32* @TIFF_SETGET_C16_UINT8, align 4
  store i32 %107, i32* %4, align 4
  br label %176

108:                                              ; preds = %104
  %109 = load i32, i32* @TIFF_SETGET_C16_ASCII, align 4
  store i32 %109, i32* %4, align 4
  br label %176

110:                                              ; preds = %104
  %111 = load i32, i32* @TIFF_SETGET_C16_UINT16, align 4
  store i32 %111, i32* %4, align 4
  br label %176

112:                                              ; preds = %104
  %113 = load i32, i32* @TIFF_SETGET_C16_UINT32, align 4
  store i32 %113, i32* %4, align 4
  br label %176

114:                                              ; preds = %104, %104, %104
  %115 = load i32, i32* @TIFF_SETGET_C16_FLOAT, align 4
  store i32 %115, i32* %4, align 4
  br label %176

116:                                              ; preds = %104
  %117 = load i32, i32* @TIFF_SETGET_C16_SINT8, align 4
  store i32 %117, i32* %4, align 4
  br label %176

118:                                              ; preds = %104
  %119 = load i32, i32* @TIFF_SETGET_C16_SINT16, align 4
  store i32 %119, i32* %4, align 4
  br label %176

120:                                              ; preds = %104
  %121 = load i32, i32* @TIFF_SETGET_C16_SINT32, align 4
  store i32 %121, i32* %4, align 4
  br label %176

122:                                              ; preds = %104
  %123 = load i32, i32* @TIFF_SETGET_C16_DOUBLE, align 4
  store i32 %123, i32* %4, align 4
  br label %176

124:                                              ; preds = %104, %104
  %125 = load i32, i32* @TIFF_SETGET_C16_IFD8, align 4
  store i32 %125, i32* %4, align 4
  br label %176

126:                                              ; preds = %104
  %127 = load i32, i32* @TIFF_SETGET_C16_UINT64, align 4
  store i32 %127, i32* %4, align 4
  br label %176

128:                                              ; preds = %104
  %129 = load i32, i32* @TIFF_SETGET_C16_SINT64, align 4
  store i32 %129, i32* %4, align 4
  br label %176

130:                                              ; preds = %104
  %131 = load i32, i32* @TIFF_SETGET_UNDEFINED, align 4
  store i32 %131, i32* %4, align 4
  br label %176

132:                                              ; preds = %100, %94
  %133 = load i16, i16* %6, align 2
  %134 = sext i16 %133 to i32
  %135 = load i16, i16* @TIFF_VARIABLE2, align 2
  %136 = sext i16 %135 to i32
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %170

138:                                              ; preds = %132
  %139 = load i8, i8* %7, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %170

142:                                              ; preds = %138
  %143 = load i32, i32* %5, align 4
  switch i32 %143, label %168 [
    i32 142, label %144
    i32 128, label %144
    i32 143, label %146
    i32 133, label %148
    i32 137, label %150
    i32 135, label %152
    i32 130, label %152
    i32 140, label %152
    i32 134, label %154
    i32 129, label %156
    i32 132, label %158
    i32 141, label %160
    i32 139, label %162
    i32 138, label %162
    i32 136, label %164
    i32 131, label %166
  ]

144:                                              ; preds = %142, %142
  %145 = load i32, i32* @TIFF_SETGET_C32_UINT8, align 4
  store i32 %145, i32* %4, align 4
  br label %176

146:                                              ; preds = %142
  %147 = load i32, i32* @TIFF_SETGET_C32_ASCII, align 4
  store i32 %147, i32* %4, align 4
  br label %176

148:                                              ; preds = %142
  %149 = load i32, i32* @TIFF_SETGET_C32_UINT16, align 4
  store i32 %149, i32* %4, align 4
  br label %176

150:                                              ; preds = %142
  %151 = load i32, i32* @TIFF_SETGET_C32_UINT32, align 4
  store i32 %151, i32* %4, align 4
  br label %176

152:                                              ; preds = %142, %142, %142
  %153 = load i32, i32* @TIFF_SETGET_C32_FLOAT, align 4
  store i32 %153, i32* %4, align 4
  br label %176

154:                                              ; preds = %142
  %155 = load i32, i32* @TIFF_SETGET_C32_SINT8, align 4
  store i32 %155, i32* %4, align 4
  br label %176

156:                                              ; preds = %142
  %157 = load i32, i32* @TIFF_SETGET_C32_SINT16, align 4
  store i32 %157, i32* %4, align 4
  br label %176

158:                                              ; preds = %142
  %159 = load i32, i32* @TIFF_SETGET_C32_SINT32, align 4
  store i32 %159, i32* %4, align 4
  br label %176

160:                                              ; preds = %142
  %161 = load i32, i32* @TIFF_SETGET_C32_DOUBLE, align 4
  store i32 %161, i32* %4, align 4
  br label %176

162:                                              ; preds = %142, %142
  %163 = load i32, i32* @TIFF_SETGET_C32_IFD8, align 4
  store i32 %163, i32* %4, align 4
  br label %176

164:                                              ; preds = %142
  %165 = load i32, i32* @TIFF_SETGET_C32_UINT64, align 4
  store i32 %165, i32* %4, align 4
  br label %176

166:                                              ; preds = %142
  %167 = load i32, i32* @TIFF_SETGET_C32_SINT64, align 4
  store i32 %167, i32* %4, align 4
  br label %176

168:                                              ; preds = %142
  %169 = load i32, i32* @TIFF_SETGET_UNDEFINED, align 4
  store i32 %169, i32* %4, align 4
  br label %176

170:                                              ; preds = %138, %132
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* @TIFF_SETGET_UNDEFINED, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %174, %168, %166, %164, %162, %160, %158, %156, %154, %152, %150, %148, %146, %144, %130, %128, %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %20
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
