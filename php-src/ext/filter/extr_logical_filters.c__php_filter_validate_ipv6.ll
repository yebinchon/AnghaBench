; ModuleID = '/home/carl/AnghaBench/php-src/ext/filter/extr_logical_filters.c__php_filter_validate_ipv6.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/filter/extr_logical_filters.c__php_filter_validate_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @_php_filter_validate_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_php_filter_validate_ipv6(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i8* @memchr(i8* %14, i8 signext 58, i64 %15)
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %192

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i8* @memchr(i8* %20, i8 signext 46, i64 %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %73

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ugt i8* %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 -1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 58
  br label %36

36:                                               ; preds = %30, %26
  %37 = phi i1 [ false, %26 ], [ %35, %30 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %40, i8** %9, align 8
  br label %26

41:                                               ; preds = %36
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sub i64 %43, %48
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %51 = call i32 @_php_filter_validate_ipv4(i8* %42, i64 %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %192

54:                                               ; preds = %41
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ult i64 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %192

63:                                               ; preds = %54
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 -2
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 58
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %69, %63
  store i32 2, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %19
  %74 = load i8*, i8** %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %10, align 8
  br label %77

77:                                               ; preds = %179, %73
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %81, label %180

81:                                               ; preds = %77
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 58
  br i1 %85, label %86, label %121

86:                                               ; preds = %81
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %4, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = icmp uge i8* %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %192

92:                                               ; preds = %86
  %93 = load i8*, i8** %4, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 58
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %192

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  store i32 1, i32* %6, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %4, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = icmp eq i8* %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32, i32* %7, align 4
  %110 = icmp sle i32 %109, 8
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %3, align 4
  br label %192

112:                                              ; preds = %101
  br label %120

113:                                              ; preds = %92
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 -1
  %116 = load i8*, i8** %12, align 8
  %117 = icmp eq i8* %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %192

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %112
  br label %121

121:                                              ; preds = %120, %81
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %162, %121
  %123 = load i8*, i8** %4, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = icmp ult i8* %123, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %122
  %127 = load i8*, i8** %4, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp sge i32 %129, 48
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i8*, i8** %4, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp sle i32 %134, 57
  br i1 %135, label %158, label %136

136:                                              ; preds = %131, %126
  %137 = load i8*, i8** %4, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp sge i32 %139, 97
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i8*, i8** %4, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp sle i32 %144, 102
  br i1 %145, label %158, label %146

146:                                              ; preds = %141, %136
  %147 = load i8*, i8** %4, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp sge i32 %149, 65
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i8*, i8** %4, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp sle i32 %154, 70
  br label %156

156:                                              ; preds = %151, %146
  %157 = phi i1 [ false, %146 ], [ %155, %151 ]
  br label %158

158:                                              ; preds = %156, %141, %131
  %159 = phi i1 [ true, %141 ], [ true, %131 ], [ %157, %156 ]
  br label %160

160:                                              ; preds = %158, %122
  %161 = phi i1 [ false, %122 ], [ %159, %158 ]
  br i1 %161, label %162, label %167

162:                                              ; preds = %160
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  %165 = load i8*, i8** %4, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %4, align 8
  br label %122

167:                                              ; preds = %160
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 1
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %8, align 4
  %172 = icmp sgt i32 %171, 4
  br i1 %172, label %173, label %174

173:                                              ; preds = %170, %167
  store i32 0, i32* %3, align 4
  br label %192

174:                                              ; preds = %170
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  %177 = icmp sgt i32 %176, 8
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %192

179:                                              ; preds = %174
  br label %77

180:                                              ; preds = %77
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %7, align 4
  %185 = icmp sle i32 %184, 8
  br i1 %185, label %189, label %186

186:                                              ; preds = %183, %180
  %187 = load i32, i32* %7, align 4
  %188 = icmp eq i32 %187, 8
  br label %189

189:                                              ; preds = %186, %183
  %190 = phi i1 [ true, %183 ], [ %188, %186 ]
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %189, %178, %173, %118, %108, %100, %91, %62, %53, %18
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @_php_filter_validate_ipv4(i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
