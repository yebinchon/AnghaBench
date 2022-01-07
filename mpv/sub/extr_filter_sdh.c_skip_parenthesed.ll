; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_skip_parenthesed.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_skip_parenthesed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i8**, %struct.buffer*)* @skip_parenthesed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_parenthesed(%struct.sd* %0, i8** %1, %struct.buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.buffer* %2, %struct.buffer** %7, align 8
  %12 = load %struct.sd*, %struct.sd** %5, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  %19 = load %struct.buffer*, %struct.buffer** %7, align 8
  %20 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %9, align 8
  store i32 1, i32* %11, align 4
  br label %24

24:                                               ; preds = %137, %3
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 41
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i1 [ false, %24 ], [ %34, %29 ]
  br i1 %36, label %37, label %138

37:                                               ; preds = %35
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 123
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.sd*, %struct.sd** %5, align 8
  %45 = load %struct.buffer*, %struct.buffer** %7, align 8
  %46 = call i32 @copy_ass(%struct.sd* %44, i8** %9, %struct.buffer* %45)
  br label %137

47:                                               ; preds = %37
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @mp_isalpha(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %122, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @mp_isupper(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %122, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 108
  br i1 %67, label %122, label %68

68:                                               ; preds = %62, %47
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @mp_isdigit(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %122, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %122, label %80

80:                                               ; preds = %74
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 39
  br i1 %85, label %122, label %86

86:                                               ; preds = %80
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 35
  br i1 %91, label %122, label %92

92:                                               ; preds = %86
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 46
  br i1 %97, label %122, label %98

98:                                               ; preds = %92
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 44
  br i1 %103, label %122, label %104

104:                                              ; preds = %98
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 45
  br i1 %109, label %122, label %110

110:                                              ; preds = %104
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 34
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 92
  br i1 %121, label %122, label %132

122:                                              ; preds = %116, %110, %104, %98, %92, %86, %80, %74, %68, %62, %56, %53
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @mp_isdigit(i8 signext %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %128, %122
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %9, align 8
  br label %136

132:                                              ; preds = %116
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.buffer*, %struct.buffer** %7, align 8
  %135 = getelementptr inbounds %struct.buffer, %struct.buffer* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  store i32 0, i32* %4, align 4
  br label %168

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %43
  br label %24

138:                                              ; preds = %35
  %139 = load i8*, i8** %9, align 8
  %140 = load i8, i8* %139, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.buffer*, %struct.buffer** %7, align 8
  %145 = getelementptr inbounds %struct.buffer, %struct.buffer* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  store i32 0, i32* %4, align 4
  br label %168

146:                                              ; preds = %138
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.buffer*, %struct.buffer** %7, align 8
  %152 = getelementptr inbounds %struct.buffer, %struct.buffer* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  store i32 0, i32* %4, align 4
  br label %168

153:                                              ; preds = %146
  %154 = load i8*, i8** %9, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %9, align 8
  br label %156

156:                                              ; preds = %162, %153
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 32
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %9, align 8
  br label %156

165:                                              ; preds = %156
  %166 = load i8*, i8** %9, align 8
  %167 = load i8**, i8*** %6, align 8
  store i8* %166, i8** %167, align 8
  store i32 1, i32* %4, align 4
  br label %168

168:                                              ; preds = %165, %149, %142, %132
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @copy_ass(%struct.sd*, i8**, %struct.buffer*) #1

declare dso_local i64 @mp_isalpha(i8 signext) #1

declare dso_local i64 @mp_isupper(i8 signext) #1

declare dso_local i64 @mp_isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
