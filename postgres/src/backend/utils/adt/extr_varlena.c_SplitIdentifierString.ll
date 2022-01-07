; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_SplitIdentifierString.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_SplitIdentifierString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SplitIdentifierString(i8* %0, i8 signext %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32** %2, i32*** %7, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32*, i32** @NIL, align 8
  %16 = load i32**, i32*** %7, align 8
  store i32* %15, i32** %16, align 8
  br label %17

17:                                               ; preds = %22, %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @scanner_isspace(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %8, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %170

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %165, %31
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 34
  br i1 %36, label %37, label %65

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %54, %37
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i8* @strchr(i8* %42, i8 signext 34)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %170

47:                                               ; preds = %40
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 34
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %62

54:                                               ; preds = %47
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = call i32 @memmove(i8* %55, i8* %57, i32 %59)
  %61 = load i8*, i8** %11, align 8
  store i8* %61, i8** %8, align 8
  br label %40

62:                                               ; preds = %53
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %8, align 8
  br label %118

65:                                               ; preds = %32
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %87, %65
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* %6, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @scanner_isspace(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %79, %72, %67
  %86 = phi i1 [ false, %72 ], [ false, %67 ], [ %84, %79 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %8, align 8
  br label %67

90:                                               ; preds = %85
  %91 = load i8*, i8** %8, align 8
  store i8* %91, i8** %11, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = icmp eq i8* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %170

96:                                               ; preds = %90
  %97 = load i8*, i8** %11, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i8* @downcase_truncate_identifier(i8* %103, i32 %104, i32 0)
  store i8* %105, i8** %12, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = load i32, i32* %13, align 4
  %109 = icmp sle i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @Assert(i32 %110)
  %112 = load i8*, i8** %10, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @strncpy(i8* %112, i8* %113, i32 %114)
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @pfree(i8* %116)
  br label %118

118:                                              ; preds = %96, %62
  br label %119

119:                                              ; preds = %124, %118
  %120 = load i8*, i8** %8, align 8
  %121 = load i8, i8* %120, align 1
  %122 = call i64 @scanner_isspace(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %8, align 8
  br label %119

127:                                              ; preds = %119
  %128 = load i8*, i8** %8, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = load i8, i8* %6, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %127
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  br label %137

137:                                              ; preds = %142, %134
  %138 = load i8*, i8** %8, align 8
  %139 = load i8, i8* %138, align 1
  %140 = call i64 @scanner_isspace(i8 signext %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i8*, i8** %8, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %8, align 8
  br label %137

145:                                              ; preds = %137
  br label %154

146:                                              ; preds = %127
  %147 = load i8*, i8** %8, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 1, i32* %9, align 4
  br label %153

152:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %170

153:                                              ; preds = %151
  br label %154

154:                                              ; preds = %153, %145
  %155 = load i8*, i8** %11, align 8
  store i8 0, i8* %155, align 1
  %156 = load i8*, i8** %10, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @strlen(i8* %157)
  %159 = call i32 @truncate_identifier(i8* %156, i32 %158, i32 0)
  %160 = load i32**, i32*** %7, align 8
  %161 = load i32*, i32** %160, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = call i32* @lappend(i32* %161, i8* %162)
  %164 = load i32**, i32*** %7, align 8
  store i32* %163, i32** %164, align 8
  br label %165

165:                                              ; preds = %154
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  br i1 %168, label %32, label %169

169:                                              ; preds = %165
  store i32 1, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %152, %95, %46, %30
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i64 @scanner_isspace(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @downcase_truncate_identifier(i8*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @truncate_identifier(i8*, i32, i32) #1

declare dso_local i32* @lappend(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
