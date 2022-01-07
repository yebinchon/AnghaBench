; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_proxy_from_string.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_proxy_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"socks4\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"socks5\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*, i8*, i8*)* @proxy_from_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_from_string(i8* %0, i8* %1, i8* %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 6, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %6
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 5
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %42, %37, %32, %27, %6
  br label %216

53:                                               ; preds = %47
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 115
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 5
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %65 [
    i32 53, label %63
    i32 52, label %64
  ]

63:                                               ; preds = %58
  store i32 128, i32* %15, align 4
  br label %66

64:                                               ; preds = %58
  store i32 129, i32* %15, align 4
  br label %66

65:                                               ; preds = %58
  br label %216

66:                                               ; preds = %64, %63
  br label %75

67:                                               ; preds = %53
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 104
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 130, i32* %15, align 4
  store i64 4, i64* %16, align 8
  br label %74

73:                                               ; preds = %67
  br label %216

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %16, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %16, align 8
  %79 = getelementptr inbounds i8, i8* %76, i64 %77
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 58
  br i1 %82, label %99, label %83

83:                                               ; preds = %75
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %16, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %16, align 8
  %87 = getelementptr inbounds i8, i8* %84, i64 %85
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 47
  br i1 %90, label %99, label %91

91:                                               ; preds = %83
  %92 = load i8*, i8** %8, align 8
  %93 = load i64, i64* %16, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %16, align 8
  %95 = getelementptr inbounds i8, i8* %92, i64 %93
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 47
  br i1 %98, label %99, label %100

99:                                               ; preds = %91, %83, %75
  br label %216

100:                                              ; preds = %91
  %101 = load i8*, i8** %8, align 8
  %102 = load i64, i64* %16, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = call i8* @strrchr(i8* %103, i8 signext 64)
  store i8* %104, i8** %20, align 8
  %105 = load i8*, i8** %20, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %169

107:                                              ; preds = %100
  %108 = load i32, i32* %15, align 4
  %109 = icmp eq i32 %108, 129
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  br label %217

111:                                              ; preds = %107
  %112 = load i8*, i8** %8, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = call i8* @strchr(i8* %114, i8 signext 58)
  store i8* %115, i8** %14, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %20, align 8
  %121 = icmp uge i8* %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %111
  br label %216

123:                                              ; preds = %118
  %124 = load i8*, i8** %8, align 8
  %125 = load i64, i64* %16, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %21, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = load i8*, i8** %21, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  store i64 %131, i64* %17, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %14, align 8
  %134 = load i8*, i8** %20, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  store i64 %138, i64* %18, align 8
  %139 = load i32, i32* %15, align 4
  %140 = icmp eq i32 %139, 128
  br i1 %140, label %141, label %148

141:                                              ; preds = %123
  %142 = load i64, i64* %17, align 8
  %143 = icmp ugt i64 %142, 255
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i64, i64* %18, align 8
  %146 = icmp ugt i64 %145, 255
  br i1 %146, label %147, label %148

147:                                              ; preds = %144, %141
  store i32 0, i32* %7, align 4
  br label %217

148:                                              ; preds = %144, %123
  %149 = load i8*, i8** %12, align 8
  %150 = load i8*, i8** %21, align 8
  %151 = load i64, i64* %17, align 8
  %152 = call i32 @memcpy(i8* %149, i8* %150, i64 %151)
  %153 = load i8*, i8** %12, align 8
  %154 = load i64, i64* %17, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8 0, i8* %155, align 1
  %156 = load i8*, i8** %13, align 8
  %157 = load i8*, i8** %14, align 8
  %158 = load i64, i64* %18, align 8
  %159 = call i32 @memcpy(i8* %156, i8* %157, i64 %158)
  %160 = load i8*, i8** %13, align 8
  %161 = load i64, i64* %18, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8 0, i8* %162, align 1
  %163 = load i64, i64* %17, align 8
  %164 = add i64 2, %163
  %165 = load i64, i64* %18, align 8
  %166 = add i64 %164, %165
  %167 = load i64, i64* %16, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %16, align 8
  br label %174

169:                                              ; preds = %100
  %170 = load i8*, i8** %12, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  store i8 0, i8* %171, align 1
  %172 = load i8*, i8** %13, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  store i8 0, i8* %173, align 1
  br label %174

174:                                              ; preds = %169, %148
  %175 = load i8*, i8** %8, align 8
  %176 = load i64, i64* %16, align 8
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %22, align 8
  %178 = load i8*, i8** %22, align 8
  %179 = call i8* @strchr(i8* %178, i8 signext 58)
  store i8* %179, i8** %14, align 8
  %180 = load i8*, i8** %14, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %174
  br label %216

183:                                              ; preds = %174
  %184 = load i8*, i8** %14, align 8
  %185 = load i8*, i8** %22, align 8
  %186 = ptrtoint i8* %184 to i64
  %187 = ptrtoint i8* %185 to i64
  %188 = sub i64 %186, %187
  store i64 %188, i64* %19, align 8
  %189 = load i64, i64* %19, align 8
  %190 = icmp ugt i64 %189, 255
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  store i32 0, i32* %7, align 4
  br label %217

192:                                              ; preds = %183
  %193 = load i8*, i8** %10, align 8
  %194 = load i8*, i8** %22, align 8
  %195 = load i64, i64* %19, align 8
  %196 = call i32 @memcpy(i8* %193, i8* %194, i64 %195)
  %197 = load i8*, i8** %10, align 8
  %198 = load i64, i64* %19, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8 0, i8* %199, align 1
  %200 = load i8*, i8** %14, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = call i32 @atoi(i8* %201)
  %203 = load i32*, i32** %11, align 8
  store i32 %202, i32* %203, align 4
  %204 = load i32, i32* %15, align 4
  switch i32 %204, label %214 [
    i32 129, label %205
    i32 128, label %208
    i32 130, label %211
  ]

205:                                              ; preds = %192
  %206 = load i8*, i8** %9, align 8
  %207 = call i32 @strcpy(i8* %206, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %215

208:                                              ; preds = %192
  %209 = load i8*, i8** %9, align 8
  %210 = call i32 @strcpy(i8* %209, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %215

211:                                              ; preds = %192
  %212 = load i8*, i8** %9, align 8
  %213 = call i32 @strcpy(i8* %212, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %215

214:                                              ; preds = %192
  store i32 0, i32* %7, align 4
  br label %217

215:                                              ; preds = %211, %208, %205
  store i32 1, i32* %7, align 4
  br label %217

216:                                              ; preds = %182, %122, %99, %73, %65, %52
  store i32 0, i32* %7, align 4
  br label %217

217:                                              ; preds = %216, %215, %214, %191, %147, %110
  %218 = load i32, i32* %7, align 4
  ret i32 %218
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
