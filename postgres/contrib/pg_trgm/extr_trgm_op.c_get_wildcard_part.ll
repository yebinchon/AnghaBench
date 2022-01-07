; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_get_wildcard_part.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_get_wildcard_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPADDING = common dso_local global i32 0, align 4
@RPADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*, i32*, i32*)* @get_wildcard_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_wildcard_part(i8* %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %21

21:                                               ; preds = %58, %5
  %22 = load i8*, i8** %12, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %21
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i8*, i8** %12, align 8
  %35 = call i64 @ISWORDCHR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %64

38:                                               ; preds = %33
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %58

39:                                               ; preds = %30
  %40 = load i8*, i8** %12, align 8
  %41 = call i64 @ISESCAPECHAR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %17, align 4
  br label %57

44:                                               ; preds = %39
  %45 = load i8*, i8** %12, align 8
  %46 = call i64 @ISWILDCARDCHAR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %15, align 4
  br label %56

49:                                               ; preds = %44
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @ISWORDCHR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %64

54:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %48
  br label %57

57:                                               ; preds = %56, %43
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @pg_mblen(i8* %59)
  %61 = load i8*, i8** %12, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %12, align 8
  br label %21

64:                                               ; preds = %53, %37, %21
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp sge i64 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i8* null, i8** %6, align 8
  br label %199

74:                                               ; preds = %64
  %75 = load i32*, i32** %11, align 8
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @LPADDING, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %14, align 8
  store i8 32, i8* %82, align 1
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @LPADDING, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i8*, i8** %14, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %14, align 8
  store i8 32, i8* %90, align 1
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %81
  br label %96

96:                                               ; preds = %95, %78
  br label %97

97:                                               ; preds = %96, %74
  %98 = load i8*, i8** %12, align 8
  store i8* %98, i8** %13, align 8
  br label %99

99:                                               ; preds = %163, %97
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %108, label %168

108:                                              ; preds = %99
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @pg_mblen(i8* %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %108
  %114 = load i8*, i8** %13, align 8
  %115 = call i64 @ISWORDCHR(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load i8*, i8** %14, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @memcpy(i8* %118, i8* %119, i32 %120)
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i8*, i8** %14, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %14, align 8
  br label %132

129:                                              ; preds = %113
  %130 = load i8*, i8** %13, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 -1
  store i8* %131, i8** %13, align 8
  br label %168

132:                                              ; preds = %117
  store i32 0, i32* %17, align 4
  br label %163

133:                                              ; preds = %108
  %134 = load i8*, i8** %13, align 8
  %135 = call i64 @ISESCAPECHAR(i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 1, i32* %17, align 4
  br label %162

138:                                              ; preds = %133
  %139 = load i8*, i8** %13, align 8
  %140 = call i64 @ISWILDCARDCHAR(i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 1, i32* %16, align 4
  br label %168

143:                                              ; preds = %138
  %144 = load i8*, i8** %13, align 8
  %145 = call i64 @ISWORDCHR(i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = load i8*, i8** %14, align 8
  %149 = load i8*, i8** %13, align 8
  %150 = load i32, i32* %18, align 4
  %151 = call i32 @memcpy(i8* %148, i8* %149, i32 %150)
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load i8*, i8** %14, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %14, align 8
  br label %160

159:                                              ; preds = %143
  br label %168

160:                                              ; preds = %147
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161, %137
  br label %163

163:                                              ; preds = %162, %132
  %164 = load i32, i32* %18, align 4
  %165 = load i8*, i8** %13, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %13, align 8
  br label %99

168:                                              ; preds = %159, %142, %129, %99
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %190, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* @RPADDING, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %171
  %175 = load i8*, i8** %14, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %14, align 8
  store i8 32, i8* %175, align 1
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* @RPADDING, align 4
  %181 = icmp sgt i32 %180, 1
  br i1 %181, label %182, label %188

182:                                              ; preds = %174
  %183 = load i8*, i8** %14, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %14, align 8
  store i8 32, i8* %183, align 1
  %185 = load i32*, i32** %11, align 8
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %182, %174
  br label %189

189:                                              ; preds = %188, %171
  br label %190

190:                                              ; preds = %189, %168
  %191 = load i8*, i8** %14, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = trunc i64 %195 to i32
  %197 = load i32*, i32** %10, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i8*, i8** %13, align 8
  store i8* %198, i8** %6, align 8
  br label %199

199:                                              ; preds = %190, %73
  %200 = load i8*, i8** %6, align 8
  ret i8* %200
}

declare dso_local i64 @ISWORDCHR(i8*) #1

declare dso_local i64 @ISESCAPECHAR(i8*) #1

declare dso_local i64 @ISWILDCARDCHAR(i8*) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
