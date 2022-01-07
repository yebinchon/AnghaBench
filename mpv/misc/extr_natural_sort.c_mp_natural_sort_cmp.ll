; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_natural_sort.c_mp_natural_sort_cmp.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_natural_sort.c_mp_natural_sort_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_natural_sort_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %160, %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i1 [ false, %8 ], [ %19, %14 ]
  br i1 %21, label %22, label %161

22:                                               ; preds = %20
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @mp_isdigit(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %133

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @mp_isdigit(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %133

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %41, %34
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 48
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  br label %35

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %51, %44
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 48
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  br label %45

54:                                               ; preds = %45
  %55 = load i8*, i8** %4, align 8
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %5, align 8
  store i8* %56, i8** %7, align 8
  br label %57

57:                                               ; preds = %62, %54
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @mp_isdigit(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  br label %57

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %71, %65
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i64 @mp_isdigit(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  br label %66

74:                                               ; preds = %66
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = icmp slt i64 %79, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %174

87:                                               ; preds = %74
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = load i8*, i8** %7, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = icmp sgt i64 %92, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  store i32 1, i32* %3, align 4
  br label %174

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %127, %100
  %102 = load i8*, i8** %4, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %132

105:                                              ; preds = %101
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp slt i32 %109, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  store i32 -1, i32* %3, align 4
  br label %174

116:                                              ; preds = %105
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sgt i32 %120, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  store i32 1, i32* %3, align 4
  br label %174

127:                                              ; preds = %116
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %4, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %5, align 8
  br label %101

132:                                              ; preds = %101
  br label %160

133:                                              ; preds = %28, %22
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = call i64 @mp_tolower(i8 signext %136)
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = call i64 @mp_tolower(i8 signext %140)
  %142 = icmp slt i64 %137, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  store i32 -1, i32* %3, align 4
  br label %174

144:                                              ; preds = %133
  %145 = load i8*, i8** %4, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = call i64 @mp_tolower(i8 signext %147)
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = call i64 @mp_tolower(i8 signext %151)
  %153 = icmp sgt i64 %148, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  store i32 1, i32* %3, align 4
  br label %174

155:                                              ; preds = %144
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %4, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %5, align 8
  br label %160

160:                                              ; preds = %155, %132
  br label %8

161:                                              ; preds = %20
  %162 = load i8*, i8** %5, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = icmp ne i8 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  store i32 -1, i32* %3, align 4
  br label %174

167:                                              ; preds = %161
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = icmp ne i8 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store i32 1, i32* %3, align 4
  br label %174

173:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %172, %166, %154, %143, %126, %115, %99, %86
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i64 @mp_isdigit(i8 signext) #1

declare dso_local i64 @mp_tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
