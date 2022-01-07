; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_eol.c_phpdbg_eol_convert.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_eol.c_phpdbg_eol_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flags = common dso_local global i32 0, align 4
@PHPDBG_IS_REMOTE = common dso_local global i32 0, align 4
@PHPDBG_EOL_CRLF = common dso_local global i32 0, align 4
@eol = common dso_local global i32 0, align 4
@PHPDBG_EOL_LF = common dso_local global i32 0, align 4
@PHPDBG_EOL_CR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phpdbg_eol_convert(i8** %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @flags, align 4
  %19 = call i32 @PHPDBG_G(i32 %18)
  %20 = load i32, i32* @PHPDBG_IS_REMOTE, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @PHPDBG_IS_REMOTE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %208

25:                                               ; preds = %2
  %26 = load i32, i32* @PHPDBG_EOL_CRLF, align 4
  %27 = load i32, i32* @eol, align 4
  %28 = call i32 @PHPDBG_G(i32 %27)
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %120

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @count_lf_and_cr(i8* %32, i32 %33)
  %35 = add nsw i32 %31, %34
  %36 = call i64 @emalloc(i32 %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %11, align 1
  store i8 %40, i8* %10, align 1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %109, %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %119

45:                                               ; preds = %41
  %46 = load i8, i8* %11, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 10, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load i8, i8* %10, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 13
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 13, i8* %57, align 1
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = load i8, i8* %11, align 1
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 %60, i8* %64, align 1
  br label %109

65:                                               ; preds = %49, %45
  %66 = load i8, i8* %11, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 13, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 10, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %74
  %84 = load i8, i8* %11, align 1
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 %84, i8* %88, align 1
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 10, i8* %94, align 1
  store i8 10, i8* %10, align 1
  br label %100

95:                                               ; preds = %74, %69
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8 13, i8* %99, align 1
  store i8 13, i8* %10, align 1
  br label %100

100:                                              ; preds = %95, %83
  br label %108

101:                                              ; preds = %65
  %102 = load i8, i8* %11, align 1
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 %102, i8* %106, align 1
  %107 = load i8, i8* %11, align 1
  store i8 %107, i8* %10, align 1
  br label %108

108:                                              ; preds = %101, %100
  br label %109

109:                                              ; preds = %108, %53
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  store i8 %118, i8* %11, align 1
  br label %41

119:                                              ; preds = %41
  br label %198

120:                                              ; preds = %25
  %121 = load i32, i32* @PHPDBG_EOL_LF, align 4
  %122 = load i32, i32* @eol, align 4
  %123 = call i32 @PHPDBG_G(i32 %122)
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @PHPDBG_EOL_CR, align 4
  %127 = load i32, i32* @eol, align 4
  %128 = call i32 @PHPDBG_G(i32 %127)
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %196

130:                                              ; preds = %125, %120
  %131 = load i32, i32* @PHPDBG_EOL_LF, align 4
  %132 = load i32, i32* @eol, align 4
  %133 = call i32 @PHPDBG_G(i32 %132)
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i8 10, i8* %12, align 1
  store i8 13, i8* %13, align 1
  br label %137

136:                                              ; preds = %130
  store i8 13, i8* %12, align 1
  store i8 10, i8* %13, align 1
  br label %137

137:                                              ; preds = %136, %135
  %138 = load i32, i32* %7, align 4
  %139 = call i64 @emalloc(i32 %138)
  %140 = inttoptr i64 %139 to i8*
  store i8* %140, i8** %6, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  store i8 %143, i8* %11, align 1
  store i8 %143, i8* %10, align 1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %186, %137
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %195

148:                                              ; preds = %144
  %149 = load i8, i8* %13, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8, i8* %11, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load i8, i8* %12, align 1
  %156 = load i8*, i8** %6, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  store i8 %155, i8* %159, align 1
  br label %186

160:                                              ; preds = %148
  %161 = load i8, i8* %12, align 1
  %162 = sext i8 %161 to i32
  %163 = load i8, i8* %11, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %179

166:                                              ; preds = %160
  %167 = load i8, i8* %13, align 1
  %168 = sext i8 %167 to i32
  %169 = load i8, i8* %10, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %168, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = load i8, i8* %12, align 1
  %174 = load i8*, i8** %6, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 %173, i8* %177, align 1
  br label %178

178:                                              ; preds = %172, %166
  br label %185

179:                                              ; preds = %160
  %180 = load i8, i8* %11, align 1
  %181 = load i8*, i8** %6, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  store i8 %180, i8* %184, align 1
  br label %185

185:                                              ; preds = %179, %178
  br label %186

186:                                              ; preds = %185, %154
  %187 = load i8, i8* %11, align 1
  store i8 %187, i8* %10, align 1
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  store i8 %194, i8* %11, align 1
  br label %144

195:                                              ; preds = %144
  br label %197

196:                                              ; preds = %125
  br label %208

197:                                              ; preds = %195
  br label %198

198:                                              ; preds = %197, %119
  %199 = load i8**, i8*** %3, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @efree(i8* %200)
  %202 = load i8*, i8** %6, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i8* @erealloc(i8* %202, i32 %203)
  %205 = load i8**, i8*** %3, align 8
  store i8* %204, i8** %205, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load i32*, i32** %4, align 8
  store i32 %206, i32* %207, align 4
  store i8* null, i8** %5, align 8
  br label %208

208:                                              ; preds = %198, %196, %24
  ret void
}

declare dso_local i32 @PHPDBG_G(i32) #1

declare dso_local i64 @emalloc(i32) #1

declare dso_local i32 @count_lf_and_cr(i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i8* @erealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
