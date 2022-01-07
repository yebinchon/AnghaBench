; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_pgtypeslib-dt_test2.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_pgtypeslib-dt_test2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"2003-12-04 17:34:29\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"timestamp: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Date of timestamp: %s\0A\00", align 1
@dates = common dso_local global i8** null, align 8
@INT_MIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Date[%d]: %s (%c - %c)\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@times = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"TS[%d,%d]: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"2004-04-04 23:23:23\00", align 1
@intervals = common dso_local global i64* null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"endptr set to %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Error parsing interval %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"interval[%d]: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"interval_copy[%d]: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @ECPGdebug(i32 1, i32 %15)
  %17 = call i32 @PGTYPEStimestamp_from_asc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i8* @PGTYPEStimestamp_to_asc(i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @PGTYPESchar_free(i8* %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @PGTYPESdate_from_timestamp(i32 %24)
  store i64 %25, i64* %2, align 8
  %26 = call i64* (...) @PGTYPESdate_new()
  store i64* %26, i64** %7, align 8
  %27 = load i64, i64* %2, align 8
  %28 = load i64*, i64** %7, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @PGTYPESdate_to_asc(i64 %30)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @PGTYPESchar_free(i8* %34)
  %36 = load i64*, i64** %7, align 8
  %37 = call i32 @PGTYPESdate_free(i64* %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %141, %0
  %39 = load i8**, i8*** @dates, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %144

45:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  %46 = load i8**, i8*** @dates, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @PGTYPESdate_from_asc(i8* %50, i8** %10)
  store i64 %51, i64* %2, align 8
  %52 = load i64, i64* %2, align 8
  %53 = load i64, i64* @INT_MIN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i64, i64* %2, align 8
  %58 = call i8* @PGTYPESdate_to_asc(i64 %57)
  store i8* %58, i8** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %65

63:                                               ; preds = %56
  %64 = load i8*, i8** %5, align 8
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %62 ], [ %64, %63 ]
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 78, i32 89
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 84, i32 70
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %59, i8* %66, i32 %70, i32 %74)
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @PGTYPESchar_free(i8* %76)
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %140, label %80

80:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %136, %80
  %82 = load i8**, i8*** @times, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %139

88:                                               ; preds = %81
  %89 = load i8**, i8*** @dates, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = add nsw i32 %94, 1
  %96 = load i8**, i8*** @times, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = add nsw i32 %95, %101
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i8* @malloc(i32 %104)
  store i8* %105, i8** %13, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i8**, i8*** @dates, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load i8**, i8*** @times, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @sprintf(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %111, i8* %116)
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @PGTYPEStimestamp_from_asc(i8* %118, i32* null)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i8* @PGTYPEStimestamp_to_asc(i32 %120)
  store i8* %121, i8** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i64, i64* @errno, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %88
  br label %129

127:                                              ; preds = %88
  %128 = load i8*, i8** %5, align 8
  br label %129

129:                                              ; preds = %127, %126
  %130 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %126 ], [ %128, %127 ]
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %122, i32 %123, i8* %130)
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 @PGTYPESchar_free(i8* %132)
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 @free(i8* %134)
  br label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %81

139:                                              ; preds = %81
  br label %140

140:                                              ; preds = %139, %65
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %38

144:                                              ; preds = %38
  %145 = call i32 @PGTYPEStimestamp_from_asc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32* null)
  store i32 %145, i32* %3, align 4
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %213, %144
  %147 = load i64*, i64** @intervals, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %216

153:                                              ; preds = %146
  %154 = load i64*, i64** @intervals, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = call i32* @PGTYPESinterval_from_asc(i64 %158, i8** %10)
  store i32* %159, i32** %6, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = load i8, i8* %160, align 1
  %162 = icmp ne i8 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %153
  %164 = load i8*, i8** %10, align 8
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %163, %153
  %167 = load i32*, i32** %6, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %8, align 4
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %170)
  br label %213

172:                                              ; preds = %166
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @PGTYPEStimestamp_add_interval(i32* %3, i32* %173, i32* %4)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %213

178:                                              ; preds = %172
  %179 = load i32*, i32** %6, align 8
  %180 = call i8* @PGTYPESinterval_to_asc(i32* %179)
  store i8* %180, i8** %5, align 8
  %181 = load i32, i32* %8, align 4
  %182 = load i8*, i8** %5, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i8*, i8** %5, align 8
  br label %187

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186, %184
  %188 = phi i8* [ %185, %184 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %186 ]
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %181, i8* %188)
  %190 = load i8*, i8** %5, align 8
  %191 = call i32 @PGTYPESchar_free(i8* %190)
  %192 = call i32* (...) @PGTYPESinterval_new()
  store i32* %192, i32** %14, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = load i32*, i32** %14, align 8
  %195 = call i32 @PGTYPESinterval_copy(i32* %193, i32* %194)
  %196 = load i32*, i32** %6, align 8
  %197 = call i8* @PGTYPESinterval_to_asc(i32* %196)
  store i8* %197, i8** %5, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i8*, i8** %5, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %187
  %202 = load i8*, i8** %5, align 8
  br label %204

203:                                              ; preds = %187
  br label %204

204:                                              ; preds = %203, %201
  %205 = phi i8* [ %202, %201 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %203 ]
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %198, i8* %205)
  %207 = load i8*, i8** %5, align 8
  %208 = call i32 @PGTYPESchar_free(i8* %207)
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @PGTYPESinterval_free(i32* %209)
  %211 = load i32*, i32** %6, align 8
  %212 = call i32 @PGTYPESinterval_free(i32* %211)
  br label %213

213:                                              ; preds = %204, %177, %169
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %146

216:                                              ; preds = %146
  ret i32 0
}

declare dso_local i32 @ECPGdebug(i32, i32) #1

declare dso_local i32 @PGTYPEStimestamp_from_asc(i8*, i32*) #1

declare dso_local i8* @PGTYPEStimestamp_to_asc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @PGTYPESchar_free(i8*) #1

declare dso_local i64 @PGTYPESdate_from_timestamp(i32) #1

declare dso_local i64* @PGTYPESdate_new(...) #1

declare dso_local i8* @PGTYPESdate_to_asc(i64) #1

declare dso_local i32 @PGTYPESdate_free(i64*) #1

declare dso_local i64 @PGTYPESdate_from_asc(i8*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @PGTYPESinterval_from_asc(i64, i8**) #1

declare dso_local i32 @PGTYPEStimestamp_add_interval(i32*, i32*, i32*) #1

declare dso_local i8* @PGTYPESinterval_to_asc(i32*) #1

declare dso_local i32* @PGTYPESinterval_new(...) #1

declare dso_local i32 @PGTYPESinterval_copy(i32*, i32*) #1

declare dso_local i32 @PGTYPESinterval_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
