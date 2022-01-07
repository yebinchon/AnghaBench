; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_printTable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_printTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }

@cancel_pressed = common dso_local global i64 0, align 8
@PRINT_NOTHING = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"invalid output format (internal error): %d\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printTable(%struct.TYPE_21__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* @cancel_pressed, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %220

13:                                               ; preds = %4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PRINT_NOTHING, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %220

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 136
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 128
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i32
  %48 = call i32 @IsPagerNeeded(%struct.TYPE_21__* %40, i32 0, i32 %47, i32** %6, i32* %7)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %39, %32, %25, %22
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @print_aligned_text(%struct.TYPE_21__* %54, i32* %55, i32 0)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %203 [
    i32 129, label %63
    i32 136, label %79
    i32 128, label %79
    i32 134, label %107
    i32 133, label %123
    i32 135, label %139
    i32 132, label %155
    i32 131, label %171
    i32 130, label %187
  ]

63:                                               ; preds = %57
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @print_unaligned_vertical(%struct.TYPE_21__* %71, i32* %72)
  br label %78

74:                                               ; preds = %63
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @print_unaligned_text(%struct.TYPE_21__* %75, i32* %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %214

79:                                               ; preds = %57, %57
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %96, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93, %79
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @print_aligned_vertical(%struct.TYPE_21__* %97, i32* %98, i32 %99)
  br label %106

101:                                              ; preds = %93, %86
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @print_aligned_text(%struct.TYPE_21__* %102, i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %96
  br label %214

107:                                              ; preds = %57
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @print_csv_vertical(%struct.TYPE_21__* %115, i32* %116)
  br label %122

118:                                              ; preds = %107
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @print_csv_text(%struct.TYPE_21__* %119, i32* %120)
  br label %122

122:                                              ; preds = %118, %114
  br label %214

123:                                              ; preds = %57
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @print_html_vertical(%struct.TYPE_21__* %131, i32* %132)
  br label %138

134:                                              ; preds = %123
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @print_html_text(%struct.TYPE_21__* %135, i32* %136)
  br label %138

138:                                              ; preds = %134, %130
  br label %214

139:                                              ; preds = %57
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @print_asciidoc_vertical(%struct.TYPE_21__* %147, i32* %148)
  br label %154

150:                                              ; preds = %139
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @print_asciidoc_text(%struct.TYPE_21__* %151, i32* %152)
  br label %154

154:                                              ; preds = %150, %146
  br label %214

155:                                              ; preds = %57
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @print_latex_vertical(%struct.TYPE_21__* %163, i32* %164)
  br label %170

166:                                              ; preds = %155
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @print_latex_text(%struct.TYPE_21__* %167, i32* %168)
  br label %170

170:                                              ; preds = %166, %162
  br label %214

171:                                              ; preds = %57
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = call i32 @print_latex_vertical(%struct.TYPE_21__* %179, i32* %180)
  br label %186

182:                                              ; preds = %171
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @print_latex_longtable_text(%struct.TYPE_21__* %183, i32* %184)
  br label %186

186:                                              ; preds = %182, %178
  br label %214

187:                                              ; preds = %57
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @print_troff_ms_vertical(%struct.TYPE_21__* %195, i32* %196)
  br label %202

198:                                              ; preds = %187
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = load i32*, i32** %6, align 8
  %201 = call i32 @print_troff_ms_text(%struct.TYPE_21__* %199, i32* %200)
  br label %202

202:                                              ; preds = %198, %194
  br label %214

203:                                              ; preds = %57
  %204 = load i32, i32* @stderr, align 4
  %205 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @fprintf(i32 %204, i8* %205, i32 %210)
  %212 = load i32, i32* @EXIT_FAILURE, align 4
  %213 = call i32 @exit(i32 %212) #3
  unreachable

214:                                              ; preds = %202, %186, %170, %154, %138, %122, %106, %78
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 @ClosePager(i32* %218)
  br label %220

220:                                              ; preds = %12, %21, %217, %214
  ret void
}

declare dso_local i32 @IsPagerNeeded(%struct.TYPE_21__*, i32, i32, i32**, i32*) #1

declare dso_local i32 @print_aligned_text(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @print_unaligned_vertical(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_unaligned_text(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_aligned_vertical(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @print_csv_vertical(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_csv_text(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_html_vertical(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_html_text(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_asciidoc_vertical(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_asciidoc_text(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_latex_vertical(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_latex_text(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_latex_longtable_text(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_troff_ms_vertical(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @print_troff_ms_text(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ClosePager(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
