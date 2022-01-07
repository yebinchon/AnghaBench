; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_str.c_CRYPT_GetNextValueW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_str.c_CRYPT_GetNextValueW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X500TokenW = type { i8*, i8* }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"(%s, %s, %p, %p)\0A\00", align 1
@CERT_NAME_STR_NO_QUOTING_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unterminated quote at %s\0A\00", align 1
@CRYPT_E_INVALID_X500_STRING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"missing value at %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i8*, i32*, %struct.X500TokenW*, i8**)* @CRYPT_GetNextValueW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_GetNextValueW(i8* %0, i32 %1, i8* %2, i32* %3, %struct.X500TokenW* %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.X500TokenW*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca [256 x i32], align 16
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.X500TokenW* %4, %struct.X500TokenW** %11, align 8
  store i8** %5, i8*** %12, align 8
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @debugstr_w(i8* %16)
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @debugstr_w(i8* %18)
  %20 = load %struct.X500TokenW*, %struct.X500TokenW** %11, align 8
  %21 = load i8**, i8*** %12, align 8
  %22 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19, %struct.X500TokenW* %20, i8** %21)
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %36, %6
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isspaceW(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ false, %24 ], [ %33, %29 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  br label %24

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %177

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.X500TokenW*, %struct.X500TokenW** %11, align 8
  %46 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @CERT_NAME_STR_NO_QUOTING_FLAG, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %122, label %51

51:                                               ; preds = %43
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %56, label %122

56:                                               ; preds = %51
  %57 = load %struct.X500TokenW*, %struct.X500TokenW** %11, align 8
  %58 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %57, i32 0, i32 1
  store i8* null, i8** %58, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %7, align 8
  br label %61

61:                                               ; preds = %120, %56
  %62 = load %struct.X500TokenW*, %struct.X500TokenW** %11, align 8
  %63 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i1 [ false, %61 ], [ %68, %66 ]
  br i1 %70, label %71, label %121

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %84, %71
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 34
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i1 [ false, %72 ], [ %81, %77 ]
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %7, align 8
  br label %72

87:                                               ; preds = %82
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 34
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 34
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load %struct.X500TokenW*, %struct.X500TokenW** %11, align 8
  %102 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  br label %106

103:                                              ; preds = %92
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8* %105, i8** %7, align 8
  br label %106

106:                                              ; preds = %103, %98
  br label %120

107:                                              ; preds = %87
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @debugstr_w(i8* %108)
  %110 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i8**, i8*** %12, align 8
  %112 = icmp ne i8** %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i8*, i8** %7, align 8
  %115 = load i8**, i8*** %12, align 8
  store i8* %114, i8** %115, align 8
  br label %116

116:                                              ; preds = %113, %107
  %117 = load i32, i32* @CRYPT_E_INVALID_X500_STRING, align 4
  %118 = call i32 @SetLastError(i32 %117)
  %119 = load i64, i64* @FALSE, align 8
  store i64 %119, i64* %13, align 8
  br label %120

120:                                              ; preds = %116, %106
  br label %61

121:                                              ; preds = %69
  br label %176

122:                                              ; preds = %51, %43
  %123 = bitcast [256 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %123, i8 0, i64 1024, i1 false)
  br label %124

124:                                              ; preds = %128, %122
  %125 = load i8*, i8** %9, align 8
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  %131 = load i8, i8* %129, align 1
  %132 = sext i8 %131 to i64
  %133 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %132
  store i32 1, i32* %133, align 4
  br label %124

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %157, %134
  %136 = load i8*, i8** %7, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %135
  %141 = load i8*, i8** %7, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp sge i32 %143, 255
  br i1 %144, label %153, label %145

145:                                              ; preds = %140
  %146 = load i8*, i8** %7, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i64
  %149 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  br label %153

153:                                              ; preds = %145, %140
  %154 = phi i1 [ true, %140 ], [ %152, %145 ]
  br label %155

155:                                              ; preds = %153, %135
  %156 = phi i1 [ false, %135 ], [ %154, %153 ]
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %7, align 8
  br label %135

160:                                              ; preds = %155
  %161 = load i8*, i8** %7, align 8
  %162 = load %struct.X500TokenW*, %struct.X500TokenW** %11, align 8
  %163 = getelementptr inbounds %struct.X500TokenW, %struct.X500TokenW* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i64
  %167 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %160
  %171 = load i8*, i8** %7, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = load i32*, i32** %10, align 8
  store i32 %173, i32* %174, align 4
  br label %175

175:                                              ; preds = %170, %160
  br label %176

176:                                              ; preds = %175, %121
  br label %190

177:                                              ; preds = %39
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 @debugstr_w(i8* %178)
  %180 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load i8**, i8*** %12, align 8
  %182 = icmp ne i8** %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load i8*, i8** %7, align 8
  %185 = load i8**, i8*** %12, align 8
  store i8* %184, i8** %185, align 8
  br label %186

186:                                              ; preds = %183, %177
  %187 = load i32, i32* @CRYPT_E_INVALID_X500_STRING, align 4
  %188 = call i32 @SetLastError(i32 %187)
  %189 = load i64, i64* @FALSE, align 8
  store i64 %189, i64* %13, align 8
  br label %190

190:                                              ; preds = %186, %176
  %191 = load i64, i64* %13, align 8
  ret i64 %191
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i64 @isspaceW(i8 signext) #1

declare dso_local i32 @SetLastError(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
