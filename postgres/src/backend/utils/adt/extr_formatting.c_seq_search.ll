; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_seq_search.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_seq_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ONE_UPPER = common dso_local global i32 0, align 4
@ALL_UPPER = common dso_local global i32 0, align 4
@ALL_LOWER = common dso_local global i32 0, align 4
@DEBUG_elog_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*)* @seq_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_search(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %156

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @ONE_UPPER, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ALL_UPPER, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %22
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call signext i8 @pg_toupper(i8 zeroext %32)
  %34 = load i8*, i8** %7, align 8
  store i8 %33, i8* %34, align 1
  br label %45

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ALL_LOWER, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call signext i8 @pg_tolower(i8 zeroext %41)
  %43 = load i8*, i8** %7, align 8
  store i8 %42, i8* %43, align 1
  br label %44

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %30
  store i32 0, i32* %15, align 4
  %46 = load i8**, i8*** %8, align 8
  store i8** %46, i8*** %13, align 8
  br label %47

47:                                               ; preds = %152, %45
  %48 = load i8**, i8*** %13, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %155

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8**, i8*** %13, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %152

61:                                               ; preds = %51
  store i32 1, i32* %16, align 4
  %62 = load i8**, i8*** %13, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %66, i8** %14, align 8
  br label %67

67:                                               ; preds = %144, %61
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i32, i32* %16, align 4
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i8**, i8*** %13, align 8
  %78 = load i8**, i8*** %8, align 8
  %79 = ptrtoint i8** %77 to i64
  %80 = ptrtoint i8** %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  br label %156

84:                                               ; preds = %70, %67
  %85 = load i8*, i8** %12, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i32, i32* %16, align 4
  %91 = load i32*, i32** %11, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i8**, i8*** %13, align 8
  %93 = load i8**, i8*** %8, align 8
  %94 = ptrtoint i8** %92 to i64
  %95 = ptrtoint i8** %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %6, align 4
  br label %156

99:                                               ; preds = %84
  %100 = load i8*, i8** %14, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %151

105:                                              ; preds = %99
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @ONE_UPPER, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @ALL_LOWER, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113, %109
  %118 = load i8*, i8** %14, align 8
  %119 = load i8, i8* %118, align 1
  %120 = call signext i8 @pg_tolower(i8 zeroext %119)
  %121 = load i8*, i8** %14, align 8
  store i8 %120, i8* %121, align 1
  br label %132

122:                                              ; preds = %113
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @ALL_UPPER, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i8*, i8** %14, align 8
  %128 = load i8, i8* %127, align 1
  %129 = call signext i8 @pg_toupper(i8 zeroext %128)
  %130 = load i8*, i8** %14, align 8
  store i8 %129, i8* %130, align 1
  br label %131

131:                                              ; preds = %126, %122
  br label %132

132:                                              ; preds = %131, %117
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %132, %105
  %135 = load i8*, i8** %14, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = load i8*, i8** %12, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %151

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143
  %145 = load i8*, i8** %14, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %14, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %12, align 8
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %67

151:                                              ; preds = %142, %104
  br label %152

152:                                              ; preds = %151, %60
  %153 = load i8**, i8*** %13, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i32 1
  store i8** %154, i8*** %13, align 8
  br label %47

155:                                              ; preds = %47
  store i32 -1, i32* %6, align 4
  br label %156

156:                                              ; preds = %155, %89, %74, %21
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local signext i8 @pg_toupper(i8 zeroext) #1

declare dso_local signext i8 @pg_tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
