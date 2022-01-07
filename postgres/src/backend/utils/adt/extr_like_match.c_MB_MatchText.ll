; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_match.c_MB_MatchText.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_match.c_MB_MatchText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIKE_TRUE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_ESCAPE_SEQUENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"LIKE pattern must not end with escape character\00", align 1
@LIKE_FALSE = common dso_local global i32 0, align 4
@LIKE_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32, i32)* @MatchText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MatchText(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %25

18:                                               ; preds = %6
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @LIKE_TRUE, align 4
  store i32 %24, i32* %7, align 4
  br label %227

25:                                               ; preds = %18, %6
  %26 = call i32 (...) @check_stack_depth()
  br label %27

27:                                               ; preds = %193, %171, %25
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ]
  br i1 %34, label %35, label %200

35:                                               ; preds = %33
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 92
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @NextByte(i8* %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_INVALID_ESCAPE_SEQUENCE, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @ereport(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i8*, i8** %10, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call signext i8 @GETCHAR(i8 signext %54)
  %56 = sext i8 %55 to i32
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call signext i8 @GETCHAR(i8 signext %58)
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* @LIKE_FALSE, align 4
  store i32 %63, i32* %7, align 4
  br label %227

64:                                               ; preds = %52
  br label %193

65:                                               ; preds = %35
  %66 = load i8*, i8** %10, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %166

70:                                               ; preds = %65
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @NextByte(i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %105, %70
  %75 = load i32, i32* %11, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %74
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @NextByte(i8* %83, i32 %84)
  br label %105

86:                                               ; preds = %77
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 95
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @LIKE_ABORT, align 4
  store i32 %95, i32* %7, align 4
  br label %227

96:                                               ; preds = %91
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @NextChar(i8* %97, i32 %98)
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @NextByte(i8* %100, i32 %101)
  br label %104

103:                                              ; preds = %86
  br label %106

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %82
  br label %74

106:                                              ; preds = %103, %74
  %107 = load i32, i32* %11, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @LIKE_TRUE, align 4
  store i32 %110, i32* %7, align 4
  br label %227

111:                                              ; preds = %106
  %112 = load i8*, i8** %10, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 92
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* @ERROR, align 4
  %121 = load i32, i32* @ERRCODE_INVALID_ESCAPE_SEQUENCE, align 4
  %122 = call i32 @errcode(i32 %121)
  %123 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %124 = call i32 @ereport(i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %119, %116
  %126 = load i8*, i8** %10, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = call signext i8 @GETCHAR(i8 signext %128)
  store i8 %129, i8* %14, align 1
  br label %134

130:                                              ; preds = %111
  %131 = load i8*, i8** %10, align 8
  %132 = load i8, i8* %131, align 1
  %133 = call signext i8 @GETCHAR(i8 signext %132)
  store i8 %133, i8* %14, align 1
  br label %134

134:                                              ; preds = %130, %125
  br label %135

135:                                              ; preds = %160, %134
  %136 = load i32, i32* %9, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %164

138:                                              ; preds = %135
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = call signext i8 @GETCHAR(i8 signext %140)
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* %14, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %138
  %147 = load i8*, i8** %8, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i8*, i8** %10, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @MatchText(i8* %147, i32 %148, i8* %149, i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @LIKE_FALSE, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %146
  %158 = load i32, i32* %15, align 4
  store i32 %158, i32* %7, align 4
  br label %227

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159, %138
  %161 = load i8*, i8** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @NextChar(i8* %161, i32 %162)
  br label %135

164:                                              ; preds = %135
  %165 = load i32, i32* @LIKE_ABORT, align 4
  store i32 %165, i32* %7, align 4
  br label %227

166:                                              ; preds = %65
  %167 = load i8*, i8** %10, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 95
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load i8*, i8** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @NextChar(i8* %172, i32 %173)
  %175 = load i8*, i8** %10, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @NextByte(i8* %175, i32 %176)
  br label %27

178:                                              ; preds = %166
  %179 = load i8*, i8** %10, align 8
  %180 = load i8, i8* %179, align 1
  %181 = call signext i8 @GETCHAR(i8 signext %180)
  %182 = sext i8 %181 to i32
  %183 = load i8*, i8** %8, align 8
  %184 = load i8, i8* %183, align 1
  %185 = call signext i8 @GETCHAR(i8 signext %184)
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %182, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %178
  %189 = load i32, i32* @LIKE_FALSE, align 4
  store i32 %189, i32* %7, align 4
  br label %227

190:                                              ; preds = %178
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %192, %64
  %194 = load i8*, i8** %8, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @NextByte(i8* %194, i32 %195)
  %197 = load i8*, i8** %10, align 8
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @NextByte(i8* %197, i32 %198)
  br label %27

200:                                              ; preds = %33
  %201 = load i32, i32* %9, align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = load i32, i32* @LIKE_FALSE, align 4
  store i32 %204, i32* %7, align 4
  br label %227

205:                                              ; preds = %200
  br label %206

206:                                              ; preds = %216, %205
  %207 = load i32, i32* %11, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load i8*, i8** %10, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 37
  br label %214

214:                                              ; preds = %209, %206
  %215 = phi i1 [ false, %206 ], [ %213, %209 ]
  br i1 %215, label %216, label %220

216:                                              ; preds = %214
  %217 = load i8*, i8** %10, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @NextByte(i8* %217, i32 %218)
  br label %206

220:                                              ; preds = %214
  %221 = load i32, i32* %11, align 4
  %222 = icmp sle i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* @LIKE_TRUE, align 4
  store i32 %224, i32* %7, align 4
  br label %227

225:                                              ; preds = %220
  %226 = load i32, i32* @LIKE_ABORT, align 4
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %225, %223, %203, %188, %164, %157, %109, %94, %62, %23
  %228 = load i32, i32* %7, align 4
  ret i32 %228
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @NextByte(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local signext i8 @GETCHAR(i8 signext) #1

declare dso_local i32 @NextChar(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
