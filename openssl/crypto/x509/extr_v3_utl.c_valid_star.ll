; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_valid_star.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_valid_star.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LABEL_START = common dso_local global i32 0, align 4
@LABEL_IDNA = common dso_local global i32 0, align 4
@X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xn--\00", align 1
@LABEL_HYPHEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32)* @valid_star to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @valid_star(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %14 = load i32, i32* @LABEL_START, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %193, %3
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %196

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 42
  br i1 %25, label %26, label %83

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @LABEL_START, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, 1
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br label %42

42:                                               ; preds = %34, %26
  %43 = phi i1 [ true, %26 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @LABEL_IDNA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %47, %42
  store i8* null, i8** %4, align 8
  br label %209

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %61
  store i8* null, i8** %4, align 8
  br label %209

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i8* null, i8** %4, align 8
  br label %209

75:                                               ; preds = %71, %68
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %8, align 8
  %79 = load i32, i32* @LABEL_START, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %10, align 4
  br label %192

83:                                               ; preds = %19
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sle i32 97, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load i8*, i8** %5, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp sle i32 %95, 122
  br i1 %96, label %125, label %97

97:                                               ; preds = %90, %83
  %98 = load i8*, i8** %5, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp sle i32 65, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load i8*, i8** %5, align 8
  %106 = load i64, i64* %9, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp sle i32 %109, 90
  br i1 %110, label %125, label %111

111:                                              ; preds = %104, %97
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp sle i32 48, %116
  br i1 %117, label %118, label %152

118:                                              ; preds = %111
  %119 = load i8*, i8** %5, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp sle i32 %123, 57
  br i1 %124, label %125, label %152

125:                                              ; preds = %118, %104, %90
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @LABEL_START, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* %9, align 8
  %133 = sub i64 %131, %132
  %134 = icmp uge i64 %133, 4
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load i8*, i8** %5, align 8
  %137 = load i64, i64* %9, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = call i64 @strncasecmp(i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i32, i32* @LABEL_IDNA, align 4
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %141, %135, %130, %125
  %146 = load i32, i32* @LABEL_HYPHEN, align 4
  %147 = load i32, i32* @LABEL_START, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %10, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %10, align 4
  br label %191

152:                                              ; preds = %118, %111
  %153 = load i8*, i8** %5, align 8
  %154 = load i64, i64* %9, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 46
  br i1 %158, label %159, label %171

159:                                              ; preds = %152
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @LABEL_HYPHEN, align 4
  %162 = load i32, i32* @LABEL_START, align 4
  %163 = or i32 %161, %162
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  store i8* null, i8** %4, align 8
  br label %209

167:                                              ; preds = %159
  %168 = load i32, i32* @LABEL_START, align 4
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %190

171:                                              ; preds = %152
  %172 = load i8*, i8** %5, align 8
  %173 = load i64, i64* %9, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %176, 45
  br i1 %177, label %178, label %188

178:                                              ; preds = %171
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @LABEL_START, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i8* null, i8** %4, align 8
  br label %209

184:                                              ; preds = %178
  %185 = load i32, i32* @LABEL_HYPHEN, align 4
  %186 = load i32, i32* %10, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %10, align 4
  br label %189

188:                                              ; preds = %171
  store i8* null, i8** %4, align 8
  br label %209

189:                                              ; preds = %184
  br label %190

190:                                              ; preds = %189, %167
  br label %191

191:                                              ; preds = %190, %145
  br label %192

192:                                              ; preds = %191, %75
  br label %193

193:                                              ; preds = %192
  %194 = load i64, i64* %9, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %9, align 8
  br label %15

196:                                              ; preds = %15
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @LABEL_START, align 4
  %199 = load i32, i32* @LABEL_HYPHEN, align 4
  %200 = or i32 %198, %199
  %201 = and i32 %197, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %196
  %204 = load i32, i32* %11, align 4
  %205 = icmp slt i32 %204, 2
  br i1 %205, label %206, label %207

206:                                              ; preds = %203, %196
  store i8* null, i8** %4, align 8
  br label %209

207:                                              ; preds = %203
  %208 = load i8*, i8** %8, align 8
  store i8* %208, i8** %4, align 8
  br label %209

209:                                              ; preds = %207, %206, %188, %183, %166, %74, %67, %55
  %210 = load i8*, i8** %4, align 8
  ret i8* %210
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
