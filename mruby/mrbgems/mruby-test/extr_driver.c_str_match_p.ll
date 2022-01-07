; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_driver.c_str_match_p.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_driver.c_str_match_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32)* @str_match_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_match_p(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %16, align 4
  br label %27

27:                                               ; preds = %70, %5
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %28, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %27
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 123
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %15, align 4
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  store i8* %41, i8** %13, align 8
  br label %69

42:                                               ; preds = %36, %31
  %43 = load i8*, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 125
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %15, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i8*, i8** %11, align 8
  store i8* %55, i8** %14, align 8
  br label %73

56:                                               ; preds = %50, %47, %42
  %57 = load i8*, i8** %11, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 92
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %73

67:                                               ; preds = %61, %56
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %11, align 8
  br label %27

73:                                               ; preds = %66, %54, %27
  %74 = load i8*, i8** %13, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %194

76:                                               ; preds = %73
  %77 = load i8*, i8** %14, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %194

79:                                               ; preds = %76
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 2
  %83 = call i64 @mrb_malloc(i32* %80, i32 %82)
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %17, align 8
  %85 = load i8*, i8** %17, align 8
  store i8* %85, i8** %18, align 8
  %86 = load i8*, i8** %18, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @COPY_AND_INC(i8* %86, i8* %87, i32 %93)
  %95 = load i8*, i8** %13, align 8
  store i8* %95, i8** %11, align 8
  br label %96

96:                                               ; preds = %188, %79
  %97 = load i8*, i8** %11, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = icmp ult i8* %97, %98
  br i1 %99, label %100, label %190

100:                                              ; preds = %96
  %101 = load i8*, i8** %18, align 8
  store i8* %101, i8** %19, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %11, align 8
  store i8* %103, i8** %20, align 8
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %151, %100
  %105 = load i8*, i8** %11, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = icmp ult i8* %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = load i8*, i8** %11, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 44
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %15, align 4
  %115 = icmp eq i32 %114, 0
  br label %116

116:                                              ; preds = %113, %108
  %117 = phi i1 [ false, %108 ], [ %115, %113 ]
  %118 = xor i1 %117, true
  br label %119

119:                                              ; preds = %116, %104
  %120 = phi i1 [ false, %104 ], [ %118, %116 ]
  br i1 %120, label %121, label %154

121:                                              ; preds = %119
  %122 = load i8*, i8** %11, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 123
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %150

129:                                              ; preds = %121
  %130 = load i8*, i8** %11, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 125
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %15, align 4
  br label %149

137:                                              ; preds = %129
  %138 = load i8*, i8** %11, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 92
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i8*, i8** %11, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %11, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = icmp eq i8* %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %154

148:                                              ; preds = %142, %137
  br label %149

149:                                              ; preds = %148, %134
  br label %150

150:                                              ; preds = %149, %126
  br label %151

151:                                              ; preds = %150
  %152 = load i8*, i8** %11, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %11, align 8
  br label %104

154:                                              ; preds = %147, %119
  %155 = load i8*, i8** %18, align 8
  %156 = load i8*, i8** %20, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = load i8*, i8** %20, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  %163 = call i32 @COPY_AND_INC(i8* %155, i8* %156, i32 %162)
  %164 = load i8*, i8** %18, align 8
  %165 = load i8*, i8** %14, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = load i8*, i8** %12, align 8
  %168 = load i8*, i8** %14, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sub nsw i64 %171, 1
  %173 = trunc i64 %172 to i32
  %174 = call i32 @COPY_AND_INC(i8* %164, i8* %166, i32 %173)
  %175 = load i32*, i32** %6, align 8
  %176 = load i8*, i8** %17, align 8
  %177 = load i8*, i8** %18, align 8
  %178 = load i8*, i8** %17, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = load i8*, i8** %9, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @str_match_p(i32* %175, i8* %176, i32 %182, i8* %183, i32 %184)
  store i32 %185, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %154
  br label %190

188:                                              ; preds = %154
  %189 = load i8*, i8** %19, align 8
  store i8* %189, i8** %18, align 8
  br label %96

190:                                              ; preds = %187, %96
  %191 = load i32*, i32** %6, align 8
  %192 = load i8*, i8** %17, align 8
  %193 = call i32 @mrb_free(i32* %191, i8* %192)
  br label %207

194:                                              ; preds = %76, %73
  %195 = load i8*, i8** %13, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %206, label %197

197:                                              ; preds = %194
  %198 = load i8*, i8** %14, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load i8*, i8** %9, align 8
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @str_match_no_brace_p(i8* %201, i32 %202, i8* %203, i32 %204)
  store i32 %205, i32* %16, align 4
  br label %206

206:                                              ; preds = %200, %197, %194
  br label %207

207:                                              ; preds = %206, %190
  %208 = load i32, i32* %16, align 4
  ret i32 %208
}

declare dso_local i64 @mrb_malloc(i32*, i32) #1

declare dso_local i32 @COPY_AND_INC(i8*, i8*, i32) #1

declare dso_local i32 @mrb_free(i32*, i8*) #1

declare dso_local i32 @str_match_no_brace_p(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
