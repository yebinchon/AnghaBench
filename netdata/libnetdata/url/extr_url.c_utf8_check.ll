; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_utf8_check.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_utf8_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %4

4:                                                ; preds = %185, %1
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %186

8:                                                ; preds = %4
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  br label %185

16:                                               ; preds = %8
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 224
  %22 = icmp eq i32 %21, 192
  br i1 %22, label %23, label %43

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 192
  %29 = icmp ne i32 %28, 128
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 254
  %36 = icmp eq i32 %35, 192
  br i1 %36, label %37, label %39

37:                                               ; preds = %30, %23
  %38 = load i8*, i8** %3, align 8
  store i8* %38, i8** %2, align 8
  br label %187

39:                                               ; preds = %30
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %39
  br label %184

43:                                               ; preds = %16
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 240
  %49 = icmp eq i32 %48, 224
  br i1 %49, label %50, label %115

50:                                               ; preds = %43
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 192
  %56 = icmp ne i32 %55, 128
  br i1 %56, label %109, label %57

57:                                               ; preds = %50
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 192
  %63 = icmp ne i32 %62, 128
  br i1 %63, label %109, label %64

64:                                               ; preds = %57
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 224
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 224
  %76 = icmp eq i32 %75, 128
  br i1 %76, label %109, label %77

77:                                               ; preds = %70, %64
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 237
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 224
  %89 = icmp eq i32 %88, 160
  br i1 %89, label %109, label %90

90:                                               ; preds = %83, %77
  %91 = load i8*, i8** %3, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 239
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 191
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load i8*, i8** %3, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 254
  %108 = icmp eq i32 %107, 190
  br i1 %108, label %109, label %111

109:                                              ; preds = %102, %83, %70, %57, %50
  %110 = load i8*, i8** %3, align 8
  store i8* %110, i8** %2, align 8
  br label %187

111:                                              ; preds = %102, %96, %90
  %112 = load i8*, i8** %3, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 3
  store i8* %113, i8** %3, align 8
  br label %114

114:                                              ; preds = %111
  br label %183

115:                                              ; preds = %43
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 248
  %121 = icmp eq i32 %120, 240
  br i1 %121, label %122, label %180

122:                                              ; preds = %115
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 192
  %128 = icmp ne i32 %127, 128
  br i1 %128, label %174, label %129

129:                                              ; preds = %122
  %130 = load i8*, i8** %3, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 192
  %135 = icmp ne i32 %134, 128
  br i1 %135, label %174, label %136

136:                                              ; preds = %129
  %137 = load i8*, i8** %3, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 192
  %142 = icmp ne i32 %141, 128
  br i1 %142, label %174, label %143

143:                                              ; preds = %136
  %144 = load i8*, i8** %3, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 240
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load i8*, i8** %3, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, 240
  %155 = icmp eq i32 %154, 128
  br i1 %155, label %174, label %156

156:                                              ; preds = %149, %143
  %157 = load i8*, i8** %3, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp eq i32 %160, 244
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load i8*, i8** %3, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp sgt i32 %166, 143
  br i1 %167, label %174, label %168

168:                                              ; preds = %162, %156
  %169 = load i8*, i8** %3, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp sgt i32 %172, 244
  br i1 %173, label %174, label %176

174:                                              ; preds = %168, %162, %149, %136, %129, %122
  %175 = load i8*, i8** %3, align 8
  store i8* %175, i8** %2, align 8
  br label %187

176:                                              ; preds = %168
  %177 = load i8*, i8** %3, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 4
  store i8* %178, i8** %3, align 8
  br label %179

179:                                              ; preds = %176
  br label %182

180:                                              ; preds = %115
  %181 = load i8*, i8** %3, align 8
  store i8* %181, i8** %2, align 8
  br label %187

182:                                              ; preds = %179
  br label %183

183:                                              ; preds = %182, %114
  br label %184

184:                                              ; preds = %183, %42
  br label %185

185:                                              ; preds = %184, %13
  br label %4

186:                                              ; preds = %4
  store i8* null, i8** %2, align 8
  br label %187

187:                                              ; preds = %186, %180, %174, %109, %37
  %188 = load i8*, i8** %2, align 8
  ret i8* %188
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
