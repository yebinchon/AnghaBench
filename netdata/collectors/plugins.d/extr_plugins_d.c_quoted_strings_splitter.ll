; ModuleID = '/home/carl/AnghaBench/netdata/collectors/plugins.d/extr_plugins_d.c_quoted_strings_splitter.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/plugins.d/extr_plugins_d.c_quoted_strings_splitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32 (i8)*)* @quoted_strings_splitter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quoted_strings_splitter(i8* %0, i8** %1, i32 %2, i32 (i8)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (i8)* %3, i32 (i8)** %8, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  store i8 0, i8* %10, align 1
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %21, %4
  %15 = load i32 (i8)*, i32 (i8)** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 %15(i8 signext %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %9, align 8
  br label %14

24:                                               ; preds = %14
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 39
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 34
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ true, %24 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %10, align 1
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i8*, i8** %9, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  store i8* %45, i8** %50, align 8
  br label %51

51:                                               ; preds = %166, %86, %73, %44
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = call i64 @likely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %167

57:                                               ; preds = %51
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 92
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i1 [ false, %57 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %9, align 8
  br label %51

76:                                               ; preds = %68
  %77 = load i8*, i8** %9, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* %10, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  store i8 0, i8* %10, align 1
  %87 = load i8*, i8** %9, align 8
  store i8 32, i8* %87, align 1
  br label %51

88:                                               ; preds = %76
  %89 = load i8, i8* %10, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32 (i8)*, i32 (i8)** %8, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i32 %93(i8 signext %95)
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %92, %88
  %99 = phi i1 [ false, %88 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %161

103:                                              ; preds = %98
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  store i8 0, i8* %104, align 1
  br label %106

106:                                              ; preds = %113, %103
  %107 = load i32 (i8)*, i32 (i8)** %8, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i8, i8* %108, align 1
  %110 = call i32 %107(i8 signext %109)
  %111 = call i64 @likely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %9, align 8
  br label %106

116:                                              ; preds = %106
  %117 = load i8*, i8** %9, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 39
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %9, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 34
  br label %126

126:                                              ; preds = %121, %116
  %127 = phi i1 [ true, %116 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i8*, i8** %9, align 8
  %133 = load i8, i8* %132, align 1
  store i8 %133, i8* %10, align 1
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %9, align 8
  br label %136

136:                                              ; preds = %131, %126
  %137 = load i8*, i8** %9, align 8
  %138 = load i8, i8* %137, align 1
  %139 = icmp ne i8 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %167

145:                                              ; preds = %136
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i64 @likely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i8*, i8** %9, align 8
  %154 = load i8**, i8*** %6, align 8
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8*, i8** %154, i64 %157
  store i8* %153, i8** %158, align 8
  br label %160

159:                                              ; preds = %145
  br label %167

160:                                              ; preds = %152
  br label %164

161:                                              ; preds = %98
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %9, align 8
  br label %164

164:                                              ; preds = %161, %160
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165
  br label %51

167:                                              ; preds = %159, %144, %51
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %176, %167
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i64 @likely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load i8**, i8*** %6, align 8
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %12, align 4
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8*, i8** %177, i64 %180
  store i8* null, i8** %181, align 8
  br label %169

182:                                              ; preds = %169
  %183 = load i32, i32* %11, align 4
  ret i32 %183
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
