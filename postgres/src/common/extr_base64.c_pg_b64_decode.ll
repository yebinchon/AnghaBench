; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_base64.c_pg_b64_decode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_base64.c_pg_b64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b64lookup = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_b64_decode(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %160, %4
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %161

28:                                               ; preds = %24
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %11, align 8
  %31 = load i8, i8* %29, align 1
  store i8 %31, i8* %13, align 1
  %32 = load i8, i8* %13, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %47, label %35

35:                                               ; preds = %28
  %36 = load i8, i8* %13, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %13, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i8, i8* %13, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 13
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39, %35, %28
  br label %182

48:                                               ; preds = %43
  %49 = load i8, i8* %13, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 61
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %16, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %17, align 4
  br label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %16, align 4
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 2, i32* %17, align 4
  br label %64

63:                                               ; preds = %59
  br label %182

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %58
  br label %66

66:                                               ; preds = %65, %52
  store i32 0, i32* %14, align 4
  br label %86

67:                                               ; preds = %48
  store i32 -1, i32* %14, align 4
  %68 = load i8, i8* %13, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i8, i8* %13, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp slt i32 %73, 127
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32*, i32** @b64lookup, align 8
  %77 = load i8, i8* %13, align 1
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %75, %71, %67
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %182

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i32, i32* %15, align 4
  %88 = shl i32 %87, 6
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %160

95:                                               ; preds = %86
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = add nsw i64 %100, 1
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp sgt i64 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %182

106:                                              ; preds = %95
  %107 = load i32, i32* %15, align 4
  %108 = ashr i32 %107, 16
  %109 = and i32 %108, 255
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %12, align 8
  store i8 %110, i8* %111, align 1
  %113 = load i32, i32* %17, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %17, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %136

118:                                              ; preds = %115, %106
  %119 = load i8*, i8** %12, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = add nsw i64 %123, 1
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp sgt i64 %124, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %182

129:                                              ; preds = %118
  %130 = load i32, i32* %15, align 4
  %131 = ashr i32 %130, 8
  %132 = and i32 %131, 255
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %12, align 8
  store i8 %133, i8* %134, align 1
  br label %136

136:                                              ; preds = %129, %115
  %137 = load i32, i32* %17, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %17, align 4
  %141 = icmp sgt i32 %140, 2
  br i1 %141, label %142, label %159

142:                                              ; preds = %139, %136
  %143 = load i8*, i8** %12, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = add nsw i64 %147, 1
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = icmp sgt i64 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  br label %182

153:                                              ; preds = %142
  %154 = load i32, i32* %15, align 4
  %155 = and i32 %154, 255
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %12, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %12, align 8
  store i8 %156, i8* %157, align 1
  br label %159

159:                                              ; preds = %153, %139
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %160

160:                                              ; preds = %159, %86
  br label %24

161:                                              ; preds = %24
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  br label %182

165:                                              ; preds = %161
  %166 = load i8*, i8** %12, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = ptrtoint i8* %166 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = icmp sle i64 %170, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @Assert(i32 %174)
  %176 = load i8*, i8** %12, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = ptrtoint i8* %176 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %5, align 4
  br label %186

182:                                              ; preds = %164, %152, %128, %105, %84, %63, %47
  %183 = load i8*, i8** %8, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @memset(i8* %183, i32 0, i32 %184)
  store i32 -1, i32* %5, align 4
  br label %186

186:                                              ; preds = %182, %165
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
